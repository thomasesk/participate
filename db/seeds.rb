# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Donation.destroy_all
Charity.destroy_all
puts "db cleaned"

Charity.create({name: "Art of Change 21", category: "Environment", description: "Art of Change 21 is a one-of-a-kind association that brings together artists, social entrepreneurs and young leaders who are deeply committed to sustainability and the environment, in order to create original, impactful solutions that address climate change and promote sustainable lifestyles.
Art of Change 21 started its activities in 2014 ahead of COP21, with the “Conclave” – an international event of co-creation that brought together artists, social entrepreneurs and leaders of the ecological transition from all over the world. Together they decided on two concrete actions to mobilize the public for the environment, and so the ”Maskbook” and ”Caire Game” projects were born. Today these two projects operate on a global scale, reaching out to over 10,000 people since their inception.
On October 2017, Art of Change organized with the support of UN Environment a second edition of the “Conclave” at the Grand Palais in Paris.
Following this triple dynamic, the association also plays a key role in the COP (United Nations Climate Change Conferences) and has participated in the COP21 (held in Paris in 2015), the COP22 (held in Morocco in 2016) and the COP23 in Bonn, Germany.
Art of Change 21 is a not-for-profit association, created in 2014 and registered in France. Its main partners are UN Environment and the Schneider Electric Foundation. Its patrons are artist Olafur Eliasson and social entrepreneur Tristan Lecomte.", photo: ["https://res.cloudinary.com/dbr1bhlka/image/upload/v1552406588/AoC-logo.png", "https://res.cloudinary.com/dbr1bhlka/image/upload/v1552406589/AoC-1.jpg", "https://res.cloudinary.com/dbr1bhlka/image/upload/v1552406589/AoC-2.jpg", "https://res.cloudinary.com/dbr1bhlka/image/upload/v1552406591/AoC-3.jpg", "https://res.cloudinary.com/dbr1bhlka/video/upload/v1552487050/Le_Conclave_2017.mp4"] })

Charity.create({name: "The School Fund", category: "Education", description: "The School Fund directly contribute to educational scholarships for low-income students in countries that do not offer free, public secondary school.
Like other civic crowdfunding platforms, through The School Fund, large numbers of online visitors support philanthropic efforts by pooling small contributions. The School Fund crowdfunds for students who have been identified by their teachers or local school officials as not having enough money to continue paying to go to school. Globally, 115 million children do not attend school, and school fees contribute to this dropout rate by making education cost-prohibitive for impoverished students in developing countries. School fees often disproportionately affect girls, with many impoverished families dedicating their limited money to educating their sons rather than their daughters.",
photo: ["https://res.cloudinary.com/dbr1bhlka/image/upload/v1552642994/school-fund-logo.png", "https://res.cloudinary.com/dbr1bhlka/image/upload/v1552642990/school-fund-1.jpg", "https://res.cloudinary.com/dbr1bhlka/image/upload/v1552642986/school-fund-2.jpg", "https://res.cloudinary.com/dbr1bhlka/image/upload/v1552642981/school-fund-3.jpg", "https://res.cloudinary.com/dbr1bhlka/video/upload/v1552643041/video_school-fund.mp4"] })
