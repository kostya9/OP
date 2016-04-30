#include "PlayerMovementManager.h"
GameObject * PlayerMovementManager::lastCollider = nullptr;
extern Keyboard * keyboard;


GameObject * PlayerMovementManager::getLastCollider()
{
	return lastCollider;
}
MOVEMENT_STATUS PlayerMovementManager::tryMoveForward(Player * player, GameObjectManager * goManager)
{
	glm::fvec3 dest = player->getPosition() + glm::fvec3(0.0f, 0.0f, -1.0f);
	return tryMove(player, goManager, dest);
}

MOVEMENT_STATUS PlayerMovementManager::tryMoveBackward(Player * player, GameObjectManager * goManager)
{
	glm::fvec3 dest = player->getPosition() + glm::fvec3(0.0f, 0.0f, 1.0f);
	return tryMove(player, goManager, dest);
}

MOVEMENT_STATUS PlayerMovementManager::tryMoveLeft(Player * player, GameObjectManager * goManager)
{
	glm::fvec3 dest = player->getPosition() + glm::fvec3(-1.0f, 0.0f, 0.0f);
	return tryMove(player, goManager, dest);
}

MOVEMENT_STATUS PlayerMovementManager::tryMoveRight(Player * player, GameObjectManager * goManager)
{
	glm::fvec3 dest = player->getPosition() + glm::fvec3(1.0f, 0.0f, 0.0f);
	return tryMove(player, goManager, dest);
}

MOVEMENT_STATUS PlayerMovementManager::checkInputKeysForMovement(Player * player, GameObjectManager * goManager)
{
	if (keyboard->isKeyPressed('w'))
	{
		MOVEMENT_STATUS status = tryMoveForward(player, goManager);
		if (status == MOVE_MOVING_HOLE)
			player->moveForward(2);
		else if (status == MOVE_MOVING)
			player->moveForward(1);
		return status;
	}
	else if (keyboard->isKeyPressed('s'))
	{
		MOVEMENT_STATUS status = tryMoveBackward(player, goManager);
		if (status == MOVE_MOVING_HOLE)
			player->moveBackwards(2);
		else if (status == MOVE_MOVING)
			player->moveBackwards(1);
		return status;
	}
	else if (keyboard->isKeyPressed('a'))
	{
		MOVEMENT_STATUS status = tryMoveLeft(player, goManager);
		if (status == MOVE_MOVING_HOLE)
			player->moveLeft(2);
		else if (status == MOVE_MOVING)
			player->moveLeft(1);
		return status;
	}
	else if (keyboard->isKeyPressed('d'))
	{
		MOVEMENT_STATUS status = tryMoveRight(player, goManager);
		if (status == MOVE_MOVING_HOLE)
			player->moveRight(2);
		else if (status == MOVE_MOVING)
			player->moveRight(1);
		return status;
	}
	else
		return MOVE_NOT_MOVING_NO_COMMANDS;

}

MOVEMENT_STATUS PlayerMovementManager::tryMove(Player * player, GameObjectManager * goManager, glm::fvec3 destination)
{
	Wall * collider;
	glm::fvec3 playerPosition = player->getPosition();
	Wall::COLLISION_STATUS collision_status = goManager->isMovementColliding(playerPosition, destination, &collider);
	if (collision_status == Wall::COLLISION_TRUE)
	{
		lastCollider = collider;
		return MOVE_NOT_MOVING_COLLISION;
	}
	else if (collision_status == Wall::COLLISION_FALSE)
	{
		return MOVE_MOVING;
	}
	else if (collision_status == Wall::COLLISION_HOLE)
	{
		lastCollider = collider;
		return MOVE_MOVING_HOLE;
	}
	else
		return MOVE_NOT_MOVING_NO_COMMANDS;
}