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
	float **class_data_1;
	float **class_data_2;

FILE *class_1;
FILE *class_2;

class_1 = fopen("class_one_data", "r");
class_2 = fopen("class_two_data", "r");


for(i = 0; i < 6; i++)
  {
    for(k = 0; k < 80; k++)
      {
          fscanf(class_1,"%f",&class_data_1[k][i]);
          fscanf(class_2,"%f",&class_data_2[k][i]);
      }
   }               

   	media_1 = media(class_data_1);
   	media_2 = media(class_data_2);

	cov1 = cov(class_data_1, media_1);
	cov2 = cov(class_data_2, media_2);
	
	sig = sigma(cov1, cov2);




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
