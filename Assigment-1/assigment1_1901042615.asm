	# WHERE t REGISTERS USED FOR
	#t0 => 100 -> (first use for holding 100 for control bigger than 100) : i (second use ; control input for while1)
	#t1 => j (control input for while2)
	#t2 => array[i]
	#t3 => array[j]
	#t4 => temporary string in while2
	#t5 => array[i] + array[j]
	#t6 => remainder of dividion
	#t7 => temporary array for find value functions
	#t8 => temporary array for find value functions
	#t9 => control input for banches in the find value functions
	
	#WHERE s REGISTERS USED FOR
	#s0 => n
	#s1 => k
	#s2 => create space for sp -> (first use) : 100 ->(second use for holding 100 for control bigger than 100)
	#s3 = 47 (holding 47)
	#s4 => string
	#s5 => temporary string for while1
	#s6 => temporary string for assign j
	#s7 => counter value	
	
	
	.data
again_n_neg:
	.asciiz "n is negative pls enter again:\n"
again_k_neg:
	.asciiz "k is negative pls enter again:\n"
again_n_big:
	.asciiz "n is bigger than 100 pls enter again:\n"
again_k_big:
	.asciiz "k is bigger than 100 pls enter again:\n"
again_element_neg:
	.asciiz "One of the elements is negative pls enter again:\n"
again_element_big:
	.asciiz "One of the elements is bigger than 100 pls enter again:\n"

buffer: 
	.space 10
	.text
	.globl divisibleSumPairs
divisibleSumPairs:
	#take string input n and k
    li $v0,8 
    la $a0, buffer
    li $a1, 10 
    syscall
    
    #push input to stack pointer
    la $sp,($a0)
    
    #get n with take first byte (sp+0)
	lbu $s0,0($sp)
	
	#control of if n is negative
	beq $s0,45,error_n_neg
	
	li $t0,100
		
	#conversing byte n to integer n 
	addi $s0,$s0, -48   #get n
	
	#find value of n with check all digits of number
	la $t7,1($sp)
	j find_integer_n
	go_back_n:
	
	#control of if n is bigger than 100
	slt  $t3,$t0,$s0
	beq $t3,1,error_n_big
	
	#go third point of stack pointer (sp+2)
	#when we do this, thirs byte became first point
	addi $sp,$sp,1
	la $t7,1($sp)
	
	#get k to s1	
	lbu $s1,0($sp)
	
	#control of if k is negative
	beq $s1,45,error_k_neg
		
	#conversing byte k to integer k
	addi $s1,$s1, -48
	
	#temporary string for find value functions
	la $t7,1($sp)
	
	#find value of k with check all digits of number
	j find_integer_k
	go_back_k:
	
	#control of if k is bigger than 100
	slt $t3,$t0,$s1
	beq $t3,1,error_k_big
	
	#make space for stack pointer when we take integer array as a string
	#space is (n*2)+2 because spaces are included
	add $s2,$s0,$s0
	addi $s2,$s2,100
	
	#take string which is integer array
	take_string:
	li $v0,8 
   	move $a1,$s2
    syscall	
   
    #push input to s4
    la $s4,($a0) 
	li $s7, 0
	
	# i = 0
	li $t0,0
	
	# holding 47 for check ascii code of number , 100 for check number
	li $s3,47
	li $s2,100
	
	#i<n
	while1:
		#check exit
		beq $t0,$s0,exit1 		
		
		# j = i + 1
		addi $t1,$t0,1
		
		#temporary strings
		la $s5,0($s4)
		la $s6,0($s5)
		
		#array[i] = first element of string in $s6 (ascii value)
		lbu $t2,0($s6)	
		
		#check if array[i] is negative
		beq $t2,45,error_element_negative
			
		#converting array[i] to integer from ascii value 
		addi $t2,$t2, -48
		
		#temporary string
		la $t7,1($s6)
		
		#find value of array[i] with check all digits of number
		j find_integer_array_i
		go_back_array_i:
		
		#check if array[i] is bigger than 100
		slt  $t4,$s2,$t2
		beq $t4,1,error_element_bigger_than_100
	
		#j<n
		while2:
			#check exit
			beq $t1,$s0,exit2
			
			#temporary string
			la $t4,($s6)
			
			#array[j] = first digit of string in $s4 (ascii value)
			lbu $t3,2($t4)
			
			#converting array[j] to integer from ascii value
			addi $t3,$t3, -48
			
			#temporary string
			la $t7,3($t4)
			
			#find value of array[j] with check all digits of number
			j find_integer_array_j
			go_back_array_j:
			
			#array[i] + array[j]
			add $t5,$t2,$t3
			
			#(array[i] + array[j]) / k
			div $t5,$s1
			
			#remainder
			mfhi $t6
			
			#check remainder is zero or not, if it is 0 go _counter function 
			beq $t6,$zero,_counter
			
			#label for come back from _counter function
			label_while2:
			
			#go 2 in string to use is like a loop
			la $s6,2($t4)
			
			# j = j + 1
			addi $t1,$t1,1
			j while2
		#exit of while2
		exit2:
		
		#go 2 in string to use is like a loop
		la $s4,2($s5)
		
		# i = i + 1
		addi $t0,$t0,1
		j while1
	#exit of while1
	exit1:		
	
	#printing result to terminal
	li $v0,1
	move $a0,$s7
	syscall
	
	#end of the program
	li $v0,10
	syscall
	
#function for counter of result
_counter:
	#increase counter
	addi $s7,$s7,1
    j label_while2
  
#function for find value of n with check all digits of numberfind 
find_integer_n:
	#temporary string because functions work like loop
	la $t8,0($t7)
	
	#go 1 digit from string which include n and k
	la $sp,1($sp)
	
	#first digit of temporary string
	lbu $t9,0($t8)
	
	#if digit is 'space' go back because number's digits is finished
	beq $t9,32,go_back_n
	
	#conterting digit value to integer from ascii value
	addi $t9,$t9, -48
	
	#multiply previous digit with 10
	mul $s0,$s0,10
	
	#adding new previous digit with current digit
	add $s0,$s0,$t9
	
	#go 1 digit from temporary string
	la $t7,1($t8)
	j find_integer_n
	   
#function for find value of k with check all digits of numberfind 
find_integer_k:	
	#temporary string because functions work like loop
	la $t8,0($t7)
	
	#first digit of temporary string
	lbu $t9,0($t8)	
	
	#if digit is 'space' go back because number's digits is finished
	beq $t9,10,go_back_k
	
	#conterting digit value to integer from ascii value
	addi $t9,$t9, -48
	
	#multiply previous digit with 10
	mul $s1,$s1,10
	
	#adding new previous digit with current digit
	add $s1,$s1,$t9
	
	#go 1 digit from temporary string
	la $t7,1($t8)
	j find_integer_k
	
#function for find value of array[i] with check all digits of numberfind 
find_integer_array_i:
	#temporary string because functions work like loop
	la $t8,0($t7)
	
	#first digit of temporary string
	lbu $t9,0($t8)
	
	#if digit is 'space' go back because number's digits is finished
	beq $t9,32,go_back_array_i
	
	#if digit is '\n' go back because number's digits is finished
	beq $t9,10,go_back_array_i
	
	#conterting digit value to integer from ascii value
	addi $t9,$t9, -48
	
	#multiply previous digit with 10
	mul $t2,$t2,10
	
	#adding new previous digit with current digit
	add $t2,$t2,$t9
	
	#go 1 digit from temporary string
	la $t7,1($t8)
	j find_integer_array_i
	
#function for find value of array[j] with check all digits of numberfind   
find_integer_array_j:

	#temporary string because functions work like loop
	la $t8,0($t7)
	
	#first digit of temporary string
	lbu $t9,0($t8)
	
	#if digit is 'space' go back because number's digits is finished
	beq $t9,32,go_back_array_j
	
	#if digit is '\n' go back because number's digits is finished
	beq $t9,10,go_back_array_j
	
	#multiply previous digit with 10	
	mul $t3,$t3,10
	
	#adding new previous digit with current digit
	add $t3,$t3,$t9
	
	#go 1 digit from temporary string
	la $t7,1($t8)
	
	#go 1 digit from string which is in the while2
	la $t4,1($t4)
	j find_integer_array_j
		
#function that prints error massage (n is negative)
error_n_neg:
	li $v0,4
	la $a0,again_n_neg
	syscall
	j divisibleSumPairs
	
#function that prints error massage (n is bigger than 100)
error_n_big:
	li $v0,4
	la $a0,again_n_big
	syscall
	j divisibleSumPairs
	
#function that prints error massage (k is negative)
error_k_neg:
	li $v0,4
	la $a0,again_k_neg
	syscall
	j divisibleSumPairs
	
#function that prints error massage (k is bigger than 100)
error_k_big:
	li $v0,4
	la $a0,again_k_big
	syscall
	j divisibleSumPairs
	
#function that prints error massage (element is negative)
error_element_negative:
	li $v0,4
	la $a0,again_element_neg
	syscall
	j take_string
	
#function that prints error massage (element is bigger than 100)
error_element_bigger_than_100:
	li $v0,4
	la $a0,again_element_big
	syscall
	j take_string
