require "spec_helper"


  describe Linked do
    
    a=["DESAYUNO", "15"]
    b=[["Leche desnatada, ","Cacao instantaneo, ","Cereales de desayuno en hojuelas, ","Almendras laminadas (10 unidades), "],["1 vaso, ","1 c/sopera, ", "1 bol peque~no, ", "2 c/soperas, "],["200 ml","10 g","40 g", "10 g"],"288,0",["17","21","62"] ]

    lista = Linked.new()
    array1= [a,b]
    lista.add(array1)

    
    context "Prueba de las partes fundamentales de la clase Linked:" do
    
      it "-> El proyecto debe tener un numero de version" do
        expect(Prct6::VERSION).not_to be nil
      end
    
      it "-> Debe existir un objeto y estar inicializado." do
        expect(lista).not_to be_nil
      end
            
      it "-> En la posición[0][0] del vector tiene que estar DESAYUNO " do
        lista.head.value[0][0].should eq("DESAYUNO")
      end
      
      it "Menú dietético DESAYUNO" do
        expect(lista.to_s()).to eq("\nDESAYUNO (15%)\n\n- Leche desnatada, 1 vaso, 200 ml\n- Cacao instantaneo, 1 c/sopera, 10 g\n- Cereales de desayuno en hojuelas, 1 bol peque~no, 40 g\n- Almendras laminadas (10 unidades), 2 c/soperas, 10 g\n\nV.C.T. |%    288,0 kcal | 17% - 21% - 62% \n\n\nALMUERZO (30-35%)\n\n- Macarrones con salsa de tomate y queso parmesano, 1 1/2 cucharón, 200 g\n- Escalope de ternera, 1 bistec mediano, 100 g\n- Ensalada básica con zanahoria rallada, guarnición de 120 g\n- Mandarina, 1 grande, 180 g\n- Pan de trigo integral, 1 rodaja, 20 g\n\nV.C.T. |%    785.9 kcal | 19% - 34% - 47% \n\n")
      end
      
      
    end
  end