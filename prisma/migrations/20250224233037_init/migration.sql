/*
  Warnings:

  - You are about to drop the column `CreatedAt` on the `Aluno` table. All the data in the column will be lost.
  - You are about to drop the column `emai` on the `Aluno` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[email]` on the table `Aluno` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `email` to the `Aluno` table without a default value. This is not possible if the table is not empty.

*/
-- DropIndex
DROP INDEX "Aluno_emai_key";

-- AlterTable
ALTER TABLE "Aluno" DROP COLUMN "CreatedAt",
DROP COLUMN "emai",
ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "email" TEXT NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "Aluno_email_key" ON "Aluno"("email");
