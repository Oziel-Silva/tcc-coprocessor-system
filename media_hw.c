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


float *media_hw(float **class_data)
{

    int i,k;
    int fd;
    int result;
    float *map;
    float somas[4];
    float  media;



    float *media_res = (float*) malloc(sizeof(float*) * 6);





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



          for(i=1;i<=20;i++)
          {
              map[i] = class_data[i-1][0];
           }


        map[0] = 0x1;
        map[0] = 0x00;

        somas[0] = map[21];
        for(i=21;i<=40;i++)
          {


    map = mmap(0, MAP_RANGE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, MAP_BASE);
    if (map == MAP_FAILED)
    {
        close(fd);
        perror("Error mmapping the file");
        exit(EXIT_FAILURE);
    }


    for (k = 0; k < 6; k++)
    {
    

          for(i=1;i<=20;i++)
          {
              map[i] = class_data[i-1][0];
           }


        map[0] = 0x1;
        map[0] = 0x00;

        somas[0] = map[21];


        for(i=21;i<=40;i++)
          {
             map[i-20] = class_data[i-1][0];
          }

      map[0] = 0x01;
      map[0] = 0x00;

      somas[1] = map[21];
        printf(" soma 0 = %f %d\n ",somas[1],0);
      for(i=41;i<=60;i++)
          {
            map[i-40] = class_data[i-1][0];
          }

      map[0] = 0x01;
      map[0] = 0x00;

      somas[2] = map[21];

      for(i=61;i<=80;i++)
          {
          map[i-60] = class_data[i-1][0];
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


      media_res[k] = media;

        return media_res;
  }
}
}
