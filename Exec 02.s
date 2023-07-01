.data

.text
.globl main

main:
	
    #Ler quatro valores

    li $v0, 5 # Entrada de dados do usuário
    syscall
    move $t0, $v0
      
    li $v0, 5 # Entrada de dados do usuário
    syscall
    move $t1, $v0



    # Verificar qual o maior valor entre os 4
    
    slt $s0, $t0, $t1 # if($t0 < $t1){ $s0 = 1 } else { $s0 = 0}
    beq $s0, $zero, if1
    
    li $t0, 1
    syscall
    
if1:
   # $t1 é maior neste caso
   add $t4, $zero, $t1 # maior = $t1
   
   li $t1, 1 # imprime o $t1
   syscall
   
   j end_if
   
end_if:
   
   
    
    
	
	
    
    
    
    