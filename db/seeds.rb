# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Company.create!([
	{comp_name: "abc",email: "abc@gml.com",password: "abc.abc",comp_website: "www.abc.com",city: "abc"},
	{comp_name: "def",email: "def@gml.com",password: "def.def",comp_website: "www.def.com",city: "def"},
	{comp_name: "ghi",email: "ghi@gml.com",password: "ghi.ghi",comp_website: "www.ghi.com",city: "ghi"},
	])

Job.create!([
	{title: "job 1",description: "This is job 1",job_type: "we have",status: "open",category: "Ruby",company_id: 1},
	{title: "job 2",description: "This is job 2",job_type: "we want",status: "open",category: "Ruby",company_id: 2},
	{title: "job 3",description: "This is job 3",job_type: "we have",status: "open",category: "Ruby",company_id: 3},
	{title: "job 4",description: "This is job 4",job_type: "we want",status: "open",category: "Ruby",company_id: 1},
	{title: "job 5",description: "This is job 5",job_type: "we have",status: "open",category: "Ruby",company_id: 2},
	{title: "job 6",description: "This is job 6",job_type: "we want",status: "open",category: "Ruby",company_id: 3}	
	])