# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Client.delete_all
PhoneModel.delete_all
Repair.delete_all

kowalski = Client.create!(last_name: 'Kowalski', first_name: 'Jan', phone_number: 506654584, email: 'jankowalski@onet.pl')
zbyszkowski = Client.create!(last_name: 'Zbyszkowski', first_name: 'Zbyszek', phone_number: 652865459, email: 'zbyszkowski@wp.pl')
gienkowski = Client.create!(last_name: 'Gienkowski', first_name: 'Gienek', phone_number: 756894568, email: 'gienkowski@gmail.com')
potter = Client.create!(last_name: 'Potter', first_name: 'Harry', phone_number: 888777555, email: 'potter@gryfindor.com')

e51 = PhoneModel.create!(name: 'NOKIA E51')
iPhone5 = PhoneModel.create!(name: 'iPhone 5')
iPhone5s = PhoneModel.create!(name: 'iPhone 5s')
nexus = PhoneModel.create!(name: 'Nexus 4')

Repair.create!(phone_model: e51, client_id: kowalski.id, status: 'send to main service', imei: 54867598659, serviceman_id: 1, description: 'change soft', max_price: 300, costs: 150, price: 250, deadline: Time.now + 1.week )
Repair.create!(phone_model: iPhone5, client: zbyszkowski, status: 'fixed', imei: 54895598659, serviceman_id: 1, description: 'simlock', price: 150, deadline: Time.now + 3.day )
Repair.create!(phone_model: nexus, client: potter, status: 'in repair', imei: 86594331525, serviceman_id: 1, description: 'soft, screen', price: 400, deadline: Time.now + 5.day )

#client: potter     // LEPSZE  - przekazanie całego obiektu, a nie tylko jego id