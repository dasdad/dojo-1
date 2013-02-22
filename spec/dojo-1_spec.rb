require 'spec_helper'

describe "dojo-1" do
	it "return true " do
		teste.should == true
	end

	it "valida tabuleiro" do
		tabuleiro.should == [
			[2,1,1,1,1],
			[2,1,1,1,1],
			[2,1,1,1,1],
			[2,1,1,1,1],
			[2,1,1,1,1]
		]
	end

	it "multiplica colunas" do
		multiplica_coluna(tabuleiro, 0).should == 32
	end

	it "maior multiplicador" do
	  maior_produto(tabuleiro).should == 32
	end

	it "maior multiplicador maroto" do
		tabuleiro = [[2,1,1,1,1],[2,1,1,1,1],[2,1,1,1,1],[2,1,1,1,1],[1,2,1,1,1]]
	  	maior_produto(tabuleiro).should == 16
	end

	it "maior multiplicador segunda coluna" do
		tabuleiro = [[1,2,1,1,1],[1,2,1,1,1],[1,2,1,1,1],[1,2,1,1,1],[1,2,1,1,1]]
		
	  	maior_produto(tabuleiro).should == 32
	end

	it "maior multiplicador linha" do
		tabuleiro = [[2,2,2,2,2],[1,1,1,1,1],[1,1,1,1,1],[1,1,1,1,1],[1,1,1,1,1]]
		maior_produto(tabuleiro).should == 32	  
	end

	it "maior multiplicador linha valor 3" do
		tabuleiro = [[3,2,2,2,2],
					 [1,1,1,1,1],
					 [1,1,1,1,1],
					 [1,1,1,1,1],
					 [1,1,1,1,1]]
		maior_produto(tabuleiro).should == 48	  
	end

	it "maior multiplicador diagonal" do
	 	tabuleiro = [[2,1,1,1,1],
					 [1,2,1,1,1],
					 [1,1,2,1,1],
					 [1,1,1,2,1],
					 [1,1,1,1,2]]
		maior_produto(tabuleiro).should == 32
	end


it "maior multiplicador diagonal" do
	 	tabuleiro = [[2,1,1,1,1],
					 [1,2,1,1,1],
					 [1,1,2,1,1],
					 [1,1,1,2,1],
					 [1,1,1,1,2]]
	 	 tabuleiro = tabuleiro.map(&:reverse)
	 	 maior_produto(tabuleiro).should == 32
	end

end