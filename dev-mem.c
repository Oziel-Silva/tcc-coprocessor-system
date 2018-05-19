
#include <sys/mman.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
//#include "dev-mem-bib.h"

#define MAP_BASE        (0x43c30000) // Endereço do IP
#define MAP_RANGE       (0xFFFFF)

 int   mem_fd;
 void *gpio_map;

// acesso I / O
extern  volatile  unsigned * gpio;

//
// Configurar uma região de memória para acessar o GPIO
//
void  main(void)
{
	/* open / dev / mem */

	if ((mem_fd = open ( "/dev/mem" , O_RDWR | O_SYNC)) < 0 )
	{
		printf ("não pode abrir /dev/mem \n ");
		exit(-1);
	}

	/* mmap GPIO */
	gpio_map = mmap (
				NULL ,              // Qualquer adddress no nosso espaço fará
				MAP_RANGE,        // Map length
				PROT_READ | PROT_WRITE, // Habilita leitura e escrita para memória mapeada
				MAP_SHARED,        // Compartilhado com outros processos
				mem_fd,            // Arquivo para mapear
				MAP_BASE          // Deslocamento para GPIO periférico
			);
	close(mem_fd); // Não há necessidade de manter o mem_fd aberto após o mmap
	
	/*if (gpio_map == MAP_FAILED)
	{
		printf ( " erro mmap % d \n " , ( int ) gpio_map); // errno também set!
		saída (- 1 );
	}

	// Sempre use ponteiro volátil!
	gpio = ( volatile  unsigned *) gpio_map;*/

}