/*--Engineers: Oziel da Silva & Heleno da Silva
-- Create Date: 20.06.2018
-- Design Name:
-- Module Name: media.c
-- Project Name: Trabalho de Conclusão de Curso de Engenharia Eletrônica
############################################################################*/

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/mman.h>

#define FILEPATH "/dev/mem"
#define MAP_BASE (0x43C30000)
#define MAP_RANGE (0x10000)


float **cov_hw(float **class_data)
{
    int i,k;
    int fd;
    int result;
    int *map;
    int somas[4];
    int media;
    float f_media[6];
    float cov_res [6][6];
    int z,w,n;
    float cov;
    float sum_cov[4];
    


    float float **cov_res = (float**) malloc(sizeof(float*) * 6);
    
    for(i=0; i < 6; i++)
    {
      cov_res[i] = (float*) malloc(sizeof(float)* 6);
    }
      
    

    fd = open(FILEPATH, O_RDWR | O_CREAT | O_TRUNC, (mode_t)0600);
    if (fd == -1)
    {
        perror("Error opening file for writing");
        exit(EXIT_FAILURE);
    }

    
    result = write(fd, "", 1);
    if (result != 1)
    {
        close(fd);
        perror("Error writing last byte of the file");
        exit(EXIT_FAILURE);
    }


    map = mmap(0, MAP_RANGE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, MAP_BASE);
    if (map == MAP_FAILED)
    {
        close(fd);
        perror("Error mmapping the file");
        exit(EXIT_FAILURE);
    }



      for(k=0; k<6; k++)
      {
          for(i=1;i<=20;i++)
          {
              map[i] = class_data[i-1][k];
          }

        map[0] = 0x1;
        map[0] = 0x00;

          somas[0] = map[21];

      for(i=21;i<=40;i++)
          {
             map[i] = class_data[i-1][k];
          }

      map[0] = 0x01;
      map[0] = 0x00;

      somas[1] = map[21];

      for(i=41;i<=60;i++)
          {
            map[i-40] = class_data[i-1][k];
          }

      map[0] = 0x01;
      map[0] = 0x00;

      somas[2] = map[21];

      for(i=61;i<=80;i++)
          {
          map[i-60] = class_data[i-1][k];
          }

      map[0] = 0x01;
      map[0] = 0x00;

      somas[3] = map[21];

      map[22] = somas[0];
      map[23] = somas[1];
      map[24] = somas[2];
      map[25] = somas[3];

      map[0] = 0x2;
      map[0] = 0x0;

      media = map[26];

      f_media[k] = *((float*)&media);
 }




for( z = 0; z < 6 ; z++)
{
	for(w = 0; w < 6; w++)
	{	cov = 0;
		for(n = 0; n < 80; n++)
		{
			map[27] = class_one_data[n][z];
			map[28] = f_media[z];
			map[29] = class_one_data[n][w];
			map[30] = f_media[w];
			
			map[31] = class_one_data[n + 1][z];
			map[32] = f_media[z];
			map[33] = class_one_data[n + 1][w];
			map[34] = f_media[w];
		
			map[35] = class_one_data[n + 2][z];
			map[36] = f_media[z];
			map[37] = class_one_data[n + 2][w];
			map[38] = f_media[w];
			
			map[39] = class_one_data[n + 3][z];
			map[40] = f_media[z];
			map[41] = class_one_data[n + 3][w];
			map[42] = f_media[w];
			
			map[0] = 0x4;
			map[0] = 0x0;
			
			sum_cov[0] = map[59];
			sum_cov[1] = map[60];
			sum_cov[2] = map[61];
			sum_cov[3] = map[62];

		cov = cov + sum_cov[0] + sum_cov[1] + sum_cov[2] + sum_cov[3];
		n = n + 3;
		}
		
			
		cov_res[w][z] = cov;
	}
}






}
