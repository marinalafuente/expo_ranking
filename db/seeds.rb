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
  	description: "6 de noviembre de 2014-08 de febrero de 2015.
    Lorem ipsum dolor sit amet, consectetur adipisicing 
  	elit. Quam eligendi repellat neque facilis, ipsum. Incidunt iusto 
  	voluptas ad dolorum vel nostrum ab hic, aspernatur quisquam velit,
  	 excepturi, commodi, provident quaerat?",
  	location_id: location1.id},
  {name: 'Dibujos espanoles en la Hamburger Kunsthalle: Cano, Murillo 
  	y Goya',  
  	description: "30 de octubre de 2014-08 de febrero de 2015.
    Lorem ipsum dolor sit amet, consectetur adipisicing 
  	elit. Nam tempora voluptatum voluptatem asperiores fuga maxime 
  	cumque dicta, numquam perferendis, eos soluta laboriosam ad minima
  	 quisquam excepturi, veniam. A, nam, repellat.",
  	location_id: location1.id},
  {name: 'El mal se desvanece. Egusquiza y el Parsifal de Wagner en el
   Museo del Prado', 
  	description: "4 de noviembre de 2013-23 de noviembre de 2014.
    Lorem ipsum dolor sit amet, consectetur adipisicing 
  	elit. Distinctio, voluptas modi expedita similique voluptate culpa 
  	officiis voluptatem optio, architecto obcaecati assumenda ipsum 
  	nostrum, suscipit vero a asperiores maiores qui, sint.",
  	location_id: location1.id}
])

Expo.create([
  {name: 'El retorno de la serpiente. Mathias Goeritz y la invencion de
     la arquitectura emocional',  
    description: "12 noviembre, 2014 - 13 abril, 2015. Lorem ipsum dolor
     sit amet, consectetur adipisicing elit. Quam eligendi repellat neque
     facilis, ipsum. Incidunt iusto voluptas ad dolorum vel nostrum ab hic,
     aspernatur quisquam velit, excepturi, commodi, provident quaerat?",
    location_id: location2.id},
  {name: 'Patricia Gadea. Atomic-Circus',  
    description: "5 noviembre, 2014 - 5 enero, 2015. Lorem ipsum dolor sit amet, 
    consectetur adipisicing elit. Nam tempora voluptatum voluptatem asperiores fuga maxime 
    cumque dicta, numquam perferendis, eos soluta laboriosam ad minima
     quisquam excepturi, veniam. A, nam, repellat.",
    location_id: location2.id},
  {name: 'Un saber realmente util', 
    description: "29 octubre, 2014 - 9 febrero, 2015. Lorem ipsum dolor sit amet,
     consectetur adipisicing elit. Distinctio, voluptas modi expedita similique 
     voluptate culpa officiis voluptatem optio, architecto obcaecati assumenda ipsum 
     nostrum, suscipit vero a asperiores maiores qui, sint.",
    location_id: location2.id},
  {name: 'Juan Luis Moraza. Republica', 
    description: "15 octubre, 2014 - 2 marzo, 2015. Lorem ipsum dolor sit amet,
     consectetur adipisicing elit. Distinctio, voluptas modi expedita similique 
     voluptate culpa officiis voluptatem optio, architecto obcaecati assumenda ipsum 
     nostrum, suscipit vero a asperiores maiores qui, sint.",
    location_id: location2.id}
])


Expo.create([
  {name: 'Impresionismo americano',  
    description: "Del 04 de noviembre de 2014 al 01 de febrero de 2015. Lorem ipsum dolor
     sit amet, consectetur adipisicing elit. Quam eligendi repellat neque
     facilis, ipsum. Incidunt iusto voluptas ad dolorum vel nostrum ab hic,
     aspernatur quisquam velit, excepturi, commodi, provident quaerat?",
    location_id: location3.id},
  {name: 'Hubert de Givenchy',  
    description: "Del 22 de octubre de 2014 al 18 de enero de 2015. Lorem ipsum dolor sit amet, 
    consectetur adipisicing elit. Nam tempora voluptatum voluptatem asperiores fuga maxime 
    cumque dicta, numquam perferendis, eos soluta laboriosam ad minima
     quisquam excepturi, veniam. A, nam, repellat.",
    location_id: location3.id}
])

Expo.create([
  {name: 'Roni Horn. Todo dormia como si el universo fuera un error',  
    description: "Del 14 de noviembre de 2014 al 01 de marzo de 2015. Lorem ipsum dolor
     sit amet, consectetur adipisicing elit. Quam eligendi repellat neque
     facilis, ipsum. Incidunt iusto voluptas ad dolorum vel nostrum ab hic,
     aspernatur quisquam velit, excepturi, commodi, provident quaerat?",
    location_id: location4.id}
])

Expo.create([
  {name: 'Depero Futurista. 1913-1950',  
    description: "10 de octubre al 18 de enero 2015. Lorem ipsum dolor
     sit amet, consectetur adipisicing elit. Quam eligendi repellat neque
     facilis, ipsum. Incidunt iusto voluptas ad dolorum vel nostrum ab hic,
     aspernatur quisquam velit, excepturi, commodi, provident quaerat?",
    location_id: location5.id}
])

Expo.create([
  {name: 'Sorolla y Estados Unidos',  
    description: "Del 26 de septiembre de 2014 al 11 de enero de 2015. Lorem ipsum dolor
     sit amet, consectetur adipisicing elit. Quam eligendi repellat neque
     facilis, ipsum. Incidunt iusto voluptas ad dolorum vel nostrum ab hic,
     aspernatur quisquam velit, excepturi, commodi, provident quaerat?",
    location_id: location6.id},
  {name: 'Stephen Shore',  
    description: "Del 19 de septiembre al 23 de noviembre de 2014. Lorem ipsum dolor
     sit amet, consectetur adipisicing elit. Quam eligendi repellat neque
     facilis, ipsum. Incidunt iusto voluptas ad dolorum vel nostrum ab hic,
     aspernatur quisquam velit, excepturi, commodi, provident quaerat?",
    location_id: location6.id}
])