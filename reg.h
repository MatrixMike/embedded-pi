//filename: reg.h:

#ifndef _REGS_H_
#define _REGS_H_

#define RCC_APB2ENR *(volatile unsigned long *)0x40021018

#define GPIOB_CRL *(volatile unsigned long *)0x40010C00

#define GPIOB_CRH *(volatile unsigned long *)0x40010C04

#define GPIOB_IDR *(volatile unsigned long *)0x40010C08

#define GPIOB_ODR *(volatile unsigned long *)0x40010C0C

#endif
