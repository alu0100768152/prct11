require "spec_helper"


  describe MenuDSL do
    
    before :each do 
      @almuerzo = MenuDSL.new("Dieta mediterranea") do
          title  "Almuerzo"
          ingest  :min => 30, :max => 35
          plato   :descripcion => "Macarrones con salsa de tomate y queso parmesano",
                  :porcion => "1 1/2 cucharón",
                  :gramos => 200
          plato   :descripcion => "Escalope de ternera",
                  :porcion => "1 bistec mediano",
                  :gramos => 100
          plato   :descripcion => "Ensalada básica con zanahoria rallada",
                  :porcion => "guarnición",
                  :gramos => 120
          plato   :descripcion => "Mandarina", :porcion => "1 grande", :gramos => 180
          plato   :descripcion => "Pan de trigo integral", :porcion => "1 rodaja", :gramos => 20
          porcent :vct => 785.9, :proteinas => 19, :grasas => 34, :hidratos => 47
      end
    end
    
    context "Prueba de las partes fundamentales de la clase Dieta:" do
    
      it "-> El proyecto debe tener un numero de version" do
        expect(Prct6::VERSION).not_to be nil
      end
      
      it "-> Almuerzo no nil" do
        expect(@almuerzo).not_to be_nil
      end
      
      it "-> El titulo ha de mostrar Almuerzo" do
        expect(@almuerzo.titulo).to eq("Almuerzo")
      end
      
      it "-> El método ingesta ha de funcionar correctamente " do
        expect(@almuerzo.ingesta).to eq([[30, 35]])
      end
      
      it "-> El método plato ha de funcionar correctamente" do
        expect(@almuerzo.platos).to eq([["Macarrones con salsa de tomate y queso parmesano","1 1/2 cucharón","200"],["Escalope de ternera","1 bistec mediano","100"],["Ensalada básica con zanahoria rallada","guarnición","120"],["Mandarina","1 grande","180"],["Pan de trigo integral","1 rodaja","20"]])
      end
      
      it "-> El método to_s ha de funcionar correctamente" do
        expect(@almuerzo.to_s).to eq("Dieta mediterranea\n==================\n\nAlmuerzo [30, 35]\n- Macarrones con salsa de tomate y queso parmesano, 1 1/2 cucharón, 200g\n- Escalope de ternera, 1 bistec mediano, 100g\n- Ensalada básica con zanahoria rallada, guarnición, 120g\n- Mandarina, 1 grande, 180g\n- Pan de trigo integral, 1 rodaja, 20g\nV.C.T. | %   785.9 kcal | 19% - 34% - 47%\n")
      end 
      
    end
    
  end