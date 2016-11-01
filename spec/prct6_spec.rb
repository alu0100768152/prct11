require "spec_helper"
require "./lib/prct6/Dieta"

  describe Dieta do
    
    @nombre = 'ALMUERZO'
    @porcent= '30-35'
    @comida = ["Macarrones con salsa de tomate y queso parmesano, ","Escalope de ternera, ","Ensalada básica con zanahoria rallada, ","Mandarina, ","Pan de trigo integral, "]
    @prop_aprox = ["1 1/2 cucharón, ","1 bistec mediano, ", "", "1 grande, ", "1 rodaja, "]
    @prop_exact = ["200 g","100 g","guarnición de 120 g", "180 g", "20 g"]
    objeto = Dieta.new(@nombre, @porcent)
    comida = Raciones.new(@comida,@prop_aprox,@prop_exact)
    
    context "Prueba de las partes fundamentales de la clase Dieta:" do
    
      it "-> El proyecto debe tener un numero de version" do

        expect(Prct6::VERSION).not_to be nil
      end
    
      it "-> Debe existir un objeto y estar inicializado." do
        expect(objeto).not_to be_nil
      end
      
      it "Nombre de la dieta" do
        expect(objeto.m_nombre()).to eq("ALMUERZO (30-35%)")
      end
      
      it "Raciones de comida" do
        expect(comida.comidayprop()).to eq("- Macarrones con salsa de tomate y queso parmesano, 1 1/2 cucharón, 200 g\n- Escalope de ternera, 1 bistec mediano, 100 g\n- Ensalada básica con zanahoria rallada, guarnición de 120 g\n- Mandarina, 1 grande, 180 g\n- Pan de trigo integral, 1 rodaja, 20 g\n")
      end
    end
  end