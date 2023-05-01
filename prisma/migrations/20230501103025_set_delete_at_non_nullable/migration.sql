/*
  Warnings:

  - Made the column `deleteAt` on table `Category` required. This step will fail if there are existing NULL values in that column.
  - Made the column `deleteAt` on table `Tag` required. This step will fail if there are existing NULL values in that column.
  - Made the column `deleteAt` on table `Task` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE "Category" ALTER COLUMN "deleteAt" SET NOT NULL;

-- AlterTable
ALTER TABLE "Tag" ALTER COLUMN "deleteAt" SET NOT NULL;

-- AlterTable
ALTER TABLE "Task" ALTER COLUMN "deleteAt" SET NOT NULL;
