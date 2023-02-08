/*
  Warnings:

  - You are about to drop the column `memverPart` on the `MemberSeasonInfo` table. All the data in the column will be lost.
  - Added the required column `activityName` to the `Activity` table without a default value. This is not possible if the table is not empty.
  - Added the required column `memberPart` to the `MemberSeasonInfo` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `Activity` ADD COLUMN `activityName` VARCHAR(191) NOT NULL;

-- AlterTable
ALTER TABLE `MemberSeasonInfo` DROP COLUMN `memverPart`,
    ADD COLUMN `memberPart` ENUM('WEB_MOBILE', 'SERVER_CLOUD', 'AI') NOT NULL;
