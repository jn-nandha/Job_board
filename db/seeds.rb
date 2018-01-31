# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Company.delete_all

Company.create!(name: "ABC",
				email: "abc@gml.com",
				password: "abc",
				website: "www.abc.com",
				city: "abc")

Company.create!(name: "DEF",
				email: "def@gml.com",
				password: "def",
				website: "www.def.com",
				city: "def")

Company.create!(name: "GHI",
				email: "ghi@gml.com",
				password: "ghi",
				website: "www.ghi.com",
				city: "ghi")

Job.create!(title: "job1",
			description: "job description 1",
			job_type: "we want",
			status: "start",
			category: "java",
			company_id: 1)