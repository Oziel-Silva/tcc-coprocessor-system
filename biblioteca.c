/*
 * biblioteca.c
 *
 *  Created on: 23/10/2017
 *      Author: ana
 */
#include <sys/mman.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <sys/stat.h>
#include <errno.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>

#define MAP_BASE        (0x43c30000) //Endereço do ModuloMotor
#define MAP_RANGE       (0x10000)

int ppr = 0, reducao = 0; //serão carregados pelo arquivo de configuração
int duty_min=0, duty_max=0, vel_max=0; //serão carregados pelo arquivo de confi$

int fd;

int converte_angulo(float angulo){
float qtd_pulsos;
qtd_pulsos = angulo * (ppr * reducao * 4)/360.0f;

return (int)qtd_pulsos;
}

//recebe velocidade em PWM e retorna duty cycle
int converte_velocidade(float velocidade){

float duty_cycle;

duty_cycle = (duty_min + ((velocidade * (duty_max − duty_min))/vel_max))*10.0f;

return (int)duty_cycle;
}

void *iomap_ptr;

//Direct Memory Access

void inicia_DMA{
//void *iomap_ptr;

fd = open("/dev/mem", O_RDWR | O_SYNC);
iomap_ptr = mmap(0, MAP_RANGE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, MAP_BASE$

p= (volatile unsigned int *)iomap_ptr;
}

void finaliza_DMA{
munmap(iomap_ptr, MAP_RANGE);
close(fd);
}
 

