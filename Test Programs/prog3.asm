
        .text   
        .globl	main            
        
main:		nop
		la		$t0,L1		# Carrega endereço da primeira linha em $t0 - PSEUDO-INSTRUÇÃO
		lw		$t2,0($t0)	# Lê valor da coluna para $t0
		li		$t3, 10		# Carrega o número de linhas e colunas em $t3
		addu		$t4, $zero, $zero # Inicializa o registrador $t4 em 0
		addu		$t5, $zero, $zero # Inicializa o registrador $t5 em 0		
		addu		$t6, $zero, $zero # Inicializa o registrador $t6 em 0
		addiu		$t4, $t4, 1 # Soma em 1 o contador da linha
		j		coluna
		
linha: 		beq		$t4, $t3, fim # Caso tenha operado em todas as linhas, fim do programa
		addiu		$t4, $t4, 1 # Soma em 1 o contador da linha 
		addu		$t5, $zero, $zero # Reinicializa o registrador $t5 em 0	
		
coluna:		beq		$t5, $t3, linha # Caso tenha terminado de somar os conteúdos da linha, vai para a próxima
		addu		$t6, $t2, $t6 # Soma o conteúdo de $t6 com o conteúdo na posição da matriz alocada em $t2
		addiu		$t5, $t5, 1 # Soma em 1 o contador de colunas
		sw		$t6, 0($t0) # Armazena na memória o conteúdo somado
		addiu		$t0, $t0, 4 # Incrementa o ponteiro da matriz para a próxima coluna
		lw 		$t2,0($t0) # Carrega o conteúdo da posição da matriz em $t2
		j coluna # Repete o laço

fim:		nop
		nop		
		
		
		.data
L1:		.word	1 2 3 4 5 6 7 8 9 10
L2:		.word	11 12 13 14 15 16 17 18 19 20
L3:		.word	21 22 23 24 25 26 27 28 29 30
L4:		.word	31 32 33 34 35 36 37 38 39 40
L5:		.word	41 42 43 44 45 46 47 48 49 50
L6:		.word	51 52 53 54 55 56 57 58 59 60
L7:		.word	61 62 63 64 65 66 67 68 69 70
L8:		.word	71 72 73 74 75 76 77 78 79 80
L9:		.word	81 82 83 84 85 86 87 88 89 90
L10: 		.word	91 92 93 94 95 96 97 98 99 100