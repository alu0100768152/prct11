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
        expect(lista.to_s()).to eq("\nDESAYUNO (15%)\n\n- Leche desnatada, 1 vaso, 200 ml\n- Cacao instantaneo, 1 c/sopera, 10 g\n- Cereales de desayuno en hojuelas, 1 bol peque~no, 40 g\n- Almendras laminadas (10 unidades), 2 c/soperas, 10 g\n\nV.C.T. |%    288,0 kcal | 17% - 21% - 62% \n\n")
      end
      
      
    end
  end