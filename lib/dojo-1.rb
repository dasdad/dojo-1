def teste
	true
end

def tabuleiro
	[[2,1,1,1,1],[2,1,1,1,1],[2,1,1,1,1],[2,1,1,1,1],[2,1,1,1,1]]
end

def multiplica_coluna(tab, index)
	mult = 1
	tab.each do |linha|
		mult *= linha[index]
	end
	mult
end

def multiplica_linha(tab, index)
	mult = 1
	tab[index].each do |elemento|
		mult *= elemento
	end
	mult
end

def multiplica_diagonal(tab, i, j)
	mult = 1
	while i < tab.size && j < tab[0].size
		mult *= tab[i][j]
		i+=1
		j+=1
	end 

	return mult
end

def maior_produto( tabuleiro )
	maior = 0
	tabuleiro.each_with_index do | linha, index |
		produto = multiplica_coluna( tabuleiro, index )
		maior = produto if produto > maior
	end
	tabuleiro.each_with_index do | linha, index |
		produto = multiplica_linha( tabuleiro, index )
		maior = produto if produto > maior
	end
	diagonal = multiplica_diagonal(tabuleiro,0,0)
	
	maior = diagonal if diagonal > maior
	maior
end
