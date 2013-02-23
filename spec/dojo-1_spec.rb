require 'spec_helper'

describe "dojo-1" do
	describe "tabuleiro de 5x5" do 
		describe "um tabuleiro pode ter a maior multiplicacao nas colunas" do
			describe "um tabuleiro com a primeira coluna sendo 2 em todas as posicoes" do
				before(:each) do
					@tabuleiro = [
						[2,1,1,1,1],
						[2,1,1,1,1],
						[2,1,1,1,1],
						[2,1,1,1,1],
						[2,1,1,1,1]
					]  
				end
				
				it "multiplica_coluna com index 0" do
					multiplica_coluna(@tabuleiro, 0).should == 32
				end
				it "multiplica_coluna com index 1" do
					multiplica_coluna(@tabuleiro, 1).should == 1
				end

				it "maior multiplicador" do
					maior_produto(@tabuleiro).should == 32
				end
			end
			
			describe "um tabuleiro com a primeira coluna sendo 2 em todas as posicoes, menos na ultima" do
				before(:each) do
					@tabuleiro = [
						[2,1,1,1,1],
						[2,1,1,1,1],
						[2,1,1,1,1],
						[2,1,1,1,1],
						[1,2,1,1,1]
					]
				end
				
				it "multiplica_coluna com index 0" do
					multiplica_coluna(@tabuleiro, 0).should == 16
				end

				it "multiplica_coluna com index 1" do
					multiplica_coluna(@tabuleiro, 1).should == 2
				end

				it "maior multiplicador" do
					maior_produto(@tabuleiro).should == 16
				end

			end		
		end

		describe "um tabuleiro com a segunda coluna sendo 2 em todas as posicoes, menos na ultima" do
			before(:each) do
				@tabuleiro = [
					[1,2,1,1,1],
					[1,2,1,1,1],
					[1,2,1,1,1],
					[1,2,1,1,1],
					[2,1,1,1,1]
				]
			end

			it "multiplica_coluna com index 0" do
				multiplica_coluna(@tabuleiro, 0).should == 2
			end
			it "multiplica_coluna com index 1" do
				multiplica_coluna(@tabuleiro, 1).should == 16
			end
			it "maior multiplicador" do
				maior_produto(@tabuleiro).should == 16
			end

		end		


		describe "um tabuleiro com a primeira linha sendo 2 em todas as posicoes, menos na ultima" do
			before(:each) do
				@tabuleiro = [
					[2,2,2,2,1],
					[1,1,1,1,1],
					[1,1,1,1,1],
					[1,1,1,1,1],
					[1,1,1,1,1]
				]
			end

			it "multiplica_linha com index 0" do
				multiplica_linha(@tabuleiro, 0).should == 16
			end

			it "multiplica_linha com index 1" do
				multiplica_linha(@tabuleiro, 1).should == 1
			end

			it "maior multiplicador linha" do
				maior_produto(@tabuleiro).should == 16
			end
		end

		describe "um tabuleiro com a primeira maior multiplicacao sendo nas diagoanis" do
			it "maior multiplicador diagonal" do
				tabuleiro = [
					[2,1,1,1,1],
					[1,2,1,1,1],
					[1,1,2,1,1],
					[1,1,1,2,1],
					[1,1,1,1,2]
				]
				maior_produto(tabuleiro).should == 32
			end


			it "maior multiplicador diagonal " do
				tabuleiro = [
					[1,1,1,1,2],
					[1,1,1,2,1],
					[1,1,2,1,1],
					[1,2,1,1,1],
					[2,1,1,1,1]
				]

				maior_produto(tabuleiro).should == 32
			end
		end
	end

	describe "tabuleiro maior do que 5x5" do 
		describe "um tabuleiro pode ter a maior multiplicacao nas colunas" do
			describe "um tabuleiro com a primeira coluna sendo 2 em todas as posicoes" do
				before(:each) do
					@tabuleiro = [
						[2,1,1,1,1,1],
						[2,1,1,1,1,1],
						[2,1,1,1,1,1],
						[2,1,1,1,1,1],
						[2,1,1,1,1,1],
						[2,1,1,1,1,1]
					]  
				end
				
				it "multiplica_coluna com index 0" do
					multiplica_coluna(@tabuleiro, 0).should == 32
				end
				it "multiplica_coluna com index 1" do
					multiplica_coluna(@tabuleiro, 1).should == 1
				end

				it "maior multiplicador" do
					maior_produto(@tabuleiro).should == 32
				end
			end
			
			describe "um tabuleiro com a primeira coluna sendo 2 em todas as posicoes, menos na ultima" do
				before(:each) do
					@tabuleiro = [
						[2,1,1,1,1,1],
						[2,1,1,1,1,1],
						[2,1,1,1,1,1],
						[2,1,1,1,1,1],
						[2,1,1,1,1,1],
						[1,2,1,1,1,1]
					]
				end
				
				it "multiplica_coluna com index 0" do
					multiplica_coluna(@tabuleiro, 0).should == 32
				end

				it "multiplica_coluna com index 1" do
					multiplica_coluna(@tabuleiro, 1).should == 2
				end

				it "maior multiplicador" do
					maior_produto(@tabuleiro).should == 32
				end

			end		
		end

		describe "um tabuleiro com a segunda coluna sendo 2 em todas as posicoes, menos na ultima" do
			before(:each) do
				@tabuleiro = [
					[1,2,1,1,1,1],
					[1,2,1,1,1,1],
					[1,2,1,1,1,1],
					[1,2,1,1,1,1],
					[1,2,1,1,1,1],
					[2,1,1,1,1,1]
				]
			end

			it "multiplica_coluna com index 0" do
				multiplica_coluna(@tabuleiro, 0).should == 2
			end
			it "multiplica_coluna com index 1" do
				multiplica_coluna(@tabuleiro, 1).should == 32
			end
			it "maior multiplicador" do
				maior_produto(@tabuleiro).should == 32
			end

		end		


		describe "um tabuleiro com a primeira linha sendo 2 em todas as posicoes, menos na ultima" do
			before(:each) do
				@tabuleiro = [
					[2,2,2,2,2,1],
					[1,1,1,1,1,1],
					[1,1,1,1,1,1],
					[1,1,1,1,1,1],
					[1,1,1,1,1,1],
					[1,1,1,1,1,1]
				]
			end

			it "multiplica_linha com index 0" do
				multiplica_linha(@tabuleiro, 0).should == 32
			end

			it "multiplica_linha com index 1" do
				multiplica_linha(@tabuleiro, 1).should == 1
			end

			it "maior multiplicador linha" do
				maior_produto(@tabuleiro).should == 32
			end
		end

		describe "um tabuleiro com a primeira maior multiplicacao sendo nas diagoanis" do
			it "maior multiplicador diagonal" do
				tabuleiro = [
					[2,1,1,1,1,1],
					[1,2,1,1,1,1],
					[1,1,2,1,1,1],
					[1,1,1,2,1,1],
					[1,1,1,1,2,1],
					[1,1,1,1,1,2]
				]
				maior_produto(tabuleiro).should == 32
			end


			it "maior multiplicador diagonal " do
				tabuleiro = [
					[1, 1, 1, 1, 1, 2],
					[1, 1, 1, 1, 2, 1], 
					[1, 1, 1, 2, 1, 1], 
					[1, 1, 2, 1, 1, 1], 
					[1, 2, 1, 1, 1, 1], 
					[2, 1, 1, 1, 1, 1]
				]

				maior_produto(tabuleiro).should == 32
			end

			it "maior multiplicador diagonal " do
				tabuleiro = [
					[1, 1, 1, 1, 1, 1],
					[1, 1, 1, 1, 1, 2], 
					[1, 1, 1, 1, 2, 1], 
					[1, 1, 1, 2, 1, 1], 
					[1, 1, 2, 1, 1, 1], 
					[1, 3, 1, 1, 1, 1]
				]

				maior_produto(tabuleiro).should == 48
			end

			it "maior multiplicador diagonal " do
				tabuleiro = [
					[1, 1, 1, 1, 2, 1],
					[1, 1, 1, 2, 1, 1], 
					[1, 1, 2, 1, 1, 1], 
					[1, 3, 1, 1, 1, 1], 
					[3, 1, 1, 1, 1, 1], 
					[1, 1, 1, 1, 1, 1]
				]

				maior_produto(tabuleiro).should == 72
			end
		end
	end

	it "identifica_maior_multiplicador_com_cinco_numeros" do
		identifica_maior_multiplicador_com_cinco_numeros([1,2,3,4,5]).should == 120
	end

	it "identifica_maior_multiplicador_com_cinco_numeros" do
		identifica_maior_multiplicador_com_cinco_numeros([1,2,3,4,5,6]).should == 720
	end

	it "identifica_maior_multiplicador_com_cinco_numeros" do
		identifica_maior_multiplicador_com_cinco_numeros([1,2,3,4,5,6,7]).should == 2520
	end

	it "identifica_maior_multiplicador_com_cinco_numeros" do
		identifica_maior_multiplicador_com_cinco_numeros([2,1,3,2,2,2,2,1,1]).should == 48
	end

end