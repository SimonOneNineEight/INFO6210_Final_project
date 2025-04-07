-- Person table inserts
INSERT INTO final_project_group_1.dbo.Person (person_id, first_name, last_name, address_line1, address_line2, city, zipcode, phoneNumber, Email, [role]) VALUES
(1, 'John', 'Smith', '123 Main St', 'Apt 4B', 'Springfield', 12345, '555-123-4567', 'john.smith@email.com', 'Adoptor'),
(2, 'Mary', 'Johnson', '456 Oak Ave', NULL, 'Riverdale', 23456, '555-234-5678', 'mary.j@email.com', 'Shelter_Staff'),
(3, 'Robert', 'Williams', '789 Pine Rd', NULL, 'Lakeside', 34567, '555-345-6789', 'rwilliams@email.com', 'Doctor'),
(4, 'Susan', 'Brown', '321 Cedar Ln', 'Suite 10', 'Springfield', 12345, '555-456-7890', 'susan.b@email.com', 'Shelter_Staff'),
(5, 'David', 'Miller', '654 Birch Blvd', NULL, 'Lakeside', 34567, '555-567-8901', 'dmiller@email.com', 'Adoptor'),
(6, 'Jennifer', 'Davis', '987 Maple St', 'Unit 7C', 'Riverdale', 23456, '555-678-9012', 'jdavis@email.com', 'Shelter_Staff'),
(7, 'Michael', 'Garcia', '147 Elm St', NULL, 'Springfield', 12345, '555-789-0123', 'mgarcia@email.com', 'Doctor'),
(8, 'Lisa', 'Rodriguez', '258 Walnut Ave', 'Apt 12', 'Lakeside', 34567, '555-890-1234', 'lrodriguez@email.com', 'Adoptor'),
(9, 'James', 'Wilson', '369 Pineapple Rd', NULL, 'Riverdale', 23456, '555-901-2345', 'jwilson@email.com', 'Shelter_Staff'),
(10, 'Patricia', 'Taylor', '741 Orange Ln', 'House B', 'Springfield', 12345, '555-012-3456', 'ptaylor@email.com', 'Adoptor');

-- Shelter table inserts
INSERT INTO final_project_group_1.dbo.Shelter (shelter_id, name, address_line1, address_line2, city, zipcode, email, phoneNumber, capacity, current_animals, established_date, shelter_type, website) VALUES
(1, 'Pawsitive Haven', '100 Rescue Rd', NULL, 'Springfield', 12345, 'info@pawsitivehaven.org', '555-111-2222', 75, 45, '2005-06-15', 'Private', 'www.pawsitivehaven.org'),
(2, 'Happy Tails Sanctuary', '200 Animal Way', 'Building A', 'Riverdale', 23456, 'contact@happytails.org', '555-222-3333', 120, 95, '1998-03-22', 'Private', 'www.happytails.org'),
(3, 'Forever Homes', '300 Pet Blvd', NULL, 'Lakeside', 34567, 'homes@foreverhomes.org', '555-333-4444', 90, 65, '2010-09-10', 'Public', 'www.foreverhomes.org'),
(4, 'Second Chance Shelter', '400 Rescue Ave', 'Suite 5', 'Springfield', 12345, 'info@secondchance.org', '555-444-5555', 60, 42, '2015-11-28', 'Rescue', 'www.secondchance.org'),
(5, 'Animal Angels', '500 Hope St', NULL, 'Lakeside', 34567, 'angels@animalangels.org', '555-555-6666', 100, 73, '2000-05-01', 'Private', 'www.animalangels.org'),
(6, 'Furry Friends Refuge', '600 Companion Rd', NULL, 'Riverdale', 23456, 'refuge@furryfriends.org', '555-666-7777', 80, 58, '2012-07-15', 'Rescue', 'www.furryfriends.org'),
(7, 'Paws & Claws Center', '700 Pet Care Ln', 'Building C', 'Springfield', 12345, 'center@pawsclaws.org', '555-777-8888', 70, 52, '2008-02-29', 'Public', 'www.pawsclaws.org'),
(8, 'Safe Haven for Pets', '800 Shelter Blvd', NULL, 'Lakeside', 34567, 'info@safehaven.org', '555-888-9999', 85, 62, '2017-10-05', 'Private', 'www.safehaven.org'),
(9, 'Rainbow Bridge Shelter', '900 Rainbow Rd', 'Unit 3', 'Riverdale', 23456, 'bridge@rainbowshelter.org', '555-999-0000', 95, 70, '2003-12-12', 'Rescue', 'www.rainbowshelter.org'),
(10, 'Loving Hearts Animal Rescue', '1000 Compassion Ave', NULL, 'Springfield', 12345, 'hearts@lovingrescue.org', '555-000-1111', 110, 83, '2011-04-18', 'Public', 'www.lovingrescue.org');

-- Vet_Clinic table inserts (Need to insert this before Vet due to circular dependency)
INSERT INTO final_project_group_1.dbo.Vet_Clinic (clinic_id, clinic_name, vet_id, address_line1, address_line2, city, zipcode, phoneNumber, Email) VALUES
(1, 'Healthy Paws Veterinary', NULL, '100 Vet St', NULL, 'Springfield', 12345, '555-123-9876', 'info@healthypaws.vet'),
(2, 'Animal Care Center', NULL, '200 Medical Blvd', 'Suite A', 'Riverdale', 23456, '555-234-8765', 'care@animalcenter.vet'),
(3, 'Pet Wellness Clinic', NULL, '300 Doctor Rd', NULL, 'Lakeside', 34567, '555-345-7654', 'wellness@petclinic.vet'),
(4, 'Gentle Care Veterinary', NULL, '400 Health Ave', 'Unit 2', 'Springfield', 12345, '555-456-6543', 'info@gentlecare.vet'),
(5, 'All Creatures Clinic', NULL, '500 Animal Health Dr', NULL, 'Lakeside', 34567, '555-567-5432', 'creatures@allcreatures.vet');

-- Vet table inserts
INSERT INTO final_project_group_1.dbo.Vet (vet_id, person_id, clinic_id, Specialization) VALUES
(1, 3, 1, 'General Practice'),
(2, 7, 2, 'Surgery'),
(3, 3, 3, 'Feline Medicine'),
(4, 7, 4, 'Canine Medicine'),
(5, 3, 5, 'Exotic Animals'),
(6, 7, 1, 'Dental'),
(7, 3, 2, 'Dermatology'),
(8, 7, 3, 'Nutrition'),
(9, 3, 4, 'Behavior'),
(10, 7, 5, 'Oncology');

-- Update Vet_Clinic with vet_id after Vet records are created
UPDATE final_project_group_1.dbo.Vet_Clinic SET vet_id = 1 WHERE clinic_id = 1;
UPDATE final_project_group_1.dbo.Vet_Clinic SET vet_id = 2 WHERE clinic_id = 2;
UPDATE final_project_group_1.dbo.Vet_Clinic SET vet_id = 3 WHERE clinic_id = 3;
UPDATE final_project_group_1.dbo.Vet_Clinic SET vet_id = 4 WHERE clinic_id = 4;
UPDATE final_project_group_1.dbo.Vet_Clinic SET vet_id = 5 WHERE clinic_id = 5;

-- Animal table inserts
INSERT INTO final_project_group_1.dbo.Animal (animal_id, shelter_id, name, date_of_birth, gender, color, adoption_fee, photoURL) VALUES
(1, 1, 'Buddy', '2020-03-15', 'Male', 'Golden', 150, 'buddy_photo.jpg'),
(2, 2, 'Luna', '2019-07-22', 'Female', 'Black', 125, 'luna_photo.jpg'),
(3, 3, 'Max', '2021-01-10', 'Male', 'Brown', 175, 'max_photo.jpg'),
(4, 4, 'Bella', '2018-11-05', 'Female', 'White', 200, 'bella_photo.jpg'),
(5, 5, 'Charlie', '2020-09-30', 'Male', 'Tabby', 100, 'charlie_photo.jpg'),
(6, 6, 'Lucy', '2019-04-18', 'Female', 'Gray', 150, 'lucy_photo.jpg'),
(7, 7, 'Cooper', '2021-06-25', 'Male', 'Black and White', 125, 'cooper_photo.jpg'),
(8, 8, 'Daisy', '2018-08-12', 'Female', 'Calico', 175, 'daisy_photo.jpg'),
(9, 9, 'Rocky', '2020-12-03', 'Male', 'Brindle', 200, 'rocky_photo.jpg'),
(10, 10, 'Sadie', '2019-10-27', 'Female', 'Tan', 100, 'sadie_photo.jpg');

-- Breed table inserts
INSERT INTO final_project_group_1.dbo.Breed (breed_id, species, description) VALUES
(1, 'Dog', 'Labrador Retriever'),
(2, 'Dog', 'German Shepherd'),
(3, 'Dog', 'Golden Retriever'),
(4, 'Cat', 'Siamese'),
(5, 'Cat', 'Maine Coon'),
(6, 'Dog', 'Beagle'),
(7, 'Cat', 'Persian'),
(8, 'Dog', 'Bulldog'),
(9, 'Cat', 'Ragdoll'),
(10, 'Dog', 'Dachshund');

-- AnimalBreed table inserts
INSERT INTO final_project_group_1.dbo.AnimalBreed (breed_id, animal_id) VALUES
(3, 1),
(9, 2),
(6, 3),
(5, 4),
(4, 5),
(7, 6),
(2, 7),
(5, 8),
(8, 9),
(1, 10);

-- Adoptor table inserts
INSERT INTO final_project_group_1.dbo.Adoptor (Adoptor_ID, adoptor_name, DateOfBirth, HasOtherPet, address, address_id, person_id) VALUES
(1, 'John Smith', '1980-05-22', 1, '123 Main St, Springfield, 12345', 1, 1),
(2, 'David Miller', '1975-11-10', 0, '654 Birch Blvd, Lakeside, 34567', 5, 5),
(3, 'Lisa Rodriguez', '1990-03-28', 1, '258 Walnut Ave, Apt 12, Lakeside, 34567', 8, 8),
(4, 'Patricia Taylor', '1985-07-15', 0, '741 Orange Ln, House B, Springfield, 12345', 10, 10),
(5, 'Emma Wilson', '1992-09-08', 1, '159 Cherry Dr, Riverdale, 23456', NULL, NULL),
(6, 'Thomas Martin', '1978-04-30', 0, '357 Peach Rd, Apt 3C, Springfield, 12345', NULL, NULL),
(7, 'Olivia Harris', '1988-12-17', 1, '852 Lemon Ave, Lakeside, 34567', NULL, NULL),
(8, 'William Thompson', '1983-02-05', 0, '963 Grape Blvd, Suite 2, Riverdale, 23456', NULL, NULL),
(9, 'Sophia Martinez', '1995-06-22', 1, '147 Plum St, Springfield, 12345', NULL, NULL),
(10, 'Daniel Anderson', '1979-10-11', 0, '258 Apricot Ln, Lakeside, 34567', NULL, NULL);

-- Adoption_Application table inserts
INSERT INTO final_project_group_1.dbo.Adoption_Application (Application_id, Animal_id, Shelter_id, Application_date, Status, Reason_for_adoption, Reviewed_by, Review_date, person_id) VALUES
(1, 1, 1, '2023-01-15', 'Approved', 'Seeking companionship', '2', '2023-01-20', 1),
(2, 2, 2, '2023-02-10', 'Approved', 'Family pet', '6', '2023-02-15', 5),
(3, 3, 3, '2023-03-05', 'Pending', 'For children', '4', NULL, 8),
(4, 4, 4, '2023-04-20', 'Rejected', 'Companion for existing pet', '9', '2023-04-25', 10),
(5, 5, 5, '2023-05-12', 'Approved', 'Emotional support', '2', '2023-05-17', NULL),
(6, 6, 6, '2023-06-08', 'Withdrawn', 'Retirement companion', '6', '2023-06-10', NULL),
(7, 7, 7, '2023-07-25', 'Pending', 'Family addition', '4', NULL, NULL),
(8, 8, 8, '2023-08-18', 'Approved', 'Seeking companion', '9', '2023-08-23', NULL),
(9, 9, 9, '2023-09-02', 'Rejected', 'For apartment living', '2', '2023-09-07', NULL),
(10, 10, 10, '2023-10-15', 'Pending', 'Empty nest companion', '6', NULL, NULL);

-- Shelter_Staff table inserts
INSERT INTO final_project_group_1.dbo.Shelter_Staff (staff_id, shelter_id, person_id, [role], hire_date, salary, status) VALUES
(1, 1, 2, 'Shelter Manager', '2018-03-10', 55000.00, 'Active'),
(2, 2, 4, 'Animal Care Specialist', '2019-06-22', 42000.00, 'Active'),
(3, 3, 6, 'Veterinary Assistant', '2020-01-15', 38000.00, 'Active'),
(4, 4, 9, 'Adoption Coordinator', '2017-11-05', 40000.00, 'Active'),
(5, 5, 2, 'Volunteer Coordinator', '2021-04-30', 36000.00, 'Active'),
(6, 6, 4, 'Shelter Assistant', '2019-08-17', 32000.00, 'Active'),
(7, 7, 6, 'Animal Behaviorist', '2022-02-28', 45000.00, 'Active'),
(8, 8, 9, 'Office Manager', '2018-07-12', 38000.00, 'Active'),
(9, 9, 2, 'Outreach Coordinator', '2021-09-03', 37000.00, 'Active'),
(10, 10, 4, 'Kennel Technician', '2020-05-25', 30000.00, 'Active');

-- Health_Report table inserts
INSERT INTO final_project_group_1.dbo.Health_Report (report_id, animal_id, vet_id, diagnosis, treatment, report_date) VALUES
(1, 1, 1, 'Annual checkup', 'Vaccines updated', '2023-02-15'),
(2, 2, 2, 'Ear infection', 'Prescribed antibiotics', '2023-03-22'),
(3, 3, 3, 'Dental cleaning', 'Completed cleaning, no issues', '2023-04-10'),
(4, 4, 4, 'Spay procedure', 'Successful operation', '2023-01-05'),
(5, 5, 5, 'Respiratory infection', 'Antibiotics prescribed', '2023-05-18'),
(6, 6, 6, 'Annual checkup', 'All clear', '2023-06-30'),
(7, 7, 7, 'Neuter procedure', 'Successful operation', '2023-07-12'),
(8, 8, 8, 'Skin allergy', 'Prescribed medicated shampoo', '2023-08-25'),
(9, 9, 9, 'Vaccination update', 'All vaccines current', '2023-09-08'),
(10, 10, 10, 'Minor injury', 'Wound cleaned and bandaged', '2023-10-20');

-- Pet_Status_Tracking table inserts
INSERT INTO final_project_group_1.dbo.Pet_Status_Tracking (pst_id, animal_id, status, StatusStartDate, StatusEndDate) VALUES
(1, 1, 'Approved', '2023-01-01', '2023-01-15'),
(2, 2, 'Approved', '2023-02-01', '2023-02-20'),
(3, 3, 'Pending', '2023-03-01', NULL),
(4, 4, 'Approved', '2023-04-01', '2023-04-15'),
(5, 5, 'Approved', '2023-05-01', '2023-05-25'),
(6, 6, 'Approved', '2023-06-01', '2023-06-10'),
(7, 7, 'Pending', '2023-07-01', NULL),
(8, 8, 'Approved', '2023-08-01', '2023-08-15'),
(9, 9, 'Approved', '2023-09-01', '2023-09-10'),
(10, 10, 'Pending', '2023-10-01', NULL);

-- Donation table inserts
INSERT INTO final_project_group_1.dbo.Donation (DonationID, name, shelter_id, Amount, DonationDate) VALUES
(1, 'Annual Fundraiser', 1, '5000.00', '2023-01-15'),
(2, 'Mary Johnson', 2, '250.00', '2023-02-22'),
(3, 'Community Drive', 3, '1500.00', '2023-03-10'),
(4, 'Local Business Support', 4, '3000.00', '2023-04-05'),
(5, 'Birthday Fundraiser', 5, '750.00', '2023-05-18'),
(6, 'John Smith', 6, '100.00', '2023-06-30'),
(7, 'School Collection', 7, '850.00', '2023-07-12'),
(8, 'Pet Food Drive', 8, '1200.00', '2023-08-25'),
(9, 'Holiday Giving', 9, '2500.00', '2023-09-08'),
(10, 'Corporate Sponsorship', 10, '10000.00', '2023-10-20');

-- Inventory table inserts
INSERT INTO final_project_group_1.dbo.Inventory (Inventory_id, Shelter_id, Item_name, Category, Quantity, Unit, Supplier, Date_added, Last_updated) VALUES
(1, 1, 'Dog Food - Adult', 'Food', 500, 'lbs', 'Premium Pet Supplies', '2023-01-05', '2023-10-15'),
(2, 2, 'Cat Food - Kitten', 'Food', 250, 'lbs', 'Feline Nutrition Co', '2023-02-10', '2023-10-10'),
(3, 3, 'Dog Toys', 'Toys', 100, 'pieces', 'Happy Pet Products', '2023-03-15', '2023-09-20'),
(4, 4, 'Cat Litter', 'Supplies', 300, 'lbs', 'Clean Pets Inc', '2023-04-20', '2023-10-05'),
(5, 5, 'Leashes', 'Equipment', 50, 'pieces', 'Pet Gear Ltd', '2023-05-25', '2023-08-15'),
(6, 6, 'Pet Beds - Small', 'Bedding', 30, 'pieces', 'Comfort Pets', '2023-06-01', '2023-09-10'),
(7, 7, 'Flea Treatment', 'Medical', 200, 'doses', 'Animal Health Corp', '2023-07-05', '2023-10-01'),
(8, 8, 'Cat Toys', 'Toys', 150, 'pieces', 'Happy Pet Products', '2023-08-10', '2023-09-30'),
(9, 9, 'Dog Food - Senior', 'Food', 400, 'lbs', 'Premium Pet Supplies', '2023-09-15', '2023-10-20'),
(10, 10, 'Pet Carriers', 'Equipment', 25, 'pieces', 'Pet Gear Ltd', '2023-10-01', '2023-10-25');

-- Event table inserts
INSERT INTO final_project_group_1.dbo.Event (event_id, shelter_id, name, event_date, event_time, description, event_type, capacity, status) VALUES
(1, 1, 'Adoption Day', '2023-11-15', '10:00:00', 'Meet adoptable pets', 'Adoption', 50, 'Scheduled'),
(2, 2, 'Fundraising Gala', '2023-12-10', '18:00:00', 'Annual fundraiser', 'Fundraising', 100, 'Scheduled'),
(3, 3, 'Volunteer Training', '2023-11-05', '14:00:00', 'New volunteer orientation', 'Training', 30, 'Completed'),
(4, 4, 'Pet Health Clinic', '2023-11-20', '09:00:00', 'Free checkups', 'Medical Checkup', 40, 'Scheduled'),
(5, 5, 'Pet Photos with Santa', '2023-12-15', '11:00:00', 'Holiday photo event', 'Fundraising', 60, 'Scheduled'),
(6, 6, 'Dog Training Workshop', '2023-11-12', '15:00:00', 'Basic commands training', 'Training', 25, 'Cancelled'),
(7, 7, 'Cat Adoption Special', '2023-11-25', '10:00:00', 'Reduced fees for cats', 'Adoption', 35, 'Scheduled'),
(8, 8, 'Community Education Day', '2023-12-05', '13:00:00', 'Pet care education', 'Training', 45, 'Scheduled'),
(9, 9, 'Senior Pets Promotion', '2023-11-30', '11:00:00', 'Spotlight on senior animals', 'Adoption', 30, 'Scheduled'),
(10, 10, 'Volunteer Appreciation', '2023-12-20', '17:00:00', 'Thank you event', 'Training', 50, 'Scheduled');


INSERT INTO final_project_group_1.dbo.Vet_Clinic (clinic_id, clinic_name, vet_id, address_line1, address_line2, city, zipcode, phoneNumber, Email) VALUES
(1, 'Healthy Paws Veterinary', NULL, '100 Vet St', NULL, 'Springfield', 12345, '555-123-9876', 'info@healthypaws.vet'),
(2, 'Animal Care Center', NULL, '200 Medical Blvd', 'Suite A', 'Riverdale', 23456, '555-234-8765', 'care@animalcenter.vet'),
(3, 'Pet Wellness Clinic', NULL, '300 Doctor Rd', NULL, 'Lakeside', 34567, '555-345-7654', 'wellness@petclinic.vet'),
(4, 'Gentle Care Veterinary', NULL, '400 Health Ave', 'Unit 2', 'Springfield', 12345, '555-456-6543', 'info@gentlecare.vet'),
(5, 'All Creatures Clinic', NULL, '500 Animal Health Dr', NULL, 'Lakeside', 34567, '555-567-5432', 'creatures@allcreatures.vet'),
(6, 'Happy Pets Hospital', NULL, '600 Veterinary Pkwy', NULL, 'Riverdale', 23456, '555-678-4321', 'info@happypets.vet'),
(7, 'Riverside Animal Clinic', NULL, '700 River Rd', 'Floor 2', 'Springfield', 12345, '555-789-3210', 'contact@riverside.vet'),
(8, 'Paws & Claws Veterinary', NULL, '800 Animal Health Blvd', NULL, 'Lakeside', 34567, '555-890-2109', 'info@pawsclawsvet.com'),
(9, 'Furry Friends Medical Center', NULL, '900 Pet Med Ave', 'Suite 12', 'Riverdale', 23456, '555-901-1098', 'care@furryfriendsclinic.com'),
(10, 'Healing Hands Animal Hospital', NULL, '1000 Healing Way', NULL, 'Springfield', 12345, '555-012-0987', 'reception@healinghands.vet');

-- Vet table inserts
INSERT INTO final_project_group_1.dbo.Vet (vet_id, person_id, clinic_id, Specialization) VALUES
(1, 3, 1, 'General Practice'),
(2, 7, 2, 'Surgery'),
(3, 3, 3, 'Feline Medicine'),
(4, 7, 4, 'Canine Medicine'),
(5, 3, 5, 'Exotic Animals'),
(6, 7, 6, 'Dental'),
(7, 3, 7, 'Dermatology'),
(8, 7, 8, 'Nutrition'),
(9, 3, 9, 'Behavior'),
(10, 7, 10, 'Oncology');

-- Update Vet_Clinic with vet_id after Vet records are created
UPDATE final_project_group_1.dbo.Vet_Clinic SET vet_id = 1 WHERE clinic_id = 1;
UPDATE final_project_group_1.dbo.Vet_Clinic SET vet_id = 2 WHERE clinic_id = 2;
UPDATE final_project_group_1.dbo.Vet_Clinic SET vet_id = 3 WHERE clinic_id = 3;
UPDATE final_project_group_1.dbo.Vet_Clinic SET vet_id = 4 WHERE clinic_id = 4;
UPDATE final_project_group_1.dbo.Vet_Clinic SET vet_id = 5 WHERE clinic_id = 5;
UPDATE final_project_group_1.dbo.Vet_Clinic SET vet_id = 6 WHERE clinic_id = 6;
UPDATE final_project_group_1.dbo.Vet_Clinic SET vet_id = 7 WHERE clinic_id = 7;
UPDATE final_project_group_1.dbo.Vet_Clinic SET vet_id = 8 WHERE clinic_id = 8;
UPDATE final_project_group_1.dbo.Vet_Clinic SET vet_id = 9 WHERE clinic_id = 9;
UPDATE final_project_group_1.dbo.Vet_Clinic SET vet_id = 10 WHERE clinic_id = 10;
