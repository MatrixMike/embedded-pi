//filename: led.c：


#include "reg.h"


void delay_ms(unsigned short nms)


{

       unsigned long i;

       while(nms--)

       for(i = 0; i < 1000; i++);

}


int main(void)


{

       RCC_APB2ENR |= (1<<3);

       GPIOB_CRH = (2<<20) | (0<<22);

       GPIOB_ODR = 1<<13;   //PB13


    while(1)


    {

       GPIOB_ODR |= 1<<13;

       delay_ms(500);

       GPIOB_ODR &= ~(1<<13);

       delay_ms(500);

    }


}
