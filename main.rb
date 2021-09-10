require_relative 'equipo'


equipo1 = Equipo.new 1, "equipo1" 
equipo2 = Equipo.new 2, "equipo2" 
equipo3 = Equipo.new 3, "equipo3" 
equipo4 = Equipo.new 4, "equipo4" 
equipo5 = Equipo.new 5, "equipo5" 
equipo6 = Equipo.new 6, "equipo6" 


#codigo, nombre, edad, dni, colorCinturon, partidasGanadas, partidasEmpatadas, partidasPerdidas


equipo1.agregar_participante Participante.new 1, "Jacinta", 28, "22.122.322-2", "verde", 3, 2, 2
equipo1.agregar_participante Participante.new 1, "Juan", 27, "22.999.987-6", "amarillo", 4, 2, 1

equipo2.agregar_participante Participante.new 2, "Javiera", 22, "24.222.333-4", "azul", 2, 2, 3
equipo2.agregar_participante Participante.new 2, "Antonia", 27, "22.123.455-5", "cafe", 5, 2, 0

equipo3.agregar_participante Participante.new 3, "Jose", 26, "23.345.677-8", "rojo", 3, 3, 1
equipo3.agregar_participante Participante.new 3, "Angie", 24, "24.001.234-5", "naranja", 2, 1, 4

equipo4.agregar_participante Participante.new 4, "Sebastian", 25, "23.654.321-0", "rojo", 1, 3, 3
equipo4.agregar_participante Participante.new 4, "Felipe", 28, "21.111.234-9", "azul", 5, 0, 2

equipo5.agregar_participante Participante.new 5, "Humberto", 21, "24.214.215-6", "verde", 6, 1, 0
equipo5.agregar_participante Participante.new 5, "Fernanda", 23, "23.556.677-8", "naranja", 4, 0, 3

equipo6.agregar_participante Participante.new 6, "Martin", 25, "23.234.345-7", "blanco", 4, 1, 2
equipo6.agregar_participante Participante.new 6, "Dominga", 23, "23.987.654-3", "blanco", 1, 4, 2



puts "El campeón es:"
puts Participante.obtener_campeon 

puts "La tabla de posiciones:"


Participante.tabla_posiciones.each do |participante|
    puts participante.nombre
end


Participante.modificar_puntaje "18.222.445-6", 4
puts Participante.obtener_por_dni("18.222.445-6").partidasGanadas

puts "Equipos y sus miembros:"
Equipo.obtener_equipos_puntaje 