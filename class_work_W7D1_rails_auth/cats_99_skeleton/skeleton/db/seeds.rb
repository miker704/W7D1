# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
u1 = User.create!(user_name: 'Gabriel', password: 'apple')
u2 = User.create!(user_name: 'Alisher', password: 'tart')
u3 =User.create!(user_name: 'Mike', password: 'tart1')
u4 = User.create!(user_name: 'Mike R', password: 'tart2')
u5 = User.create!(user_name: 'Mike H', password: 'tart3')

Cat.destroy_all 
c1 = Cat.create!(owner_id: u1.id, name: 'Chesnut', color: 'white', birth_date: '2022/02/05', sex: 'F', description: 'A wonderful cat that clawed my eyes out would reccomend')
c2 = Cat.create!(owner_id: u2.id, name: 'Ayce', color: 'grey', birth_date: '2010/09/01', sex: 'F', description: 'Wears awesome hats')
c3 = Cat.create!(owner_id: u1.id, name: 'Victor', color: 'black', birth_date: '2000/07/12', sex: 'M', description: 'left for bloomberg')
c4 = Cat.create!(owner_id: u3.id, name: 'Kin Ka', color: 'orange', birth_date: '2020/01/06', sex: 'M', description: 'has a girlfriend in canada')
c5 = Cat.create!(owner_id: u4.id, name: 'Jonathon', color: 'white', birth_date: '2015/02/20', sex: 'M', description: 'have not met them yet they seem lovely')
c6 = Cat.create!(owner_id: u5.id, name: 'Alisher', color: 'orange', birth_date: '2015-05-13', sex: 'F', description: 'hateful little cunt')
c7 = Cat.create!(owner_id: u3.id, name: 'Meowth', color: 'grey', birth_date: '2015-05-13', sex: 'M', description: 'hateful little cunt')
c8 = Cat.create!(owner_id: u4.id, name: 'Juniper', color: 'white', birth_date: '2015-05-13', sex: 'F', description: 'hateful little cunt')
c9 = Cat.create!(owner_id: u5.id, name: 'Coraline', color: 'black', birth_date: '2015-05-13', sex: 'M', description: 'hateful little cunt')
c10 = Cat.create!(owner_id: u3.id, name: 'Michael', color: 'orange', birth_date: '2015-05-13', sex: 'F', description: 'hateful little cunt')
c11 = Cat.create!(owner_id: u3.id, name: 'Bob', color: 'white', birth_date: '2015-05-13', sex: 'M', description: 'hateful little cunt')
c12 = Cat.create!(owner_id: u2.id, name: 'Henrietta', color: 'black', birth_date: '2015-05-13', sex: 'F', description: 'hateful little cunt')
c13 = Cat.create!(owner_id: u2.id, name: 'Spencer', color: 'grey', birth_date: '2015-05-13', sex: 'F', description: 'hateful little cunt')
c14 = Cat.create!(owner_id: u1.id, name: 'S', color: 'white', birth_date: '2015-05-13', sex: 'M', description: 'hateful little cunt')
c15 = Cat.create!(owner_id: u4.id, name: 'M', color: 'black', birth_date: '2015-05-13', sex: 'M', description: 'hateful little cunt')

CatRentalRequest.destroy_all  
c1r1 = CatRentalRequest.create!(requester_id: u2.id, cat_id: c1.id, start_date: '2000/01/01', end_date: '2001/01/01', status: 'PENDING')
c1r11 = CatRentalRequest.create!(requester_id: u3.id, cat_id: c1.id, start_date: '2000/01/01', end_date: '2001/01/01', status: 'PENDING')
c1r111 = CatRentalRequest.create!(requester_id: u4.id, cat_id: c1.id, start_date: '2000/01/01', end_date: '2001/01/01', status: 'PENDING')
c1r2 = CatRentalRequest.create!(requester_id: u5.id, cat_id: c1.id, start_date: '2002/01/01', end_date: '2003/01/01', status: 'PENDING')
c2r1 = CatRentalRequest.create!(requester_id: u3.id, cat_id: c2.id, start_date: '2000/01/01', end_date: '2001/01/01', status: 'PENDING')
c3r1 = CatRentalRequest.create!(requester_id: u2.id, cat_id: c3.id, start_date: '2000/01/01', end_date: '2001/01/01', status: 'PENDING')
c4r1 = CatRentalRequest.create!(requester_id: u1.id, cat_id: c4.id, start_date: '2000/01/01', end_date: '2001/01/01', status: 'PENDING')
c5r1 = CatRentalRequest.create!(requester_id: u4.id, cat_id: c5.id, start_date: '2000/01/01', end_date: '2001/01/01', status: 'PENDING')