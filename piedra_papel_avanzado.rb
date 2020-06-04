class PiedraPapelTijeras

    def solucion ()
  
      puts "\t\tMenu "
      puts "-------------------------------------\n"
      puts "Turno jugador uno:\n"
      puts "Piedra\n"
      puts "Papel\n"
      puts "Tijeras\n"
      puts "Salir\n\n"
  
      print "jugador 1 ingrese una opcion\n"
      jugada1 = ''
      loop do
        jugada1 = gets.chomp
        if (jugada1.upcase != 'PIEDRA' && jugada1.upcase !='PAPEL' && jugada1.upcase != 'TIJERA' && jugada1.upcase != 'SALIR')
          puts "Argumento inválido: Debe ser piedra, papel o tijera."
        else
          break
        end
      end
  
      while jugada1.upcase != "SALIR"
  
        puts "\t\tMenu "
        puts "-------------------------------------"
        puts "Turno jugador dos:\n"
        puts "Piedra\n"
        puts "Papel\n"
        puts "Tijera\n"
        puts "Salir\n\n"
  
        print "jugador 2 ingrese una opcion\n"
        jugada2 = gets.chomp
  
        if jugada2.upcase == "SALIR"
          break
        elsif (jugada1.upcase == 'TIJERA') && (jugada2.upcase =="PIEDRA")
          puts "Piedra gana a tijera"
          puts "**Ganada Jugador 2**"
          break
        elsif (jugada1.upcase == 'PAPEL' ) && (jugada2.upcase == 'TIJERA' )
          puts "Tijera gana a papel"
          puts "**Ganada Jugador 2**"
          break
        elsif (jugada1.upcase == 'PIEDRA') && (jugada2.upcase == 'PAPEL' )
          puts "Papel gana a piedra"
          puts "**Ganada Jugador 2**"
          break
        elsif (jugada1.upcase == 'PIEDRA') && (jugada2.upcase == 'TIJERA' )
          puts "Piedra gana a tijeras"
          puts "**Ganada Jugador 1**"
          break
        elsif (jugada1.upcase == 'TIJERA') && (jugada2.upcase == 'PAPEL' )
          puts "Tijeras gana a papel"
          puts "**Ganada Jugador 1**"
          break
        elsif (jugada1.upcase == 'PAPEL') && (jugada2.upcase == 'PIEDRA')
          puts "Papel gana a piedra"
          puts "**Ganada Jugador 1**"
          break
        elsif (jugada1.upcase == 'PAPEL') && (jugada2.upcase == 'PAPEL')
          puts "**Empate**"
          break
        elsif (jugada1.upcase == 'TIJERA') && (jugada2.upcase == 'TIJERA')
          puts "**Empate**"
          break
        elsif (jugada1.upcase == 'PIEDRA') && (jugada2.upcase == 'PIEDRA')
          puts "**Empate**"
          break
        elsif  (jugada2.upcase != 'PIEDRA' || jugada2.upcase !='PAPEL' || jugada2.upcase != 'TIJERA')
          puts "Argumento inválido: Debe ser piedra, papel o tijera."
        end#if
      end#while
    end#method
  end #class
  
  obj = PiedraPapelTijeras.new
  obj.solucion()
  