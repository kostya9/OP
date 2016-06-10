#include "ExitMenuOption.h"
#include "Game.h"
ExitMenuOption::ExitMenuOption(Loader * loader, Font * font, glm::fvec3 color) : MenuOptionButton(loader, font, color, string("Exit"))
{
	this->id = 101;
}

int ExitMenuOption::onClick()
{
	menu->getGame()->close();
	return RETURN;
}
