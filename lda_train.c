/*--Engineers: Oziel da Silva & Heleno da Silva
-- Create Date: 20.06.2018
-- Design Name: LDA_TRAIN
-- Module Name: media.c
-- Project Name: Trabalho de Conclusão de Curso de Engenharia Eletrônica
############################################################################*/

#include <stdio.h>
#include <stdlib.h>
#include "mean.h"
#include "cov.h"
#include "cov_hw.h"
#include "media_hw.h"
#include "sigma.h"


 int main(void)
{   
    int i,j;
    float *mean_1;
    float *mean_2;
    float **sigma_1;
    float **sigma_2;
    float **s_sigma;
    



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


        mean_1 = mean(class_one_data);
        mean_2 = mean(class_two_data);

        sigma_1 = cov(class_one_data , mean_1);
        sigma_2 = cov(class_two_data , mean_2);

        s_sigma = sigma(sigma_1, sigma_2);


}










//     FILE *lda_parameters;
//     lda_parameters = fopen("lda_parameters.mat","w");



//     for (i = 0; i < 6; i++)
//     {
//     	for (j = 0; j < 7; j++)
//     	{
//     		if(j <6 )
//     		{
// //    		printf("%f\t",s_sigma[i][j] );
//  		fprintf(lda_parameters, "%f\t",s_sigma[i][j]);
//     		}
//     		else
//     			fprintf(lda_parameters,"\n");
//     	}
    	
//     // }
    
   


