#pragma once
#include "MainHeaders.h"
#include "GameObject.h"
#include "WallHole.h"

class Wall : public GameObject
{
	private:
		WallHole * hole;
	public:
		enum COLLISION_STATUS {COLLISION_TRUE, COLLISION_HOLE, COLLISION_FALSE};
		Wall(Loader * loader, glm::vec3 position);
		void render(Renderer * renderer, StaticShader shader);
		void setPosition(glm::fvec3 position);
		WallHole::HOLE_DIRECTION getHoleDirection();
		COLLISION_STATUS isMovementColliding(glm::fvec3 positionFrom, glm::fvec3 positionDest);
		void showHole(WallHole::HOLE_DIRECTION direction);
		void hideHole();
		~Wall();

};