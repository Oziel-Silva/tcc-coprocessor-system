/*--Engineers: Oziel da Silva & Heleno da Silva
-- Create Date: 20.06.2018
-- Design Name: LDA_TRAIN
-- Module Name: media.c
-- Project Name: Trabalho de Conclusão de Curso de Engenharia Eletrônica
############################################################################*/

#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <stdio.h>
#include <stdlib.h>
#include "mean.h"
#include "cov.h"
#include "cov_hw.h"
#include "hwmedia.h"
#include "sigma.h"


#define FILEPATH "/dev/mem"
#define MAP_BASE (0x43C30000)
#define MAP_RANGE (0x10000)





float **cov_hw(float **class, float *media)
{   
    int i,z,w,n,fd;
    int *map;
    float *map_f;
    float cov;
    float sum_cov[4];

  float **matrix_cov = (float**) malloc(sizeof(float*) * 6);
  for(i=0; i < 6; i++)
    {
      matrix_cov[i] = (float*) malloc(sizeof(float)* 6);
    }

     fd = open(FILEPATH, O_RDWR | O_CREAT | O_TRUNC, (mode_t)0600);
     map_f = mmap(0, MAP_RANGE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, MAP_BASE);
     map   = mmap(0, MAP_RANGE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, MAP_BASE);



    for( z = 0; z < 6 ; z++)
    {
      for(w = 0; w < 6; w++)
      { cov = 0;
        for(n = 0; n < 80; n++)
        {
          map_f[27] = class[n][z];
          map_f[28] = media[z];
          map_f[29] = class[n][w];
          map_f[30] = media[w];
          
          map_f[31] = class[n + 1][z];
          map_f[32] = media[z];
          map_f[33] = class[n + 1][w];
          map_f[34] = media[w];
        
          map_f[35] = class[n + 2][z];
          map_f[36] = media[z];
          map_f[37] = class[n + 2][w];
          map_f[38] = media[w];
          
          map_f[39] = class[n + 3][z];
          map_f[40] = media[z];
          map_f[41] = class[n + 3][w];
          map_f[42] = media[w];
          
          map[0] = 0x4;
          map[0] = 0x0;
          
          sum_cov[0] = map_f[59];
          sum_cov[1] = map_f[60];
          sum_cov[2] = map_f[61];
          sum_cov[3] = map_f[62];

        cov = cov + sum_cov[0] + sum_cov[1] + sum_cov[2] + sum_cov[3];
        n = n + 3;
        }
        
          
        matrix_cov[w][z] = cov;
        //printf("a(%d,%d) = %f\n",w+1,z+1, matrix_cov[w][z]);

      }
    }
    return matrix_cov;
}
