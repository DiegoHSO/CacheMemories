#
#	Algoritmo que computa um vetor contendo os elementos comuns a 2 vetores
#
#	Germano Mergel
#	Bruno Campos
#	14/10/2004
#

        .data                 
array:  .word   0x12 0xff 0x33 0x14 0x878 0x31  0x62 0x10 0x5 0x16
array2: .word	0x12 0x33 0xff 0x268
array3:	.word	0x00 0x00 0x00 0x00                               
                                
size:   .word   10              
size2:	.word	4          
        
        .text                   
        .globl  main            
main:
        nop
        la      $t0,array       
        la      $t1,size
	la      $t2,array2	
	lw	$t1,0($t1)
	la 	$t6,array3
	

loop:   blez    $t1,end        
        lw      $t4,0($t0)
	la	$t3,size2 
	lw	$t3,0($t3)
	la      $t2,array2   

loop2:	blez	$t3,sai
	lw	$t5,0($t2)
	beq	$t4,$t5,acres

        addiu   $t2,$t2,4       
        addiu   $t3,$t3,-1   
        j       loop2            

sai:	addiu   $t0,$t0,4
	addiu   $t1,$t1,-1
	j	loop

acres:	sw	$t5,0($t6)
	addiu   $t0,$t0,4
	addiu   $t1,$t1,-1
	addiu   $t6,$t6,4
	j	loop	
        
        # now, return from main
end:    nop       
