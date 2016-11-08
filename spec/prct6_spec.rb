require "spec_helper"


  describe Linked do
    lista = Linked.new()
    
    context "Prueba de las partes fundamentales de la clase Linked:" do
    
      it "-> El proyecto debe tener un numero de version" do
        expect(Prct6::VERSION).not_to be nil
      end
    
      it "-> Debe existir un objeto y estar inicializado." do
        expect(objeto).not_to be_nil
      end
      
    end
  end