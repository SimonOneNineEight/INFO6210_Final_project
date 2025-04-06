CREATE TABLE `AnimalBreed` (
  `PK,FK` breed_id,
  `PK,FK` animal_id
);

CREATE TABLE `Breed` (
  `PK` breed_id,
  `String` species,
  `String` description,
  FOREIGN KEY (`PK`) REFERENCES `AnimalBreed`(`PK,FK`)
);

CREATE TABLE `Shelter` (
  `PK` shelter_id,
  `String` name,
  `String` address_line1,
  `String` address_line2,
  `String` city,
  `int` zipcode,
  `String` Email,
  `String` phoneNumber,
  `INT` capacity,
  `INT` current_animals,
  `Date` established_date,
  `Enum('Public', 'Private', 'Rescue')` shelter_type,
  `String` website
);

CREATE TABLE `Animal` (
  `PK` animal_id,
  `FK` Shelter_id,
  `String` name,
  `Date` DateOfBirth,
  `String` gendeer,
  `String` color,
  `INT` adoption_fee,
  `String` photoURL,
  FOREIGN KEY (`PK`) REFERENCES `AnimalBreed`(`PK,FK`),
  FOREIGN KEY (`FK`) REFERENCES `Shelter`(`PK`)
);

CREATE TABLE `Person` (
  `PK` person_id,
  `String` first_name,
  `String` last_name,
  `String` address_line1,
  `String` address_line2,
  `String` city,
  `int` zipcode,
  `String` phoneNumber,
  `String` Email,
  `ENUM('Doctor', 'Adoptor', 'Shelter_Staff')` role
);

CREATE TABLE `Adoption_Application` (
  `PK` Application_id,
  `FK` Animal_id,
  `FK` Shelter_id,
  `Date` Application_date,
  `ENUM('Pending', 'Approved', 'Rejected', 'Withdrawn')` Status,
  `String` Reason_for_adoption,
  `String` Reviewed_by,
  `Date` Review_date,
  `FK` person_id,
  FOREIGN KEY (`FK`) REFERENCES `Animal`(`PK`),
  FOREIGN KEY (`FK`) REFERENCES `Person`(`PK`),
  FOREIGN KEY (`FK`) REFERENCES `Shelter`(`PK`)
);

CREATE TABLE `Donation` (
  `PK` DonationID,
  `String` name,
  `FK` shelter_id,
  `String` Amount,
  `Date` DonationDate,
  FOREIGN KEY (`FK`) REFERENCES `Shelter`(`PK`)
);

CREATE TABLE `Adoptor` (
  `PK` Adoptor_ID,
  `String` adoptor_name,
  `String` DateOfBirth,
  `Boolean` HasOtherPet,
  `String` address,
  `FK` address_id,
  `FK` person_id
);

CREATE TABLE `Vet_Clinic` (
  `PK` clinic_id,
  `String` clinic_name,
  `FK` vet_id,
  `String` address_line1,
  `String` address_line2,
  `String` city,
  `int` zipcode,
  `String` phoneNumber,
  `String` Email
);

CREATE TABLE `Vet` (
  `PK` vet_id,
  `FK` person_id,
  `FK` clinic_id,
  `String` Specialization,
  FOREIGN KEY (`FK`) REFERENCES `Vet_Clinic`(`PK`)
);

CREATE TABLE `Health_Report` (
  `PK` report_id,
  `FK` animal_id,
  `FK` vet_id,
  `String` diagnosis,
  `String` treatment,
  `Date` report_date,
  FOREIGN KEY (`FK`) REFERENCES `Animal`(`PK`),
  FOREIGN KEY (`FK`) REFERENCES `Vet`(`PK`)
);

CREATE TABLE `Event` (
  `PK` event_id,
  `FK` shelter_id,
  `String` name,
  `Date` event_date,
  `Date` event_time,
  `Text` description,
  `Enum('Adoption', 'Fundraising', 'Medical Checkup', 'Training')` event_type,
  `INT` capacity,
  `Enum('Scheduled', 'Ongoing', 'Completed', 'Cancelled')` status,
  FOREIGN KEY (`FK`) REFERENCES `Shelter`(`PK`)
);

CREATE TABLE `Inventory` (
  `PK` Inventory_id,
  `FK` Shelter_id,
  `String` Item_name,
  `String` Category,
  `INT` Quantity,
  `String` Unit,
  `String` Supplier,
  `Date` Date_added,
  `Date` Last_updated,
  FOREIGN KEY (`FK`) REFERENCES `Shelter`(`PK`)
);

CREATE TABLE `Shelter_Staff` (
  `PK` staff_id,
  `FK` shelter_id,
  `FK` person_id,
  `String` role,
  `Date` hire_date,
  `Decimal` salary,
  `ENUM("Active', 'Inactive')` status,
  FOREIGN KEY (`FK`) REFERENCES `Shelter`(`PK`)
);

CREATE TABLE `Pet_Status_Tracking` (
  `PK` pst_id,
  `FK` animal_id,
  `ENUM('Pending', 'Approved', 'Rejected', 'Completed')` status,
  `Date` StatusStartDate,
  `Date` StatusEndDate,
  FOREIGN KEY (`FK`) REFERENCES `Animal`(`PK`)
);

