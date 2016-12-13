require "spec_helper"


  describe MenuDSL do
    
    before :each do 
      @almuerzo = MenuDSL.new("Ejemplo") do
          title  "Almuerzo"
          ingest  :min => 30, :max => 35
      end
    end
    
    context "Prueba de las partes fundamentales de la clase Dieta:" do
    
      it "-> El proyecto debe tener un numero de version" do
        expect(Prct6::VERSION).not_to be nil
      end
      
      it "-> Almuerzo no nil" do
        expect(@almuerzo).not_to be_nil
      end
      
      it "-> Dieta Almuerzo" do
        expect(@almuerzo.titulo).to eq("Almuerzo")
      end
      
      it "-> Dieta Almuerzo" do
        expect(@almuerzo.ingesta).to eq([[30, 35]])
      end
      
      it "-> Dieta Almuerzo" do
        expect(@almuerzo.platos).to eq([["Macarrones con salsa de tomate y queso parmesano","1 1/2 cucharón","200"],["Escalope de ternera","1 bistec mediano","100"],["Ensalada básica con zanahoria rallada","guarnición","120"],["Mandarina","1 grande","180"],["Pan de trigo integral","1 rodaja","20"]])
      end
      
    end
    
  end