# Un método que simplemente imprima la representación de un tablero de ajedrez. 
# Representa las fichas por su nombre y los colores con una letra por 
# ejemplo: (Torre-B, Caballo-B, Alfil-B, Reina-B, Rey-B y Peón-B).

def chess()
  tablero = Array.new(8) {Array.new(8)}
  color = ["B", "N"]
  first_pieces = ["Torre", "Caballo", "Alfil", "Rey", "Reina", "Alfil", "Caballo", "Torre"]

  for table in 0..7
  	count = 0
    for index in 0..7
    	if table == 0 
	      tablero[table][index] = "#{first_pieces[count]}-B"
	      count += 1
	    elsif table == 1
        tablero[table][index] = "Peon" + "-B    "
	      count += 1
      elsif table == 6
      	tablero[table][index] = "Peon" + "-N    "
	      count += 1
	    elsif table == 7
        tablero[table][index] = "#{first_pieces[count]}-N"
	      count += 1
	    else
        tablero[table][index] = "          "
	    end
    end
  end
  
  for row in 0..7
    for col in 0..7
      value = tablero[row][col]
      printf "%-15s", "#{value}|"
      if col == 7
        print "\n"
      end
    end
  end

end

chess()


#Tabla de datos
table = [["Nombre", "Edad", "Género", "Grupo", "Calificaciones"],
				 ["Rodrigo García", 13, "Masculino", "Primero", [9, 9, 7, 6, 8]],
				 ["Fernanda Gonzales", 12, "Femenino", "Tercero", [6, 9, 8, 6, 8]],
				 ["Luis Perez", 13, "Masculino", "Primero", [8, 7, 7, 9, 8]],
				 ["Ana Espinoza", 14, "Femenino", "Segundo", [9, 9, 6, 8, 8]],
				 ["Pablo Moran", 11, "Masculino", "Segundo", [7, 8 , 9, 9, 8]]]

p table[0][4]  == "Calificaciones"
p table[2][1]  == 12
p table[2][2]  == "Femenino"
p table[3][3]  == "Primero"
p table[3][4]  == [8, 7, 7, 9, 8]
p table[4][4][2]  == 6