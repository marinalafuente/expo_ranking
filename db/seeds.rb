# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#locations.each do |name, value|
#  location = Location.new
#  location.name = name
#  value.each do |expo|
#    location.expos.build(name: expo)
#  end
#  location.save
#end

#locations = {
 # prado: %w(expo1 expo2),
 # thyssen: %w(expo1 expo2),
 # mncars: %w(expo1 expo2),
 # caixa: %w(expo1 expo2),
 # juan: %w(expo1 expo2),
 # mapfre: %w(expo1 expo2)
#}
location1 = Location.create(name: "Museo del Prado", description: "A description")
location2 = Location.create(name: "MNCARS", description: "A description")
location3 = Location.create(name: "Thyssen", description: "A description")
location4 = Location.create(name: "Caixa Forum", description: "A description")
location5 = Location.create(name: "Fund JuanMarch", description: "A description")
location6 = Location.create(name: "Fund Mapfre", description: "A description")

Expo.create([
  {name: 'Las Animas de Bernini. Arte en Roma para la corte espanola',  
  	description: "Lorem ipsum dolor sit amet, consectetur adipisicing 
  	elit. Quam eligendi repellat neque facilis, ipsum. Incidunt iusto 
  	voluptas ad dolorum vel nostrum ab hic, aspernatur quisquam velit,
  	 excepturi, commodi, provident quaerat?",
  	location_id: location1.id},
  {name: 'Dibujos espanoles en la Hamburger Kunsthalle: Cano, Murillo 
  	y Goya',  
  	description: "Lorem ipsum dolor sit amet, consectetur adipisicing 
  	elit. Nam tempora voluptatum voluptatem asperiores fuga maxime 
  	cumque dicta, numquam perferendis, eos soluta laboriosam ad minima
  	 quisquam excepturi, veniam. A, nam, repellat.",
  	location_id: location1.id},
  {name: 'El mal se desvanece. Egusquiza y el Parsifal de Wagner en el
   Museo del Prado', 
  	description: "Lorem ipsum dolor sit amet, consectetur adipisicing 
  	elit. Distinctio, voluptas modi expedita similique voluptate culpa 
  	officiis voluptatem optio, architecto obcaecati assumenda ipsum 
  	nostrum, suscipit vero a asperiores maiores qui, sint.",
  	location_id: location1.id}
])

