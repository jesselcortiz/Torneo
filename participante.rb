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

    def puntaje
        (@partidasGanadas)*4 + (@partidasEmpatadas)*3
    end

    def self.modificar_puntaje dni, victorias
        participante = self.obtener_por_dni dni
        participante.partidasGanadas = victorias       
    end    

    
    def self.obtener_por_dni dni 
        encontrado = @@todos.find {|i| i.dni == dni}  
        if encontrado 
            encontrado        
        else 
            "Participante no encontrado"
        end
    end

    def self.obtener_campeon 
        max_puntaje = 0
        campeon = nil 
        @@todos.each do |participante|
            if participante.puntaje > max_puntaje 
                campeon = participante
                max_puntaje = participante.puntaje
            end 
        end
        campeon 
    end

    def self.tabla_posiciones
       tabla = @@todos.sort_by {|i| i.puntaje} 
       tabla.reverse
    end

    

end 

