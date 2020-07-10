# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


nonprofit_category = ["Civic League", "Social Welfare Organization or Local Employee Association", "Trade or Professional Association", "Social or Recreational Club", "Employee Beneficiary Association",
 "Domestic Fraternal Societies and Associations", "Teacher’s Retirement Fund Associations", "Supplemental Unemployment Benefits Trust", "Employee Funded Pension Trust", "Veterans Organizations", 
"Black Lung Benefits Trust", "Religious and Apostolic Associations", "Cooperative Hospital Service Organizations"]

10.times do
    Programmer.create(name: Faker::Name.name, email: Faker::Internet.email, phone: Faker::PhoneNumber.cell_phone )
end

16.times do 
    Nonprofit.create(name: Faker::Company.name, email: Faker::Internet.email, phone: Faker::PhoneNumber.cell_phone, address: Faker::Address.street_address, category: nonprofit_category.sample)
end

16.times do 
    Project.create(name: Faker::App.name, nonprofit_id: Nonprofit.all.sample.id)
end

category = [
    {name: "Website", kind: "Front End Web Development", description: "Html, CSS, and JavaScript" },
    {name: "Client Database", kind: "Full Stack Development", description: "Html, CSS, and JavaScript, Python, Java, and Ruby" },
    {name: "Sale Operation", kind: "Back End Web Development", description: "Python, Java, and Ruby" },
    {name: "Inventory System", kind: "Back End Web Development", description: "Python, Java, and Ruby" },
    {name: "Email Campaign", kind: "Back End Web Development", description: "Python, Java, and Ruby" },
    {name: "Operation System", kind: "Back End Web Development", description: "Python, Java, and Ruby" },
    {name: "Iphone app", kind: "Apple Apps", description: "C, Swift, and Objective- C" },
    {name: "Playstore app", kind: "Andriod Apps", description: "Kotlin, Java, and C++" },
]

category.each {|category| Category.create(category)}

categoryproject = [
    {project_id: 1, category_id: 1 },
    {project_id: 1, category_id: 3 },
    {project_id: 2, category_id: 2 },
    {project_id: 2, category_id: 4 },
    {project_id: 3, category_id: 5 },
    {project_id: 3, category_id: 6 },
    {project_id: 4, category_id: 1 },
    {project_id: 4, category_id: 8 },
    {project_id: 5, category_id: 2 },
    {project_id: 5, category_id: 7 },
    {project_id: 6, category_id: 5 },
    {project_id: 6, category_id: 6 },
    {project_id: 7, category_id: 3 },
    {project_id: 7, category_id: 7 },
    {project_id: 8, category_id: 3 },
    {project_id: 8, category_id: 2 },
    {project_id: 9, category_id: 1 },
    {project_id: 9, category_id: 4 },
    {project_id: 10, category_id: 4 },
    {project_id: 10, category_id: 8 },
    {project_id: 11, category_id: 8 },
    {project_id: 11, category_id: 7 },
    {project_id: 12, category_id: 6 },
    {project_id: 12, category_id: 3 },
    {project_id: 13, category_id: 2 },
    {project_id: 13, category_id: 1 },
    {project_id: 14, category_id: 6 },
    {project_id: 14, category_id: 4 },
    {project_id: 15, category_id: 3 },
    {project_id: 15, category_id: 7 },
    {project_id: 16, category_id: 8 },
    {project_id: 16, category_id: 6 },
]

categoryproject.each {|categoryproject| CategoryProject.create(categoryproject)}

programmerproject = [
    {programmer_id: 1, project_id: 1 },
    {programmer_id: 2, project_id: 2 },
    {programmer_id: 3, project_id: 3 },
    {programmer_id: 4, project_id: 4 },
    {programmer_id: 5, project_id: 5 },
    {programmer_id: 6, project_id: 6 },
    {programmer_id: 7, project_id: 7 },
    {programmer_id: 8, project_id: 8 },
    {programmer_id: 9, project_id: 9 },
    {programmer_id: 10, project_id: 10 },
    {programmer_id: 1, project_id: 11 },
    {programmer_id: 2, project_id: 12 },
    {programmer_id: 3, project_id: 13 },
    {programmer_id: 4, project_id: 14 },
    {programmer_id: 5, project_id: 15 },
    {programmer_id: 6, project_id: 16 },
]

programmerproject.each {|programmerproject| ProgrammerProject.create(programmerproject)}