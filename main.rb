require_relative 'equipo'


equipo1 = Equipo.new 1, "equipo1" 
equipo2 = Equipo.new 2, "equipo2" 
equipo3 = Equipo.new 3, "equipo3" 
equipo4 = Equipo.new 4, "equipo4" 
equipo5 = Equipo.new 5, "equipo5" 
equipo6 = Equipo.new 6, "equipo6" 

equipo1.agregar_participante Participante.new 5, "Jacinta", 28, "22.122.322-2", "verde", 3, 2, 1
#codigo, nombre, edad, dni, colorCinturon, partidasGanadas, partidasEmpatadas, partidasPerdidas
puts Participante.obtener_por_dni "222"
puts Participante.obtener_por_dni("22.122.322-2").nombre
equipo1.agregar_participante Participante.new 5, "Jacinta", 28, "22.122.322-2", "verde", 3, 2, 1

equipo1.agregar_participante Participante.new 5, "Jacinta", 28, "22.122.322-2", "verde", 3, 2, 1