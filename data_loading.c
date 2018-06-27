//Função para leitura de dados e separação  de classes

#include <stdio.h>
#include <stdlib.h>


float  **data_loading(void)
{
	int i,j;

	float **class_one_data = (float**) malloc(sizeof(float*) * 80);
	float **class_two_data = (float**) malloc(sizeof(float*) * 80);

	for(i=0; i < 80; i++)
	{
		class_one_data[i] = (float*) malloc(sizeof(float)* 6);
		class_two_data[i] = (float*) malloc(sizeof(float)* 6);

	}
	
	
	FILE *class_data_1;
	FILE *class_data_2;

	
	class_data_1 = fopen("class_one_data","r");
	fseek(class_data_1,0,SEEK_SET);

	class_data_2 = fopen("class_two_data","r");
	fseek(class_data_2,0,SEEK_SET);
	

	for(i = 0; i < 6; i++)
		{
			for(j = 0; j < 80; j++)
				{
	  				fscanf(class_data_1,"%f",&class_one_data[j][i]);
					fscanf(class_data_2,"%f",&class_two_data[j][i]);
				}
		}               
	   

return class_one_data;

}