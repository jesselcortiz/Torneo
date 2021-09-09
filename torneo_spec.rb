require_relative 'participante'
require_relative 'equipo'

RSpec.describe Participante do
    context 'inicializar clase participante' do
        before(:each) do
           @participante = Participante.new 5, "Jacinta", 28, "22.122.322-2", "verde", 3, 2, 1
        end
        it '#new' do        
            expect(@participante).to be_an_instance_of(Participante)
        end
        it 'new#nombre' do
            expect(@participante.nombre).to eq('Jacinta')
        end
    end
end