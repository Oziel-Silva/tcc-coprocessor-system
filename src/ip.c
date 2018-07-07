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


float **ip(char *class)
{
    int i,k;
    int fd;
    int result;
    int *map;
    float *map_f;
    int soma_aux;
    float somas[4];
    float media;
    float f_media[6];
    float class_one_data[80][6];	
    
	float **matrix_cov = (float**) malloc(sizeof(float*) * 6);
	for(i=0; i < 6; i++)
		{
			matrix_cov[i] = (float*) malloc(sizeof(float)* 6);
		}






    FILE *file;

    file = fopen(class,"r");
    fseek(file,0,SEEK_SET);

    /* Open a file for writing.
    *  - Creating the file if it doesn't exist.
    *  - Truncating it to 0 size if it already exists. (not really needed)
    *
    * Note: "O_WRONLY" mode is not sufficient when mmaping.
    */
    fd = open(FILEPATH, O_RDWR | O_CREAT | O_TRUNC, (mode_t)0600);
    if (fd == -1)
    {
        perror("Error opening file for writing");
        exit(EXIT_FAILURE);
    }

    /* Stretch the file size to the size of the (mmapped) array of ints
    */
    /*result = lseek(fd, FILESIZE-1, SEEK_SET);
    if (result == -1)
    {
        close(fd);
        perror("Error calling lseek() to 'stretch' the file");
        exit(EXIT_FAILURE);
    }*/

    /* Something needs to be written at the end of the file to
    * have the file actually have the new size.
    * Just writing an empty string at the current file position will do.
    *
    * Note:
    *  - The current position in the file is at the end of the stretched
    *    file due to the call to lseek().
    *  - An empty string is actually a single '\0' character, so a zero-byte
    *    will be written at the last byte of the file.
    */
    result = write(fd, "", 1);
    if (result != 1)
    {
        close(fd);
        perror("Error writing last byte of the file");
        exit(EXIT_FAILURE);
    }

 map_f = mmap(0, MAP_RANGE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, MAP_BASE);
    if (map == MAP_FAILED)
    {
        close(fd);
        perror("Error mmapping the file");
        exit(EXIT_FAILURE);
    }








    map = mmap(0, MAP_RANGE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, MAP_BASE);
    if (map == MAP_FAILED)
    {
        close(fd);
        perror("Error mmapping the file");
        exit(EXIT_FAILURE);
    }

    //for para pegar toda as médias (6 médias)

	
for(i = 0; i < 6; i++)
  {
    for(k = 0; k < 80; k++)
      {
          fscanf(file,"%f",&class_one_data[k][i]);
      }
   }               




      for(k=0; k<6; k++)
      {
          for(i=1;i<=20;i++)
          {
             // fscanf(file,"%f",&map[i]);
		map_f[i] = class_one_data[i-1][k];
          }

         map[0] = 0x1;
         map[0] = 0x00;

        somas[0] = map_f[21];
	printf("%f\n",somas[0]);
      for(i=21;i<=40;i++)
          {
             	map_f[i-20] = class_one_data[i-1][k];
		 //fscanf(file,"%f",&map[i-20]);
          }

      map[0] = 0x01;
      map[0] = 0x00;

      somas[1] = map_f[21];

      for(i=41;i<=60;i++)
          {
              	map_f[i-40] = class_one_data[i-1][k];
		//fscanf(file,"%f",&map[i-40]);
          }

      map[0] = 0x01;
      map[0] = 0x00;

      somas[2] = map_f[21];

      for(i=61;i<=80;i++)
          {
             	map_f[i-60] = class_one_data[i-1][k];
		// fscanf(file,"%f",&map[i-60]);
          }
      
      map[0] = 0x01;
      map[0] = 0x00;

      somas[3] = map_f[21];

      map_f[22] = somas[0];
      map_f[23] = somas[1];
      map_f[24] = somas[2];
      map_f[25] = somas[3];

      map[0] = 0x2;
      map[0] = 0x0;

      media = map_f[26];

    //  f_media[k] = *((float*)&media);
      f_media[k] = media;
//	printf("média %d = %f \n",k+1, f_media[k]);

    }




FILE *class_data_1;



class_data_1= fopen(class,"r");
fseek(class_data_1,0,SEEK_SET);

int j;
/*
for(i = 0; i < 6; i++)
  {
    for(j = 0; j < 80; j++)
      {
          fscanf(class_data_1,"%f",&class_one_data[j][i]);
      }
   }               

float cov_class_one [6][6];
*/

int z,w,n;
float cov;
float sum_cov[4];



for( z = 0; z < 6 ; z++)
{
	for(w = 0; w < 6; w++)
	{	cov = 0;
		for(n = 0; n < 80; n++)
		{
			map_f[27] = class_one_data[n][z];
			map_f[28] = f_media[z];
			map_f[29] = class_one_data[n][w];
			map_f[30] = f_media[w];
			
			map_f[31] = class_one_data[n + 1][z];
			map_f[32] = f_media[z];
			map_f[33] = class_one_data[n + 1][w];
			map_f[34] = f_media[w];
		
			map_f[35] = class_one_data[n + 2][z];
			map_f[36] = f_media[z];
			map_f[37] = class_one_data[n + 2][w];
			map_f[38] = f_media[w];
			
			map_f[39] = class_one_data[n + 3][z];
			map_f[40] = f_media[z];
			map_f[41] = class_one_data[n + 3][w];
			map_f[42] = f_media[w];
			
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

	}
}




return matrix_cov;

}
