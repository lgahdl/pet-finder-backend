-- CreateTable
CREATE TABLE "Owner" (
    "id_owner" TEXT NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "Owner_pkey" PRIMARY KEY ("id_owner")
);

-- CreateTable
CREATE TABLE "Pet_Owner" (
    "id_pet_owner" SERIAL NOT NULL,
    "id_pet" INTEGER NOT NULL,
    "id_owner" TEXT NOT NULL,

    CONSTRAINT "Pet_Owner_pkey" PRIMARY KEY ("id_pet_owner")
);

-- CreateTable
CREATE TABLE "Pet" (
    "id_pet" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,

    CONSTRAINT "Pet_pkey" PRIMARY KEY ("id_pet")
);

-- CreateTable
CREATE TABLE "Photo" (
    "id_photo" SERIAL NOT NULL,
    "id_pet" INTEGER NOT NULL,
    "path" TEXT NOT NULL,

    CONSTRAINT "Photo_pkey" PRIMARY KEY ("id_photo")
);

-- CreateIndex
CREATE UNIQUE INDEX "Owner_id_owner_key" ON "Owner"("id_owner");

-- AddForeignKey
ALTER TABLE "Pet_Owner" ADD CONSTRAINT "Pet_Owner_id_pet_fkey" FOREIGN KEY ("id_pet") REFERENCES "Pet"("id_pet") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Pet_Owner" ADD CONSTRAINT "Pet_Owner_id_owner_fkey" FOREIGN KEY ("id_owner") REFERENCES "Owner"("id_owner") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Photo" ADD CONSTRAINT "Photo_id_pet_fkey" FOREIGN KEY ("id_pet") REFERENCES "Pet"("id_pet") ON DELETE RESTRICT ON UPDATE CASCADE;
