# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

mncars, thyssen, prado, march, caixa = Location.create([
  {name: 'MNCARS'},
  {name: 'Museo Thyssen'},
  {name: 'Museo del Prado'},
  {name: 'Fundacion Juan March'},
  {name: 'Fundacion Mapfre'},
  {name: 'Caixa Forum'}
])

Expo.create([
  {name: 'Las Animas de Bernini. Arte en Roma para la corte espanola',  
  	location_id: prado.id },
  {name: 'Dibujos espanoles en la Hamburger Kunsthalle: Cano, Murillo y Goya',  
  	location_id: prado.id },
  {name: 'El mal se desvanece. Egusquiza y el Parsifal de Wagner en el Museo del Prado', 
  	location_id: prado.id }
])

