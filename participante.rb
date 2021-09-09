class Participante
    @@todos = Array.new
    attr_accessor :codigo, :nombre, :edad, :dni, :colorCinturon, :partidasGanadas, :partidasEmpatadas, :partidasPerdidas, :equipo
    def initialize codigo, nombre, edad, dni, colorCinturon, partidasGanadas, partidasEmpatadas, partidasPerdidas
        @codigo = codigo
        @nombre = nombre
        @edad = edad
        @dni = dni
        @colorCinturon = colorCinturon
        @partidasGanadas = partidasGanadas
        @partidasEmpatadas = partidasEmpatadas
        @partidasPerdidas = partidasPerdidas
        @@todos.push self 
    end
    
    def self.obtener_por_dni dni 
        @@todos.find {|i| i.dni == dni} 
    end


end 

