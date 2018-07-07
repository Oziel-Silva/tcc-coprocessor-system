/*--Engineers: Oziel da Silva & Heleno da Silva
-- Create Date: 20.06.2018
-- Design Name: LDA_TRAIN
-- Module Name: media.c
-- Project Name: Trabalho de Conclusão de Curso de Engenharia Eletrônica
############################################################################*/

#include <stdio.h>
#include <stdlib.h>
#include "../bib/cov_hw.h"
#include "../bib/hwmedia.h"
#include "../bib/sigma.h"
#include "../bib/ip.h"


 void main(void)
{
	float **cov1;
	float **cov2;
	float **sig;
	int i,j,k;
	float *media_1;
	float *media_2;

FILE *class_1;
FILE *class_2;

class_1 = fopen("class_one_data", "r");
fseek(class_1,0,SEEK_SET);

class_2 = fopen("class_two_data", "r");
fseek(class_2,0,SEEK_SET);

float **class_data_1 = (float**) malloc(sizeof(float*) * 80);
float **class_data_2 = (float**) malloc(sizeof(float*) * 80);
  for(i=0; i < 80; i++)
    {
      class_data_1[i] = (float*) malloc(sizeof(float)* 6);
      class_data_2[i] = (float*) malloc(sizeof(float)* 6);
    }


for(i = 0; i < 6; i++)
  {
    for(k = 0; k < 80; k++)
      {
          fscanf(class_1,"%f",&class_data_1[k][i]);
          fscanf(class_2,"%f",&class_data_2[k][i]);
      }
   }               


for(i=0;i<5;i++)
{
  	media_1 = media_hw(class_data_1);
	media_2 = media_hw(class_data_2);
	
	cov1 = cov_hw(class_data_1, media_1);
	cov2 = cov_hw(class_data_2, media_2);
	
	sig = sigma(cov1, cov2);

}
	
	FILE *sigma;
	sigma = fopen("../sigma_arm_32.mat","w");
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
