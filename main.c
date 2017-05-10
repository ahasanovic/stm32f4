#include "stm32f4xx.h"
#include "delay.h"
#include "usart.h"
static uint8_t array[7];
static uint8_t redArray[7];
static uint8_t greenArray[7];
static uint8_t blueArray[7];

void setArray(uint8_t a[])
{
		int i;
		for(i=0; i<7; ++i)
			array[i] = a[i];
}

void setRedArray(uint8_t a[])
{
		int i;
		for(i=0; i<7; ++i)
			redArray[i] = a[i];

}


void setGreenArray(uint8_t a[])
{
		int i;
		for(i=0; i<7; ++i)
			greenArray[i] = a[i];

}


void setBlueArray(uint8_t a[])
{
		int i;
		for(i=0; i<7; ++i)
			blueArray[i] = a[i];

}

int main(void)
{
	uint32_t led_timer12,led_timer14,led_timer13,led_timer3,led_timer2,led_timer5, led_timer4;
	
	initUSART2(USART2_BAUDRATE_460800);
	enIrqUSART2();
	///wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
	/// setup peripherals
	///-----------------------------------------------------------------
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN;  								
    GPIOD->MODER |= 0x55000000;             							
    GPIOD->OTYPER |= 0x00000000;										
    GPIOD->OSPEEDR |= 0xFF000000; 		
    int i=1,ii=1;
    led_timer14 = getSYSTIM14();
    led_timer12 = getSYSTIM12();
    led_timer13 = getSYSTIM13();
    led_timer3=getSYSTIM3();
    led_timer2 = getSYSTIM2();
    led_timer5=getSYSTIM5();
	led_timer4=getSYSTIM4();
	printUSART2("> ");								
	///wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww 	
	
	while(1)
	{
		if(getD1() && chk4TimeoutSYSTIM(led_timer12, getB1(),1) == (SYSTIM_TIMEOUT))
		{
			GPIOD->ODR ^= 0x1000;
			led_timer12 = getSYSTIM12();
		}
		
		if(getD6() && chk4TimeoutSYSTIM(led_timer14, getP_WS(),6) == (SYSTIM_TIMEOUT))
		{
			if(ii)
			{
				SPI1_CS_HIGH;
					for(i=0;i<7;++i)
						txByteSPI1(greenArray[i]);
					
					for(i=0;i<7;++i)
						txByteSPI1(redArray[i]);
					
					for(i=0;i<7;++i)
						txByteSPI1(blueArray[i]);
				SPI1_CS_LOW;
				ii=0;
			}
			else
			{
				SPI1_CS_HIGH;
					for(i=0;i<7;++i)
						txByteSPI1(array[i]);
					
					for(i=0;i<7;++i)
						txByteSPI1(array[i]);
					
					for(i=0;i<7;++i)
						txByteSPI1(array[i]);
				SPI1_CS_LOW;
				
				ii=1;
			}
			led_timer14 = getSYSTIM14();
		}
		if(getD5() && chk4TimeoutSYSTIM(led_timer13, getP_APA(),5) == (SYSTIM_TIMEOUT))
		{
			if(i)
			{
				uint8_t blue=getBlueAPA();
				uint8_t green=getGreenAPA();
				uint8_t red=getRedAPA();
				SPI1_CS_HIGH;
					txByteSPI2(0x00);
					txByteSPI2(0x00);
					txByteSPI2(0x00);
					txByteSPI2(0x00);
					
					txByteSPI2(0xff);				
					txByteSPI2(blue);
					txByteSPI2(green);
					txByteSPI2(red);
						
					txByteSPI2(0xff);
					txByteSPI2(0xff);
					txByteSPI2(0xff);
					txByteSPI2(0xff);
				SPI1_CS_LOW;	
				i=0;
			}
			else
			{
			i=1;
			SPI1_CS_HIGH;
					txByteSPI2(0x00);
					txByteSPI2(0x00);
					txByteSPI2(0x00);
					txByteSPI2(0x00);
					
					txByteSPI2(0xff);				
					txByteSPI2(0x00);
					txByteSPI2(0x00);
					txByteSPI2(0x00);
						
					txByteSPI2(0xff);
					txByteSPI2(0xff);
					txByteSPI2(0xff);
					txByteSPI2(0xff);
			SPI1_CS_LOW;		
			}
			led_timer13 = getSYSTIM13();
		}
		
		if(getD2() && chk4TimeoutSYSTIM(led_timer3, getB2(),2) == (SYSTIM_TIMEOUT))
		{
			GPIOD->ODR ^= 0x2000;
			led_timer3 = getSYSTIM3();
		}
		if(getD3() && chk4TimeoutSYSTIM(led_timer2, getB3(),3) == (SYSTIM_TIMEOUT))
		{
			GPIOD->ODR ^= 0x4000;
			led_timer2 = getSYSTIM2();
		}
		
		if(getD4() && chk4TimeoutSYSTIM(led_timer5, getB4(),4) == (SYSTIM_TIMEOUT))
		{
			GPIOD->ODR ^= 0x8000;
			led_timer5 = getSYSTIM5();
		}
		
		if(getD1() && chk4TimeoutSYSTIM(led_timer4, getB1(),1) == (SYSTIM_TIMEOUT))
		{
			if(getB1())
				TIM4->CCR1 = 100;
			if(getB2())
				TIM4->CCR1 = 1;
			//GPIOD->ODR ^= 0x1000;
			led_timer4 = getSYSTIM4();
		}
		chkRxBuffUSART2();
	}
}
