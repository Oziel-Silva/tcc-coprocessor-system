/* - Engenheiros: Oziel da Silva e Heleno da Silva
- Data de criação: 20.06.2018
- Nome do design: LDA_TRAIN
- Nome do Módulo: media.c
- Nome do Projeto: Trabalho de Conclusão de Curso de Engenharia Eletrônica
################################################## ########################## */

#include  <stdio.h>
#include  <stdlib.h>
// #include "data_loading.h"
 #include "mean.h"
 #include "cov.h"
//# include  " cov_hw.h "
//# include  " media_hw.h "
#include  "sigma.h"


int main ( void )
{   
    int i, j;
    float *mean_1, *mean_2, **sigma_1, **sigma_2, **s_sigma;
    
    float **class_one_data;
    float **class_two_data;

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
	
	    
    sigma_1 = cov(class_one_data, mean_1);
    sigma_2 = cov(class_two_data, mean_2);

    s_sigma = sigma (sigma_1, sigma_2);


    FILE *lda_parameters;
    lda_parameters = fopen ( "lda_parameters.mat" , "w" );




    for (i = 0; i < 6; i++)
    {
    	for (j = 0; j < 7; j++)
    	{
    		if(j <6 )
    		{
 		    fprintf(lda_parameters, "%f\t",s_sigma[i][j]);
    		}
    		else
    			fprintf(lda_parameters,"\n");
    	}
    	
    }
    return 0;
 }
