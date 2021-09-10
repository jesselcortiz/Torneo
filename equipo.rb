require_relative 'participante'
class Equipo 
    @@todos = Array.new 
    attr_accessor :codigo, :nombre, :puntajeTotal, :participantes
    def initialize codigo, nombre 
        @codigo = codigo
        @nombre = nombre
        @puntajeTotal = 0
        @participantes = Array.new  
        @@todos.push self
    end

    def agregar_participante participante 
        @participantes.push participante 
    end

    def self.obtener_equipos_puntaje 
        @@todos.each do |equipo| 
            puts equipo.nombre
            puts "miembros"
            equipo.participantes.each do |participante|
                puts participante.nombre, participante.puntaje
            end
        end
        puts "--------------------------------------------"
    end
        
end

