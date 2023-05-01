-- CreateTable
CREATE TABLE "Task" (
    "id" SERIAL NOT NULL,
    "title" TEXT NOT NULL,
    "status" BOOLEAN NOT NULL,
    "categoryId" INTEGER NOT NULL,
    "updateAt" TIMESTAMP(3) NOT NULL,
    "syncAt" TIMESTAMP(3) NOT NULL,
    "deleteAt" TIMESTAMP(3),

    CONSTRAINT "Task_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Tag" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "color" INTEGER NOT NULL,
    "updateAt" TIMESTAMP(3) NOT NULL,
    "syncAt" TIMESTAMP(3) NOT NULL,
    "deleteAt" TIMESTAMP(3),

    CONSTRAINT "Tag_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Category" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "color" INTEGER NOT NULL,
    "updateAt" TIMESTAMP(3) NOT NULL,
    "syncAt" TIMESTAMP(3) NOT NULL,
    "deleteAt" TIMESTAMP(3),

    CONSTRAINT "Category_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_TagToTask" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "_TagToTask_AB_unique" ON "_TagToTask"("A", "B");

-- CreateIndex
CREATE INDEX "_TagToTask_B_index" ON "_TagToTask"("B");

-- AddForeignKey
ALTER TABLE "Task" ADD CONSTRAINT "Task_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES "Category"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_TagToTask" ADD CONSTRAINT "_TagToTask_A_fkey" FOREIGN KEY ("A") REFERENCES "Tag"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_TagToTask" ADD CONSTRAINT "_TagToTask_B_fkey" FOREIGN KEY ("B") REFERENCES "Task"("id") ON DELETE CASCADE ON UPDATE CASCADE;
