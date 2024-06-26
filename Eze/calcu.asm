section .text
global recibir_Operacion

recibir_Operacion:
	
	mov eax, [esp+4]
	mov ebx, [ebp+8]
	mov ecx, [ebp+12]
 
    cmp  ebx, '+'
    je suma
    cmp ebx, '-'
    je resta
    cmp ebx, '*'
    je multiplicacion
    cmp ebx, '/'
    je division
    
    mov eax, 0
    ret
    
suma:
    add eax,ecx
    ret
    
resta:
    sub eax,ecx
    ret
    
multiplicacion:
    imul eax,ecx
   ret
   
division:
    cmp ecx, 0
    cdq
    idiv ecx
    ret
