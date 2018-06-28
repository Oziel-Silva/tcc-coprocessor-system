#include <stdio.h>
#include <stdlib.h>

float **sigma(float **matrix1, float **matrix2)
{
	int i,j;

	float **s_sigma = (float**) malloc(sizeof(float*) * 80);
	
	for(i=0; i < 80; i++)
	{
		s_sigma[i] = (float*) malloc(sizeof(float)* 6);
	}
	

	for (i = 0; i < 6; i++)
	{
		for(j = 0; j < 80; j++)
		{
			s_sigma[i][j] = (matrix1[i][j] + matrix2[i][j]) / 2;
		}
	}


	return s_sigma;

}