# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Company.create!(comp_name: "ABC",
	email: "abc@gml.com",
	password: "abcabc",
	comp_website: "www.abc.com",
	city: "abc")

Company.create!(comp_name: "DEF",
	email: "def@gml.com",
	password: "defdef",
	comp_website: "www.def.com",
	city: "def")

Company.create!(comp_name: "GHI",
	email: "ghi@gml.com",
	password: "ghighi",
	comp_website: "www.ghi.com",
	city: "ghi")
Job.create!(title: "job1",
	description: "job description 1",
	job_type: "we want",
	status: "start",
	category: "java",
	company_id: 1)
Job.create!(title: "job2",
	description: "job description 2",
	job_type: "we have",
	status: "start",
	category: "nodeJS",
	company_id: 2)
Job.create!(title: "job3",
	description: "job description 3",
	job_type: "we have",
	status: "start",
	category: "ASP",
	company_id: 3)