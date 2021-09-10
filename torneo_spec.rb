require_relative 'participante'
require_relative 'equipo'

RSpec.describe Participante do
    context 'inicializar clase participante' do
        before(:each) do
           @participante = Participante.new 1, "Jacinta", 28, "22.122.322-2", "verde", 3, 2, 1
        end
        it '#new' do        
            expect(@participante).to be_an_instance_of(Participante)
        end
        it 'new#nombre' do
            expect(@participante.nombre).to eq('Jacinta')
        end

        it 'new#edad' do
            expect(@participante.edad).to eq(28)
        end

        it 'new#dni' do
            expect(@participante.dni).to eq('22.122.322-2')
        end

        it 'new#colorCinturon' do
            expect(@participante.colorCinturon).to eq('verde')
        end
    end
end

RSpec.describe Equipo do
    context 'inicializar clase equipo' do
        before(:each) do
            @equipo = Equipo.new 1, "Jacinta"
        end

        it '#new' do        
            expect(@equipo).to be_an_instance_of(Equipo)
        end

        it 'new#nombre' do
            expect(@equipo.nombre).to eq('Jacinta')
        end

    end
end

