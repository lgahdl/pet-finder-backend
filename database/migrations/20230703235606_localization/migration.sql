-- CreateTable
CREATE TABLE "Localization" (
    "id_loc" SERIAL NOT NULL,
    "latitude" TEXT NOT NULL,
    "longitude" TEXT NOT NULL,
    "id_pet" INTEGER NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Localization_pkey" PRIMARY KEY ("id_loc")
);

-- AddForeignKey
ALTER TABLE "Localization" ADD CONSTRAINT "Localization_id_pet_fkey" FOREIGN KEY ("id_pet") REFERENCES "Pet"("id_pet") ON DELETE RESTRICT ON UPDATE CASCADE;
