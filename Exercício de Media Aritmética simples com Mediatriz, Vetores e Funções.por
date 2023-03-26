programa
{
	inclua biblioteca Util --> u

	inteiro matriz[4][4] = {{1, 2, 3, 4},
                                {5, 6, 7, 8},
                                {8, 9, 10, 11},
                                {11, 12, 13, 14}}
  
	inteiro numeros[6]
	inteiro totalNumerosCima = 0
	inteiro totalNumerosBaixo = 0
	inteiro posicao

	funcao sortearNumero()
	{
		para (posicao = 0; posicao <= 5; posicao = posicao + 1)
		{
			inteiro numero_aleatorio1 = u.sorteia(0, 3)
			inteiro numero_aleatorio2 = u.sorteia(0, 3)

			numeros[posicao] = matriz[numero_aleatorio1][numero_aleatorio2]
		}	
	}

	funcao multiplicar()
	{
		para (posicao = 0; posicao <= 5; posicao = posicao + 1)
		{
			inteiro peso = u.sorteia(0, 10)
	 	
	 		numeros[posicao] = numeros[posicao] * peso

	 		totalNumerosBaixo = totalNumerosBaixo + peso
	 	}
	}

	funcao soma()
	{
		para (posicao = 0; posicao <= 5; posicao = posicao + 1)
	 	{
	 		totalNumerosCima = totalNumerosCima + numeros[posicao]
	 	}
	}

	funcao media()
	{
		multiplicar()
		soma()

		escreva("Numeros de cima: ", totalNumerosCima, ". Numeros de baixo: ", totalNumerosBaixo, ". Divisão: ", totalNumerosCima / totalNumerosBaixo)

	}
	
	funcao inicio()
	{
		sortearNumero()
		media()
	}
}
