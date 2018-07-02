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


float *media_hw(float **class)
{

    int i,k;
    int fd;
    int *map;
    float somas[4];
    float media;
    float *map_f;
   
    float *f_media = (float*) malloc(sizeof(float)* 6);
	
    fd = open(FILEPATH, O_RDWR | O_CREAT | O_TRUNC, (mode_t)0600);

    map   = mmap(0, MAP_RANGE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, MAP_BASE);
    map_f = mmap(0, MAP_RANGE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, MAP_BASE);

      for(k=0; k<6; k++)
      {
          for(i=1;i<=20;i++)
          {
             map_f[i] = class[i-1][k];
          }

           map[0] = 0x1;
           map[0] = 0x00;

           somas[0] = map_f[21];  

      for(i=21;i<=40;i++)
          {
              map_f[i-20] = class[i-1][k];
          }

          map[0] = 0x01;
          map[0] = 0x00;

          somas[1] = map_f[21]; 

      for(i=41;i<=60;i++)
          {
              map_f[i-40] = class[i-1][k];
          }

          map[0] = 0x01;
          map[0] = 0x00;

          somas[2] = map_f[21];

      for(i=61;i<=80;i++)
          {
              map_f[i-60] = class[i-1][k];
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
          f_media[k] = media;

    }

return f_media;
}
