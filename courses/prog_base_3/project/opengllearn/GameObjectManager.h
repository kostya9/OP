#pragma once
#include "MainHeaders.h"
#include "GameObject.h"
#include "Wall.h"
#include "Player.h"
#include "Field.h"
#include "WhiteHole.h"
#include "Menu.h"
#include "MasterRenderer.h"
#include "Shadow.h"
#include "GuiRenderer.h"
#include "EnergyBar.h"
class GameObjectManager
{
	private:
		vector<GameObject *> objects;
		vector <Wall *> walls;
		Field * field;
		Player * player;
		WhiteHole * hole;
		Light * light;
		MasterRenderer * renderer;
		Shadow * shadow;
		/*StaticShader * shader;*/
		Menu * menu;
		GLfloat shadowTimeCreated;
		EnergyBar * bar;
		GuiRenderer * guiRenderer;
		Loader * loader;
	public:
		GameObjectManager();
		void shake(GLfloat time);
		Wall::COLLISION_STATUS isMovementColliding(glm::fvec3 positionFrom, glm::fvec3 positionDest, Wall ** collider); // Wall collision
		void renderAll();
		void addObject(EnergyBar * bar);
		void addObject(Wall * wall);
		void addObject(Player * player);
		void addObject(Field * field);
		void addObject(Shadow * shadow);
		void addObject(GameObject * object);
		void addObject(Light * light);
		void addObject(WhiteHole * hole);
		void addObject(Menu * menu);
		void addMask(glm::fvec3 mask);
		void swapWalls();
		void blinkMask(glm::fvec3 color);
		WhiteHole * getWhiteHole();
		Field * getField();
		Light * getLight();
		Shadow * getShadow();
		Player * getPlayer();
		void deleteObject(GameObject * object);
		~GameObjectManager();

};