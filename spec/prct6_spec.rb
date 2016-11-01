require "spec_helper"
require "./lib/prct6/Dieta"

  describe Dieta do
    
    @nombre = 'ALMUERZO'
    @porcent= '30-35'
    objeto = Dieta.new(@nombre, @porcent)
    
    context "Prueba de las partes fundamentales de la clase Dieta:" do
    
      it "-> El proyecto debe tener un numero de version" do
        expect(Prac6::VERSION).not_to be nil
      end
    
      it "-> Debe existir un objeto y estar inicializado." do
        expect(objeto).not_to be_nil
      end
      
      it "nombre de la dieta" do
        expect(objeto.m_nombre()).to eq("ALMUERZO (30-35%)")
      end
    end
  end