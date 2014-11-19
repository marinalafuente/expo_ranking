# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

locations = {
  mncars: %w(expo1 expo2),
  thyssen: %w(expo1 expo2),
  prado: %w(expo1 expo2)
}

locations.each do |name, value|
  location = Location.new
  location.name = name
  value.each do |expo|
    location.expos.build(name: expo)
  end
  location.save
end

#Expo.create([
#  {name: 'Las Animas de Bernini. Arte en Roma para la corte espanola',  
#  	location_id: prado.id },
#  {name: 'Dibujos espanoles en la Hamburger Kunsthalle: Cano, Murillo y Goya',  
#  	location_id: prado.id },
#  {name: 'El mal se desvanece. Egusquiza y el Parsifal de Wagner en el Museo del Prado', 
#  	location_id: prado.id }
#])

