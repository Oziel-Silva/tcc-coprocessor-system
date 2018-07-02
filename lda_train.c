/*--Engineers: Oziel da Silva & Heleno da Silva
-- Create Date: 20.06.2018
-- Design Name: LDA_TRAIN
-- Module Name: media.c
-- Project Name: Trabalho de Conclusão de Curso de Engenharia Eletrônica
############################################################################*/

#include <stdio.h>
#include <stdlib.h>
//#include "mean.h"
//#include "cov.h"
//#include "cov_hw.h"
#include "sigma.h"
#include "ip.h"


 void main(void)
{
	float **cov1;
	float **cov2;
	float **sig;
	int i,j;
for(i=0;i<10;i++)
{
	cov1 = ip("class_one_data");
	cov2 = ip("class_two_data");
	
	sig = sigma(cov1, cov2);

}


	FILE *sigma;
	sigma = fopen("sigma.mat","w");
	for(i=0; i < 6; i++)
	{
		for(j=0; j < 7; j++)
		{
			if(j < 6)
				fprintf(sigma,"%f\t",sig[i][j]);
			else
				fprintf(sigma,"\n");
		}
	}
}
