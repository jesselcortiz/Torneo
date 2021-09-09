require_relative 'participante'
class Equipo 
    attr_accessor :codigo, :nombre, :puntajeTotal, :participantes
    def initialize codigo, nombre
        @codigo = codigo
        @nombre = nombre
        @puntajeTotal = 0
        @participantes = Array.new  
    end

    def puntaje
        @puntaje = (partidasGanadas)*4 + (partidasEmpatadas)*3
    end

    def agregar_participante participante 
        @participantes.push participante 
    end
        
end