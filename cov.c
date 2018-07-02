#include <stdio.h>
#include <stdlib.h>

float **cov(float **matrix, float *media)
{
 	float soma;
 	int z,w,n,i;
 	float **mat = matrix;
	float *mean = media;
 	

 	float **matrix_cov = (float**) malloc(sizeof(float*) * 6);
	for(i=0; i < 6; i++)
		{
			matrix_cov[i] = (float*) malloc(sizeof(float)* 6);
		}

	



 	for (z = 0; z < 6; z++)
 	{
 		for (w = 0; w < 6; w++)
 		{	
 			soma = 0;
 			for (n = 0; n < 80; n++)
 					{
 						soma = soma + (mat[n][z] - mean[z])*(mat[n][w] - mean[w]);
 					}	
 					matrix_cov [w][z] = soma/79;
 		}
 	}

 	return matrix_cov;
	
}
