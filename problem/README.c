//Integrantes: 
//Carlos Andrés Escobar López - 148372
//Isabella Palacio Pérez - 411700

int value
int i = 16384;

while (true)
{ 
    if (MEMORY[KEYBOARD]!= 0)
    {
        if(MEMORY[KEYBOARD] = MEMORY[0])
        {
            value = -1;            
        }
        if(MEMORY[KEYBOARD] = MEMORY[1])
        {
            value = 0;
        }  
        
        while (i < 24576)
        {
            MEMORY[i] = value;
            i = i +1; 
        }
    }
}