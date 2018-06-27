/*--Engineers: Oziel da Silva & Heleno da Silva
-- Create Date: 20.06.2018
-- Design Name:
-- Module Name: media.c
-- Project Name: Trabalho de Conclusão de Curso de Engenharia Eletrônica
############################################################################*/

#include <stdio.h>
#include <stdlib.h>
#include "data_loading.h"
#include "mean.h"
#include "cov.h"


void main(void)
{   
    float **matriz;
    float *medias;
    float **covariancia;

    matriz = data_loading();
    medias = mean(matriz);
    covariancia = cov(matriz,medias);

    printf("%f\n",covariancia[5][5]);

}