﻿using System;

namespace Spells.Domain
{
    public struct Vector2D
    {
        public readonly int X;
        public readonly int Y;

        public Vector2D(int x,
            int y)
        {
            X = x;
            Y = y;
        }

        public static Vector2D operator +(Vector2D first,
            Vector2D second)
        {
            return new Vector2D(
                first.X + second.X,
                first.Y + second.Y
            );
        }

        public static Vector2D operator -(Vector2D first,
            Vector2D second)
        {
            return new Vector2D(
                first.X - second.X,
                first.Y - second.Y
            );
        }

        public override bool Equals(object obj)
        {
            if (obj is Vector2D)
            {
                var vector = (Vector2D) obj;
                return (X == vector.X) && (Y == vector.Y);
            }
            return false;
        }

        public bool Equals(Vector2D other)
        {
            return (X == other.X) && (Y == other.Y);
        }

        public override int GetHashCode()
        {
            unchecked
            {
                return (X * 397) ^ Y;
            }
        }

        public static bool operator ==(Vector2D first,
            Vector2D second)
        {
            return first.Equals(second);
        }

        public static bool operator !=(Vector2D first,
    Vector2D second)
        {
            return !first.Equals(second);
        }

        public static Vector2D Round(double x,
            double y)
        {
            return new Vector2D((int) Math.Round(x), (int) Math.Round(y));
        }

        public Vector2D RotateBy45DegreesClockwise()
        {
            var sqrtTwo = Math.Sqrt(2);
            // Rotation matrix by pi/4
            var newX = X/sqrtTwo + Y/sqrtTwo;
            var newY = Y/sqrtTwo - X/sqrtTwo;
            return Round(newX, newY);
        }

        public Vector2D RotateBy45DegreesCounterClockwise()
        {
            var sqrtTwo = Math.Sqrt(2);
            // Rotation matrix by -pi/4
            var newX = X/sqrtTwo - Y/sqrtTwo;
            var newY = Y/sqrtTwo + X/sqrtTwo;
            return Round(newX, newY);
        }

        public override string ToString()
        {
            return $"X : {X}, Y : {Y}";
        }
    }
}