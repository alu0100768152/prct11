require "spec_helper"


  describe MenuDSL do
    

    
    context "Prueba de las partes fundamentales de la clase Dieta:" do
    
      it "-> El proyecto debe tener un numero de version" do
        expect(Prct6::VERSION).not_to be nil
      end
      
      it "-> Almuerzo no nil" do
        expect(@almuerzo).not_to be_nil
      end
      
    end
    
  end