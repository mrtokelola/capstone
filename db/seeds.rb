# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(first_name: "Mark", last_name: "Butcher", phone_number: "312-988-2737", email: "mark@email.com", password: "password" )
User.create(first_name: "Barbara", last_name: "Jackson", phone_number: "312-898-2657", email: "barbara@email.com", password: "password" )
User.create(first_name: "Tyrone", last_name: "Hill", phone_number: "312-233-7123", email: "tyrone@email.com", password: "password" )
User.create(first_name: "Amanda", last_name: "Bryant", phone_number: "773-665-7875", email: "amanda@email.com", password: "password" )

Doctor.create(first_name: "Horace", last_name: "Grant", phone_number: "708-988-7656", email: "horace@email.com", user_id: "3")
Doctor.create(first_name: "Peter", last_name: "Jang", phone_number: "312-578-9011", email: "peter@email.com", user_id: "1")
Doctor.create(first_name: "Myles", last_name: "Woener", phone_number: "815-676-9899", email: "myles@email.com", user_id: "2")
Doctor.create(first_name: "Kate", last_name: "Janssen", phone_number: "224-878-6336", email: "kate@email.com", user_id: "4")
 
Product.create(name: "Pepto-Bismol", medical_category_id: "3", description: "text", side_effects: "text")
Product.create(name: "Lisinopril", medical_category_id: "2", description: "text", side_effects: "text")
Product.create(name: "Citalopram", medical_category_id: "4", description: "text", side_effects: "text")
Product.create(name: "Anticholinergics", medical_category_id: "1", description: "text", side_effects: "text")

Prescription.create(user_id: "1", product_id: "3", dosage: "text")
Prescription.create(user_id: "2", product_id: "1", dosage: "text")
Prescription.create(user_id: "3", product_id: "2", dosage: "text")
Prescription.create(user_id: "4", product_id: "4", dosage: "text")

MedicalCategory.create(name: "blood_pressure", description: "text")
MedicalCategory.create(name: "heart", description: "text")
MedicalCategory.create(name: "asthma", description: "text")
MedicalCategory.create(name: "psychiatric", description: "text")