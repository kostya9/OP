#include "GameObjectLoader.h"
#include "NewGameMenuOption.h"
#include "ExitMenuOption.h"
#include "HighScore.h"
#include "GameDescriptionButton.h"
#include "Game.h"
#define BUFFER_LEN 1024
GameObjectLoader::GameObjectLoader(GameObjectManager * manager, Font* font)
{
	this->loader = new Loader(); // temp
	this->manager = manager;
	this->font = font;
}

void GameObjectLoader::generateField(glm::fvec2 center, GLuint size)
{
	Field * field = new Field(loader, size, glm::vec3(center.x, 0.0f, center.y));
	manager->addObject(field);
}

void GameObjectLoader::createPlayer(glm::fvec2 position)
{
	Camera * camera = new Camera();
	Player * player = new Player(loader, glm::vec3(position.x, 0.5f, position.y), camera);
	manager->addObject(player);
}

void GameObjectLoader::createWall(glm::fvec2 position)
{
	Wall * wall = new Wall(loader, glm::vec3(position.x, 0.01f, position.y));
	//wall->showHole(WallHole::HOLE_DIRECTION_X);
	//wall->hideHole();
	manager->addObject(wall);
}

void GameObjectLoader::createLight(GLfloat brightness, glm::fvec3 position) const
{
	Light * light = new Light(position, glm::vec3(brightness, brightness, brightness));
	manager->addObject(light);
}

void GameObjectLoader::creatWhiteHole(glm::fvec2 position)
{
	WhiteHole * hole = new WhiteHole(glm::fvec3(position.x, 0.5f, position.y), loader);
	manager->addObject(hole);
}

void GameObjectLoader::createShadow(glm::fvec3 position)
{
	Shadow * shadow = new Shadow(loader, position);
	manager->addObject(shadow);
}

void GameObjectLoader::loadLevel(string path)
{
	vector<glm::fvec2> wallsPos;
	glm::fvec2 playerPos;
	glm::fvec2 whiteHolePos;
	GLuint fieldSize;
	ifstream levelFile;
	levelFile.open(path);
	string buffer;
	getline(levelFile, buffer);
	try {
		fieldSize = stoi(buffer);
	}
	catch (invalid_argument e)
	{
		cerr << "Error on reading level";
		return;
	}
	GLint radius = fieldSize / 2;
	// Read and parse file
	for (unsigned int i = 0; i < fieldSize; i++)
	{
		getline(levelFile, buffer);
		const char * line = buffer.c_str();
		for (unsigned int j = 0; j < fieldSize; j++)
		{
			glm::fvec2 curPos = glm::fvec2(- radius + (int)j, - radius + (int)i);
			switch (line[j])
			{
				case '0':
					break;
				case '1':
				{
					wallsPos.push_back(curPos);
				}break;
				case '2':
				{
					whiteHolePos = curPos;
				}break;
				case '3':
				{
					playerPos = curPos;
				}break;
				default:
				{
					throw invalid_argument("Incorrect file format");
				}
			}
		}
	}
	
	generateField(glm::fvec2(0.0f, 0.0f), fieldSize);
	for (glm::fvec2 curPos : wallsPos)
		createWall(curPos);
	createPlayer(playerPos);
	creatWhiteHole(whiteHolePos);
	EnergyBar * bar = new EnergyBar(glm::fvec2(-1.0f + 0.255 + 0.01f, 1.0f - 0.128 - 0.01f), loader, font);
	this->manager->addObject(bar);
	this->manager->swapWalls();
}

void GameObjectLoader::loadMenu(Game * game)
{
	Menu* menu = new Menu(game, game->getSettings()->font);
	manager->addObject(menu);

	//MenuOptionButton * button = new MenuOptionButton(&Loader(), settings->font, glm::fvec3(1.0f, 1.0f, 1.0f), string("HEYYY"));
	//MenuOptionButton * button1 = new MenuOptionButton(&Loader(), settings->font, glm::fvec3(1.0f, 1.0f, 1.0f), string("HEYYY1"));
	NewGameMenuOption* newGame = new NewGameMenuOption(&Loader(), game->getSettings()->font, glm::fvec3(1.0f, 1.0f, 1.0f));
	ExitMenuOption* buttonExit = new ExitMenuOption(&Loader(), game->getSettings()->font, glm::fvec3(1.0f, 1.0f, 1.0f));
	HighScore * highButton = new HighScore(&Loader(), game->getSettings()->font, glm::fvec3(1.0f, 1.0f, 1.0f));
	GameDescriptionButton * buttonDescr = new GameDescriptionButton(&Loader(), game->getSettings()->font, glm::fvec3(1.0f, 1.0f, 1.0f));

	menu->addMenuOption(newGame);
	menu->addMenuOption(buttonDescr);
	menu->addMenuOption(highButton);
	//menu->addMenuOption(button);
	//menu->addMenuOption(button1);
	menu->addMenuOption(buttonExit);
}

GameObjectLoader::~GameObjectLoader()
{
	loader->releaseVOs();
	delete loader;
}
