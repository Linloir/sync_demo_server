/*
  Warnings:

  - The `deleteAt` column on the `Category` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The `deleteAt` column on the `Tag` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The `deleteAt` column on the `Task` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - Changed the type of `updateAt` on the `Category` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `syncAt` on the `Category` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `updateAt` on the `Tag` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `syncAt` on the `Tag` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `updateAt` on the `Task` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `syncAt` on the `Task` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- AlterTable
ALTER TABLE "Category" DROP COLUMN "updateAt",
ADD COLUMN     "updateAt" BIGINT NOT NULL,
DROP COLUMN "syncAt",
ADD COLUMN     "syncAt" BIGINT NOT NULL,
DROP COLUMN "deleteAt",
ADD COLUMN     "deleteAt" BIGINT;

-- AlterTable
ALTER TABLE "Tag" DROP COLUMN "updateAt",
ADD COLUMN     "updateAt" BIGINT NOT NULL,
DROP COLUMN "syncAt",
ADD COLUMN     "syncAt" BIGINT NOT NULL,
DROP COLUMN "deleteAt",
ADD COLUMN     "deleteAt" BIGINT;

-- AlterTable
ALTER TABLE "Task" DROP COLUMN "updateAt",
ADD COLUMN     "updateAt" BIGINT NOT NULL,
DROP COLUMN "syncAt",
ADD COLUMN     "syncAt" BIGINT NOT NULL,
DROP COLUMN "deleteAt",
ADD COLUMN     "deleteAt" BIGINT;
