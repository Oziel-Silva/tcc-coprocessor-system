#include <stdio.h>
#include <stdlib.h>

float *mean(float **matriz)
{
	int i,j;
	
	float *mean_mat = (float*) malloc(sizeof(float)* 6);
	float soma;
	
	for(i = 0; i < 6; i++)
	{	soma = 0;
		for (j = 0; j < 80; j++)
		{
			soma = (soma + matriz[j][i]) ;
		}
		
		mean_mat[i] = soma/80;

	}

	return mean_mat;
}
