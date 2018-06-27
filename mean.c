#include <stdio.h>
#include <stdlib.h>

float *mean(float **matriz)
{
	int i,j;
	
	float **mat = matriz;
	float *mean_mat = (float*) malloc(sizeof(float)* 6);
	
	for(i = 0; i < 6; i++)
	{
		for (j = 0; j < 80; j++)
		{
			mean_mat[i] = (mean_mat[i] + mat[j][i]) ;
		}
		
		mean_mat[i] = mean_mat[i]/80;
		printf("%f\n",mean_mat[i] );

	}

	return mean_mat;
}