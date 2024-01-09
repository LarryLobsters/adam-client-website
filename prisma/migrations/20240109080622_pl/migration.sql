-- CreateTable
CREATE TABLE "Customer" (
    "customerId" STRING NOT NULL,
    "firstName" STRING NOT NULL,
    "middleName" STRING,
    "lastName" STRING NOT NULL,
    "email" STRING NOT NULL,
    "phone" STRING NOT NULL,
    "driversLicense" STRING NOT NULL,
    "dob" TIMESTAMP(3) NOT NULL,
    "sex" STRING NOT NULL,
    "ssn" STRING NOT NULL,
    "streetAddress" STRING NOT NULL,
    "city" STRING NOT NULL,
    "state" STRING NOT NULL,
    "zip" STRING NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Customer_pkey" PRIMARY KEY ("customerId")
);

-- CreateTable
CREATE TABLE "Patient" (
    "documentId" STRING NOT NULL,
    "firstName" STRING NOT NULL,
    "lastName" STRING NOT NULL,
    "birthDate" TIMESTAMP(3) NOT NULL,
    "gender" STRING NOT NULL,
    "email" STRING NOT NULL,
    "phoneNumber" STRING NOT NULL,
    "occupation" STRING NOT NULL,
    "address" STRING NOT NULL,
    "habits" STRING[],
    "personalMedicalHistory" STRING[],
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Patient_pkey" PRIMARY KEY ("documentId")
);

-- CreateTable
CREATE TABLE "MenuItem" (
    "id" STRING NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "name" STRING NOT NULL,
    "price" FLOAT8 NOT NULL,
    "categories" STRING[],
    "imageKey" STRING NOT NULL,
    "active" BOOL NOT NULL DEFAULT true,

    CONSTRAINT "MenuItem_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Day" (
    "id" STRING NOT NULL,
    "name" STRING NOT NULL,
    "dayOfWeek" INT4 NOT NULL,
    "openTime" STRING NOT NULL,
    "closeTime" STRING NOT NULL,

    CONSTRAINT "Day_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ClosedDay" (
    "id" STRING NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "ClosedDay_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "ClosedDay_date_key" ON "ClosedDay"("date");
