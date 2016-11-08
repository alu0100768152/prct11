require "spec_helper"


  describe Linked do
    
    a=["DESAYUNO", "15"]
    b=[["Leche desnatada, ","Cacao instantaneo, ","Cereales de desayuno en hojuelas, ","Almendras laminadas (10 unidades), "],["1 vaso, ","1 c/sopera, ", "1 bol peque~no, ", "2 c/soperas, "],["200 ml","10 g","40 g", "10 g"],"288,0",["17","21","62"] ]

    c=["MEDIA MANANA","10"]
    d=[["Cerezas, ", "Galletas bífidus con sésamo, "],["10-12 unidades medianas, ","4 unidades, "],["120 g","40 g"],"255,5", ["7", "24", "69"]]
    
    e=["ALMUERZO", "30-35"]
    f=[["Macarrones con salsa de tomate y queso parmesano, ","Escalope de ternera, ","Ensalada básica con zanahoria rallada, ","Mandarina, ","Pan de trigo integral, "],["1 1/2 cucharón, ","1 bistec mediano, ", "", "1 grande, ", "1 rodaja, "],["200 g","100 g","guarnición de 120 g", "180 g", "20 g"],"785.9",["19","34","47"] ]

    g=["MERIENDA","15"]
    h=[["Galletas de leche con chocolate y yogur, ","Flan de vainilla sin huevo, "],["4 unidades, ","1 unidad, "],["46 g","110 g"],"313,6",["10","30","60"]]
    
    i=["CENA","25-30"]
    j=[["Crema de bubango, ","Tortilla campesina con espinacas, ","Tomate en dados con atún, ","Piña natural o en su jugo picada, ","Pan de trigo integral, "],["2 cucharones, ","1 cuña grande, ", "5 a 6 c/soperas, ", "5 c/soperas, ","1 rodaja, "],["200 g","150 g","150 g", "120 g", "20 g"],"561,6",["19","40","41"]]
    
    lista = Linked.new()
    array1= [a,b]
    array2= [c,d]
    array3= [e,f]
    array4= [g,h]
    array5= [i,j]
    lista.add(array1)
    lista.add(array2)
    lista.add(array3)
    lista.add(array4)
    lista.add(array5)

    
    context "Prueba de las partes fundamentales de la clase Linked:" do
    
      it "-> El proyecto debe tener un numero de version" do
        expect(Prct6::VERSION).not_to be nil
      end
    
      it "-> Debe existir un objeto y estar inicializado." do
        expect(lista).not_to be_nil
      end
      
      it "-> El head de la lista no puede estar a nil si hay elementos en la lista " do
        expect(lista.head.value).not_to be_nil
      end
            
      it "-> En la posición[0][0] del vector tiene que estar DESAYUNO " do
        lista.head.value[0][0].should eq("DESAYUNO")
      end
      
      
      it "->Menús dietético" do
        expect(lista.to_s()).to eq("\nDESAYUNO (15%)\n\n- Leche desnatada, 1 vaso, 200 ml\n- Cacao instantaneo, 1 c/sopera, 10 g\n- Cereales de desayuno en hojuelas, 1 bol peque~no, 40 g\n- Almendras laminadas (10 unidades), 2 c/soperas, 10 g\n\nV.C.T. |%    288,0 kcal | 17% - 21% - 62% \n\n\nMEDIA MANANA (10%)\n\n- Cerezas, 10-12 unidades medianas, 120 g\n- Galletas bífidus con sésamo, 4 unidades, 40 g\n\nV.C.T. |%    255,5 kcal | 7% - 24% - 69% \n\n\nALMUERZO (30-35%)\n\n- Macarrones con salsa de tomate y queso parmesano, 1 1/2 cucharón, 200 g\n- Escalope de ternera, 1 bistec mediano, 100 g\n- Ensalada básica con zanahoria rallada, guarnición de 120 g\n- Mandarina, 1 grande, 180 g\n- Pan de trigo integral, 1 rodaja, 20 g\n\nV.C.T. |%    785.9 kcal | 19% - 34% - 47% \n\n\nMERIENDA (15%)\n\n- Galletas de leche con chocolate y yogur, 4 unidades, 46 g\n- Flan de vainilla sin huevo, 1 unidad, 110 g\n\nV.C.T. |%    313,6 kcal | 10% - 30% - 60% \n\n\nCENA (25-30%)\n\n- Crema de bubango, 2 cucharones, 200 g\n- Tortilla campesina con espinacas, 1 cuña grande, 150 g\n- Tomate en dados con atún, 5 a 6 c/soperas, 150 g\n- Piña natural o en su jugo picada, 5 c/soperas, 120 g\n- Pan de trigo integral, 1 rodaja, 20 g\n\nV.C.T. |%    561,6 kcal | 19% - 40% - 41% \n\n")
      end
      
    context "Pueba de los metodos secundarios de la clase Linked:" do  
      it "->Extrael primer elemento" do
        lista.ex_1er_elemento()
        expect(lista.to_s()).to eq("\nMEDIA MANANA (10%)\n\n- Cerezas, 10-12 unidades medianas, 120 g\n- Galletas bífidus con sésamo, 4 unidades, 40 g\n\nV.C.T. |%    255,5 kcal | 7% - 24% - 69% \n\n\nALMUERZO (30-35%)\n\n- Macarrones con salsa de tomate y queso parmesano, 1 1/2 cucharón, 200 g\n- Escalope de ternera, 1 bistec mediano, 100 g\n- Ensalada básica con zanahoria rallada, guarnición de 120 g\n- Mandarina, 1 grande, 180 g\n- Pan de trigo integral, 1 rodaja, 20 g\n\nV.C.T. |%    785.9 kcal | 19% - 34% - 47% \n\n\nMERIENDA (15%)\n\n- Galletas de leche con chocolate y yogur, 4 unidades, 46 g\n- Flan de vainilla sin huevo, 1 unidad, 110 g\n\nV.C.T. |%    313,6 kcal | 10% - 30% - 60% \n\n\nCENA (25-30%)\n\n- Crema de bubango, 2 cucharones, 200 g\n- Tortilla campesina con espinacas, 1 cuña grande, 150 g\n- Tomate en dados con atún, 5 a 6 c/soperas, 150 g\n- Piña natural o en su jugo picada, 5 c/soperas, 120 g\n- Pan de trigo integral, 1 rodaja, 20 g\n\nV.C.T. |%    561,6 kcal | 19% - 40% - 41% \n\n")
      end
      
      it "->Comprobar si esta vacío" do
        expect(lista.empty?).to eq(false)
      end
      
    end
      
    end
  end