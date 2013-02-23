def multiplica_coluna(tab, index)
	identifica_maior_multiplicador_com_cinco_numeros( tab.map{|a| a[index] } )
end

def multiplica_linha(tab, index)
	identifica_maior_multiplicador_com_cinco_numeros( tab[index] )
end

def multiplica_diagonal(tab)
	
	posicoes_para_diagonais = (0..(tab.size-5)).to_a
	possibilidades = []
	posicoes_para_diagonais.each do |inicio_x|
		possibilidade = []
		posicoes_para_diagonais.each do |inicio_y|
			
			i_x =inicio_x
			i_y =inicio_y
			while(i_x <= tab.size-1 && i_y <= tab.size-1)
				possibilidade << tab[i_x][i_y]
				i_x +=1
				i_y +=1
			end

		end
		possibilidades <<possibilidade
		
	end
	possibilidades.map{ |p| identifica_maior_multiplicador_com_cinco_numeros( p ) }.max
end

def maior_produto( tabuleiro )
	return 0 if tabuleiro.size < 5 || (tabuleiro.first||[]).size < 5
	return 0 unless tabuleiro.size == tabuleiro.first.size

	maior = [
		(0..tabuleiro.size-1).to_a.map{|a| multiplica_coluna( tabuleiro, a ) }.max,
		(0..tabuleiro.size-1).to_a.map{|a| produto = multiplica_linha( tabuleiro, a ) }.max,
		multiplica_diagonal(tabuleiro),
		multiplica_diagonal(tabuleiro.map(&:reverse))
	].max

	maior
end

def identifica_maior_multiplicador_com_cinco_numeros( array )
	possibilidades = (0..array.size).to_a.select{|inicio| inicio+5 <= array.size}.map do | inicio |
		array[inicio..(inicio+4)].inject(1) {|product, n| product * n }
	end

	possibilidades.max
end