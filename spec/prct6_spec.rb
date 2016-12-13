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
  
  describe Linked do
    
    before :each do 
     
      @lista_L = Linked.new()
      
      @lista_M = Linked.new()
      
      desayuno_L = MenuDSL.new("Dieta mediterranea") do
  
        title  "Desayuno"
        ingest  :max => 15
        plato   :descripcion => "Leche desnatada",
                :porcion => " 1 vaso",
                :gramos => 200 
        plato   :descripcion => "Cacao instantaneo",
                :porcion => "1 c/sopera",
                :gramos => 10
        plato   :descripcion => "Medio bocadillo de jamón y queso",
                :porcion => "Mitad de barra",
                :gramos => 200
        plato   :descripcion => "Almendras laminadas", :porcion => "(10 unidades) 2 c/soperas", :gramos => 10
        porcent :vct => 288.0, :proteinas => 48, :grasas => 49, :hidratos => 34
      
      end  
      
      almuerzo_L = MenuDSL.new("Dieta mediterranea") do
  
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
      
      cena_L = MenuDSL.new("Dieta mediterranea") do
  
        title  "Cena"
        ingest  :min => 15, :max => 20
        plato   :descripcion => "Pizza 4 quesos",
                :porcion => "1 pizza",
                :gramos => 300
        plato   :descripcion => "Yogur de coco",
                :porcion => "1 vasito",
                :gramos => 125
        plato   :descripcion => "Mandarina", :porcion => "1 grande", :gramos => 180
        porcent :vct => 489.9, :proteinas => 15, :grasas => 29, :hidratos => 63
      
      end 
      
      desayuno_M = MenuDSL.new("Dieta mediterranea") do

        title  "Desayuno"
        ingest  :max => 15
        plato   :descripcion => "Leche desnatada",
                :porcion => "1 1/2 cucharón",
                :gramos => 200
        plato   :descripcion => "Cereales Integrales",
                :porcion => "Dos puñados",
                :gramos => 60
        plato   :descripcion => "Pan de trigo integral con mantequilla", :porcion => "1 rodaja", :gramos => 20
        porcent :vct => 354.9, :proteinas => 16, :grasas => 23, :hidratos => 30
      
      end  
      
      almuerzo_M = MenuDSL.new("Dieta mediterranea") do

        title  "Almuerzo"
        ingest  :min => 30, :max => 35
        plato   :descripcion => "Pescado en rodajas con mojo verde",
                :porcion => "3 rodajas",
                :gramos => 150
        plato   :descripcion => "Salteado de verduras",
                :porcion => "Medio plato",
                :gramos => 100
        plato   :descripcion => "Revuelto de champiñones y gambas",
                :porcion => "Un plato pequeño",
                :gramos => 150
        plato   :descripcion => "Manzana", :porcion => "1 grande", :gramos => 180
        porcent :vct => 455.9, :proteinas => 12, :grasas => 28, :hidratos => 65
      
      end 
      
      cena_M = MenuDSL.new("Dieta mediterranea") do
  
        title  "Cena"
        ingest  :min => 15, :max => 20
        plato   :descripcion => "Sandwich tropical",
                :porcion => "1 sandwich",
                :gramos => 250
        plato   :descripcion => "Yogur de fresa",
                :porcion => "1 vasito",
                :gramos => 125
        plato   :descripcion => "Pera", :porcion => "1 grande", :gramos => 180
        porcent :vct => 420.4, :proteinas => 16, :grasas => 32, :hidratos => 52
      
      end
      
      @lista_L.add(desayuno_L)
      @lista_L.add(almuerzo_L)
      @lista_L.add(cena_L)
      
      @lista_M.add(desayuno_M)
      @lista_M.add(almuerzo_M)
      @lista_M.add(cena_M)
    
    end
  
    it "-> La lista no está vacia" do
      expect(Linked.new()).not_to be nil
    end
    
    it "-> Debe existir un objeto (lista_L) y estar inicializado." do
      expect(@lista_L).not_to be_nil
    end
    
    it "-> Debe existir un objeto (lista_M) y estar inicializado." do
      expect(@lista_M).not_to be_nil
    end
    
    it "->Comprobar si esta vacío" do
      expect(@lista_L.empty?).to eq(false)
    end
    
    it "-> El head de la lista_L no puede estar a nil si hay elementos en la lista " do
      expect(@lista_L.head.value).not_to be_nil
    end
    
    it "-> Dieta Lunes" do
        expect(@lista_L.to_s).to eq("Dieta mediterranea\n==================\n\nDesayuno [15]\n- Leche desnatada,  1 vaso, 200g\n- Cacao instantaneo, 1 c/sopera, 10g\n- Medio bocadillo de jamón y queso, Mitad de barra, 200g\n- Almendras laminadas, (10 unidades) 2 c/soperas, 10g\nV.C.T. | %   288.0 kcal | 48% - 49% - 34%\nDieta mediterranea\n==================\n\nAlmuerzo [30, 35]\n- Macarrones con salsa de tomate y queso parmesano, 1 1/2 cucharón, 200g\n- Escalope de ternera, 1 bistec mediano, 100g\n- Ensalada básica con zanahoria rallada, guarnición, 120g\n- Mandarina, 1 grande, 180g\n- Pan de trigo integral, 1 rodaja, 20g\nV.C.T. | %   785.9 kcal | 19% - 34% - 47%\nDieta mediterranea\n==================\n\nCena [15, 20]\n- Pizza 4 quesos, 1 pizza, 300g\n- Yogur de coco, 1 vasito, 125g\n- Mandarina, 1 grande, 180g\nV.C.T. | %   489.9 kcal | 15% - 29% - 63%\n")
    end 
    
    it "-> El head de la lista_M no puede estar a nil si hay elementos en la lista " do
      expect(@lista_M.head.value).not_to be_nil
    end
    
    it "-> Dieta Martes" do
        expect(@lista_M.to_s).to eq("Dieta mediterranea\n==================\n\nDesayuno [15]\n- Leche desnatada, 1 1/2 cucharón, 200g\n- Cereales Integrales, Dos puñados, 60g\n- Pan de trigo integral con mantequilla, 1 rodaja, 20g\nV.C.T. | %   354.9 kcal | 16% - 23% - 30%\nDieta mediterranea\n==================\n\nAlmuerzo [30, 35]\n- Pescado en rodajas con mojo verde, 3 rodajas, 150g\n- Salteado de verduras, Medio plato, 100g\n- Revuelto de champiñones y gambas, Un plato pequeño, 150g\n- Manzana, 1 grande, 180g\nV.C.T. | %   455.9 kcal | 12% - 28% - 65%\nDieta mediterranea\n==================\n\nCena [15, 20]\n- Sandwich tropical, 1 sandwich, 250g\n- Yogur de fresa, 1 vasito, 125g\n- Pera, 1 grande, 180g\nV.C.T. | %   420.4 kcal | 16% - 32% - 52%\n")
    end 
    
    it "-> Debe existir un objeto (lista_WEEK) y estar inicializado." do
      expect(@lista_WEEK).not_to be_nil
    end
  end
  