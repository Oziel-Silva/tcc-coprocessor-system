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


float *media(void)
{

int buffer[40];
    int i,k;
    int fd;
    int result;
    int *map;
    int somas[4];
    int media;
    //float f_media[6];
    int somatorio;
    float *f_media = (float*) malloc(sizeof(float)* 6);
	


    FILE *file;
    file = fopen("class_one_data","r");
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


    map = mmap(0, MAP_RANGE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, MAP_BASE);
    if (map == MAP_FAILED)
    {
        close(fd);
        perror("Error mmapping the file");
        exit(EXIT_FAILURE);
    }

    //for para pegar toda as médias (6 médias)


      for(k=0; k<6; k++)
      {
          for(i=1;i<=20;i++)
          {
              fscanf(file,"%f",&map[i]);
          }

          map[0] = 0x1;
         map[0] = 0x00;

          somas[0] = map[21];

      for(i=21;i<=40;i++)
          {
              fscanf(file,"%f",&map[i-20]);
          }

      map[0] = 0x01;
      map[0] = 0x00;

      somas[1] = map[21];

      for(i=41;i<=60;i++)
          {
              fscanf(file,"%f",&map[i-40]);
          }

      map[0] = 0x01;
      map[0] = 0x00;

      somas[2] = map[21];

      for(i=61;i<=80;i++)
          {
              fscanf(file,"%f",&map[i-60]);
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
      printf("média %d = %f \n",k+1, f_media[k]);

    }
return f_media;
}
