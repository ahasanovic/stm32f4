#include "usart.h"
#define _GNU_SOURCE
#include <string.h>
#include <stdlib.h>
#include <math.h>
#include "misc.h"
#include "rtc.h"
#include "lis302dl.h"
#include "adc.h"
#include <time.h>

volatile uint8_t rtc_str[20];
volatile uint8_t g_usart2_buffer[USART2_BUFFER_SIZE];
volatile uint16_t g_usart2_widx = 0;
volatile uint16_t g_usart2_ridx = ((USART2_BUFFER_SIZE) - 1);
static uint8_t niz[21];
static uint32_t time1 ;
static uint32_t date ;

uint32_t t=0x00000000;

static uint8_t RedNiz[7]={0x00000000};
static uint8_t BlueNiz[7]={0x00000000};
static uint8_t GreenNiz[7]={0x00000000};
					
static uint8_t APAr = 0x00000000;
static uint8_t APAg = 0x00000000;
static uint8_t APAb = 0x00000000;

static uint8_t WSr = 0x00000000;
static uint8_t WSg = 0x00000000;
static uint8_t WSb = 0x00000000;
static uint8_t number[8];
uint32_t tM_in;
uint32_t dT_in;	
uint16_t out = 0;
static uint32_t fulltime;
static time_t rawtime;
int8_t accel_data[3];
static struct tm* timeinfo;
static int z = 0;
static struct tm* timeStruct;

uint8_t getRedAPA()
{
	return APAr;
}

uint8_t getBlueAPA()
{
	return APAb;
}

uint8_t getGreenAPA()
{
	return APAg;
}

void initUSART2(uint32_t baudrate)
{
	//wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
	// USART2: PA2 -> TX & PA3 -> RX
	//------------------------------------------------------------------ 
	
	initRTC();
	initADC1Temp();
	initSPI1(SPI_BaudRatePrescaler_16);
	initSPI2(SPI_BaudRatePrescaler_32);
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN; 									
	RCC->APB1ENR |= RCC_APB1ENR_USART2EN; 									
	GPIOA->MODER |= (GPIO_MODER_MODER2_1)|(GPIO_MODER_MODER3_1);
	GPIOA->AFR[0] |= 0x00007700;										
	
	GPIOA->OSPEEDR |= GPIO_OSPEEDER_OSPEEDR2_1;							  
	GPIOA->OSPEEDR |= GPIO_OSPEEDER_OSPEEDR3_1;							  
															
	USART2->BRR = baudrate;
	USART2->CR1 = USART_CR1_UE|USART_CR1_TE;							
	
	
}
void enIrqUSART2(void)
{
	USART2->CR1 &= ~(USART_CR1_UE);
	
	NVIC_EnableIRQ(USART2_IRQn);
	USART2->CR1 |= (USART_CR1_UE)|(USART_CR1_RE)|(USART_CR1_RXNEIE);
}

void disIrqUSART2(void)
{
	USART2->CR1 &= ~((USART_CR1_UE)|(USART_CR1_RXNEIE));
	
	NVIC_DisableIRQ(USART2_IRQn);
	USART2->CR1 |= (USART_CR1_UE);
}

void putcharUSART2(uint8_t data)
{/// print one character to USART2
	while(!(USART2->SR & USART_SR_TC));									
	
	USART2->DR = data;												    
}

void printUSART2(char *str, ... )
{ /// print text and up to 10 arguments!
    uint8_t rstr[40];													// 33 max -> 32 ASCII for 32 bits and NULL 
    uint16_t k = 0;
	uint16_t arg_type;
	uint32_t utmp32;
	uint32_t * p_uint32; 
	char * p_char;
	va_list vl;
	
	//va_start(vl, 10);													// always pass the last named parameter to va_start, for compatibility with older compilers
	va_start(vl, str);													// always pass the last named parameter to va_start, for compatibility with older compilers
	while(str[k] != 0x00)
	{
		if(str[k] == '%')
		{
			if(str[k+1] != 0x00)
			{
				switch(str[k+1])
				{
					case('b'):
					{// binary
						if(str[k+2] == 'b')
						{// byte
							utmp32 = va_arg(vl, int);
							arg_type = (PRINT_ARG_TYPE_BINARY_BYTE);
						}
						else if(str[k+2] == 'h')
						{// half word
							utmp32 = va_arg(vl, int);
							arg_type = (PRINT_ARG_TYPE_BINARY_HALFWORD);
						}
						else if(str[k+2] == 'w')
						{// word	
							utmp32 = va_arg(vl, uint32_t);
							arg_type = (PRINT_ARG_TYPE_BINARY_WORD);
						}
						else
						{// default word
							utmp32 = va_arg(vl, uint32_t);
							arg_type = (PRINT_ARG_TYPE_BINARY_WORD);
							k--;
						}
						
						k++;	
						p_uint32 = &utmp32;
						break;
					}
					case('d'):
					{// decimal
						if(str[k+2] == 'b')
						{// byte
							utmp32 = va_arg(vl, int);
							arg_type = (PRINT_ARG_TYPE_DECIMAL_BYTE);
						}
						else if(str[k+2] == 'h')
						{// half word
							utmp32 = va_arg(vl, int);
							arg_type = (PRINT_ARG_TYPE_DECIMAL_HALFWORD);
						}
						else if(str[k+2] == 'w')
						{// word	
							utmp32 = va_arg(vl, uint32_t);
							arg_type = (PRINT_ARG_TYPE_DECIMAL_WORD);
						}
						else
						{// default word
							utmp32 = va_arg(vl, uint32_t);
							arg_type = (PRINT_ARG_TYPE_DECIMAL_WORD);
							k--;
						}
						
						k++;	
						p_uint32 = &utmp32;
						break;
					}
					case('c'):
					{// character
						char tchar = va_arg(vl, int);	
						putcharUSART2(tchar);
						arg_type = (PRINT_ARG_TYPE_CHARACTER);
						break;
					}
					case('s'):
					{// string 
						p_char = va_arg(vl, char *);	
						sprintUSART2((uint8_t *)p_char);
						arg_type = (PRINT_ARG_TYPE_STRING);
						break;
					}
					case('f'):
					{// float
						uint64_t utmp64 = va_arg(vl, uint64_t);			// convert double to float representation IEEE 754
						uint32_t tmp1 = utmp64&0x00000000FFFFFFFF;
						tmp1 = tmp1>>29;
						utmp32 = utmp64>>32;
						utmp32 &= 0x07FFFFFF;
						utmp32 = utmp32<<3;
						utmp32 |= tmp1;
						if(utmp64 & 0x8000000000000000)
							utmp32 |= 0x80000000;
							
						if(utmp64 & 0x4000000000000000)
							utmp32 |= 0x40000000;
							
						p_uint32 = &utmp32;
						
						arg_type = (PRINT_ARG_TYPE_FLOAT);
						//arg_type = (PRINT_ARG_TYPE_HEXADECIMAL_WORD);
						//arg_type = (PRINT_ARG_TYPE_BINARY_WORD);
						break;
					}
					case('x'):
					{// hexadecimal 
						if(str[k+2] == 'b')
						{// byte
							utmp32 = (uint32_t)va_arg(vl, int);
							arg_type = (PRINT_ARG_TYPE_HEXADECIMAL_BYTE);
						}
						else if(str[k+2] == 'h')
						{// half word
							utmp32 = (uint32_t)va_arg(vl, int);
							arg_type = (PRINT_ARG_TYPE_HEXADECIMAL_HALFWORD);
						}
						else if(str[k+2] == 'w')
						{// word	
							utmp32 = va_arg(vl, uint32_t);
							arg_type = (PRINT_ARG_TYPE_HEXADECIMAL_WORD);
						}
						else
						{
							utmp32 = va_arg(vl, uint32_t);
							arg_type = (PRINT_ARG_TYPE_HEXADECIMAL_WORD);
							k--;
						}
						
						k++;
						p_uint32 = &utmp32;
						break;
					}
					default:
					{
						utmp32 = 0;
						p_uint32 = &utmp32;
						arg_type = (PRINT_ARG_TYPE_UNKNOWN);
						break;
					}
				}
					
				if(arg_type&(PRINT_ARG_TYPE_MASK_CHAR_STRING))	
				{
					getStr4NumMISC(arg_type, p_uint32, rstr);
					sprintUSART2(rstr);	
				}
				k++;
			}
		}
		else
		{// not a '%' char -> print the char
			putcharUSART2(str[k]);
			if (str[k] == '\n')
				putcharUSART2('\r');
		}
		k++;
	}
	
	va_end(vl);
	return;
}

void sprintUSART2(uint8_t * str)
{
	uint16_t k = 0;
	
	while (str[k] != '\0')
    {
        putcharUSART2(str[k]);
        if (str[k] == '\n')
            putcharUSART2('\r');
        k++;

        if (k == MAX_PRINT_STRING_SIZE)
            break;
    }
}
/*
void USART2_IRQHandler(void)
{
	uint8_t data;
	
	if(USART2->SR&(USART_SR_RXNE))
	{
		data = USART2->DR;
		//USART3->SR &= ~(USART_SR_RXNE);
		USART2->DR = data;
	}
}*/
void USART2_IRQHandler(void)
{
	if(USART2->SR&(USART_SR_RXNE))
	{
		g_usart2_buffer[g_usart2_widx] = USART2->DR;
		g_usart2_widx++;
		if(g_usart2_widx >= (USART2_BUFFER_SIZE))
		{
			g_usart2_widx = 0;
		}
	}
	
}
void chkRxBuffUSART2(void)
{
	uint16_t t_usart2_ridx = g_usart2_ridx;
	
	t_usart2_ridx++;
	if(t_usart2_ridx >= (USART2_BUFFER_SIZE))
	{
		t_usart2_ridx = 0;
	}
	
	if(t_usart2_ridx != g_usart2_widx)
	{
		USART2->DR = g_usart2_buffer[t_usart2_ridx];

		g_usart2_ridx = t_usart2_ridx;
	}
	
	if(g_usart2_buffer[t_usart2_ridx] == '\r')
	{	
		parser_function(g_usart2_buffer);
		printUSART2("> ");
	}
}

void staticState(uint16_t i, uint16_t S)
{	            							    														
	switch(i)
			{
				case 0:
				{	
					GPIOD->MODER &= ~(0x03000000);
					GPIOD->MODER |= 0x01000000;
					
					RCC->APB1ENR &= ~(RCC_APB1ENR_TIM12EN); 								// 
	
					TIM12->CR1 &= ~(TIM_CR1_CEN);
					TIM12->PSC &= ~(0x0054-0x0001);											// 
																		// 
					TIM12->ARR &= ~(0x03E8);													// 
					TIM12->CR1 &= ~(0x0084);													// 
																		//
					TIM12->CR2 &= ~(0x0000);
					TIM12->CNT &= ~(0x0000);													// 
					TIM12->EGR &= ~(TIM_EGR_UG);											//
					TIM12->DIER &= ~(0x0001);												// enable 
	
					NVIC_DisableIRQ(TIM8_BRK_TIM12_IRQn);
					TIM12->CR1 &= ~(TIM_CR1_CEN);

					if(S == 1)
						GPIOD->ODR |= 0x1000;
					else if(S == 0)
						GPIOD->ODR &= ~(0x1000);
					break;
				}
				case 1:
				{
					GPIOD->MODER &= ~(0x0C000000);
					GPIOD->MODER |= 0x04000000;
					RCC->APB1ENR &= ~(RCC_APB1ENR_TIM3EN); 								// 
	
					TIM3->CR1 &= ~(TIM_CR1_CEN);
					TIM3->PSC &= ~(0x0054-0x0001);											// 
																		// 
					TIM3->ARR &= ~(0x03E8);													// 
					TIM3->CR1 &= ~(0x0084);													// 
																		//
					TIM3->CR2 &= ~(0x0000);
					TIM3->CNT &= ~(0x0000);													// 
					TIM3->EGR &= ~(TIM_EGR_UG);											//
					TIM3->DIER &= ~(0x0001);												// enable 
	
					NVIC_DisableIRQ(TIM3_IRQn);
					TIM3->CR1 &= ~(TIM_CR1_CEN);

					
					if(S == 1)
						GPIOD->ODR |= 0x2000;
					else if(S == 0)
						GPIOD->ODR &= ~(0x2000);
					break;
				}
				case 2:
				{
					GPIOD->MODER &= ~(0x30000000);
					GPIOD->MODER |= 0x10000000;
					RCC->APB1ENR &= ~(RCC_APB1ENR_TIM2EN); 								// 
	
					TIM2->CR1 &= ~(TIM_CR1_CEN);
					TIM2->PSC &= ~(0x0054-0x0001);											// 
																		// 
					TIM2->ARR &= ~(0x03E8);													// 
					TIM2->CR1 &= ~(0x0084);													// 
																		//
					TIM2->CR2 &= ~(0x0000);
					TIM2->CNT &= ~(0x0000);													// 
					TIM2->EGR &= ~(TIM_EGR_UG);											//
					TIM2->DIER &= ~(0x0001);												// enable 
	
					NVIC_DisableIRQ(TIM2_IRQn);
					TIM2->CR1 &= ~(TIM_CR1_CEN);

					if(S == 1)
						GPIOD->ODR |= 0x4000;
					else if(S == 0)
						GPIOD->ODR &= ~(0x4000);
					break;
				}
				case 3:
				{
					GPIOD->MODER &= ~(0xC0000000);
					GPIOD->MODER |= 0x40000000;
					RCC->APB1ENR &= ~(RCC_APB1ENR_TIM5EN); 								// 
	
					TIM5->CR1 &= ~(TIM_CR1_CEN);
					TIM5->PSC &= ~(0x0054-0x0001);											// 
																		// 
					TIM5->ARR &= ~(0x03E8);													// 
					TIM5->CR1 &= ~(0x0084);													// 
																		//
					TIM5->CR2 &= ~(0x0000);
					TIM5->CNT &= ~(0x0000);													// 
					TIM5->EGR &= ~(TIM_EGR_UG);											//
					TIM5->DIER &= ~(0x0001);												// enable 
	
					NVIC_DisableIRQ(TIM5_IRQn);
					TIM5->CR1 &= ~(TIM_CR1_CEN);

					if(S == 1)
						GPIOD->ODR |= 0x8000;
					else if(S == 0)
						GPIOD->ODR &= ~(0x8000);
					break;
				}
			}
}

void pwmState(uint16_t i, uint16_t d)
{
	//uint16_t D = ((999+1)*d)/100-1;             							   								
	  uint16_t D = 1000-10*d;             							   								
	       							   								
	RCC->APB1ENR |= RCC_APB1ENR_TIM4EN; 							// enable TIM4 on APB1 
	TIM4->PSC = 0x0054 - 0x0001;									// set TIM4 counting prescaler 
																		// 84MHz/84 = 1MHz -> count each 1us
	TIM4->ARR = 0x03E8;												// period of the PWM 1ms
	
	TIM4->CCR1 = 0x0000;											// duty cycle for the PWM set to 0%
	TIM4->CCR2 = 0x0000;
	TIM4->CCR3 = 0x0000;
	TIM4->CCR4 = 0x0000;
		
	TIM4->CCMR1 |= (TIM_CCMR1_OC1PE)|(TIM_CCMR1_OC1M_2)|(TIM_CCMR1_OC1M_1);
	TIM4->CCMR1 |= (TIM_CCMR1_OC2PE)|(TIM_CCMR1_OC2M_2)|(TIM_CCMR1_OC2M_1);	
	TIM4->CCMR2 |= (TIM_CCMR2_OC3PE)|(TIM_CCMR2_OC3M_2)|(TIM_CCMR2_OC3M_1);	
	TIM4->CCMR2 |= (TIM_CCMR2_OC4PE)|(TIM_CCMR2_OC4M_2)|(TIM_CCMR2_OC4M_1);					
																		// set PWM 1 mod, enable OC1PE preload mode 
																			
		// set active mode high for pulse polarity
	TIM4->CCER |= ((TIM_CCER_CC1P)|(TIM_CCER_CC2P)|(TIM_CCER_CC3P)|(TIM_CCER_CC4P));
	TIM4->CR1 |= (TIM_CR1_ARPE)|(TIM_CR1_URS);
		
		// update event, reload all config 
	TIM4->EGR |= TIM_EGR_UG;											
		// activate capture compare mode
	TIM4->CR1 |= TIM_CR1_CEN;		
	
	switch(i)
	{		
		case 0:
		{
			GPIOD->AFR[1] |= 0x00020000;
			GPIOD->MODER &= ~(0x03000000);
			GPIOD->MODER |= 0x02000000;
			disableSYSTIMER12();
			TIM4->CCER |= (TIM_CCER_CC1E);											
			TIM4->CCR1 = D;
				break;
		}
		case 1:
		{
			GPIOD->AFR[1] |= 0x00200000;
			GPIOD->MODER &= ~(0x0C000000);
			GPIOD->MODER |= 0x08000000;
			disableSYSTIMER3();
			TIM4->CCER |= (TIM_CCER_CC2E);	
			TIM4->CCR2 = D;
			break;
		}
		case 2:
		{
			GPIOD->AFR[1] |= 0x02000000;
			GPIOD->MODER &= ~(0x30000000);
			GPIOD->MODER |= 0x20000000;
			disableSYSTIMER2();
			TIM4->CCER |= (TIM_CCER_CC3E);	
			TIM4->CCR3 = D;
			break;
		}
		case 3:
		{
			GPIOD->AFR[1] |= 0x20000000;
			GPIOD->MODER &= ~(0xC0000000);
			GPIOD->MODER |= 0x80000000;
			disableSYSTIMER5();
			TIM4->CCER |= (TIM_CCER_CC4E);	
			TIM4->CCR4 = D;
			break;
		}	
		
		
	}
}

void BlinkPwmState(uint16_t i, uint16_t O, uint16_t P, uint16_t d)
{
	uint16_t D = 1000-10*d;

	TIM4->CNT = 0x0000;												// 
	TIM4->EGR |= TIM_EGR_UG;	
	TIM4->DIER = 0x0001;												// enable 
					
	NVIC_SetPriority(TIM4_IRQn, 0);
	NVIC_EnableIRQ(TIM4_IRQn);										//
	TIM4->CR1 |= TIM_CR1_CEN;
	setB1(P-O);
	setD1(1);           							   								
	       							   								
	RCC->APB1ENR |= RCC_APB1ENR_TIM4EN; 							// enable TIM4 on APB1 
	TIM4->PSC = 0x0054 - 0x0001;									// set TIM4 counting prescaler 
																		// 84MHz/84 = 1MHz -> count each 1us
	TIM4->ARR = 0x03E8;												// period of the PWM 1ms
	
	TIM4->CCR1 = 0x0000;											// duty cycle for the PWM set to 0%
	TIM4->CCR2 = 0x0000;
	TIM4->CCR3 = 0x0000;
	TIM4->CCR4 = 0x0000;
		
	TIM4->CCMR1 |= (TIM_CCMR1_OC1PE)|(TIM_CCMR1_OC1M_2)|(TIM_CCMR1_OC1M_1);
	TIM4->CCMR1 |= (TIM_CCMR1_OC2PE)|(TIM_CCMR1_OC2M_2)|(TIM_CCMR1_OC2M_1);	
	TIM4->CCMR2 |= (TIM_CCMR2_OC3PE)|(TIM_CCMR2_OC3M_2)|(TIM_CCMR2_OC3M_1);	
	TIM4->CCMR2 |= (TIM_CCMR2_OC4PE)|(TIM_CCMR2_OC4M_2)|(TIM_CCMR2_OC4M_1);					
																		// set PWM 1 mod, enable OC1PE preload mode 
																			
		// set active mode high for pulse polarity
	TIM4->CCER |= ((TIM_CCER_CC1P)|(TIM_CCER_CC2P)|(TIM_CCER_CC3P)|(TIM_CCER_CC4P));
	TIM4->CR1 |= (TIM_CR1_ARPE)|(TIM_CR1_URS);
		
		// update event, reload all config 
	TIM4->EGR |= TIM_EGR_UG;											
		// activate capture compare mode
	TIM4->CR1 |= TIM_CR1_CEN;		
	
	switch(i)
	{		
		case 0:
		{
			GPIOD->AFR[1] |= 0x00020000;
			GPIOD->MODER &= ~(0x03000000);
			GPIOD->MODER |= 0x02000000;
			disableSYSTIMER12();
			TIM4->CCER |= (TIM_CCER_CC1E);											
			//TIM4->CCR1 = D;
			setB1(P-O);
			setD1(1);  
				break;
		}
		case 1:
		{
			GPIOD->AFR[1] |= 0x00200000;
			GPIOD->MODER &= ~(0x0C000000);
			GPIOD->MODER |= 0x08000000;
			disableSYSTIMER3();
			TIM4->CCER |= (TIM_CCER_CC2E);	
			TIM4->CCR2 = D;
			break;
		}
		case 2:
		{
			GPIOD->AFR[1] |= 0x02000000;
			GPIOD->MODER &= ~(0x30000000);
			GPIOD->MODER |= 0x20000000;
			disableSYSTIMER2();
			TIM4->CCER |= (TIM_CCER_CC3E);	
			TIM4->CCR3 = D;
			break;
		}
		case 3:
		{
			GPIOD->AFR[1] |= 0x20000000;
			GPIOD->MODER &= ~(0xC0000000);
			GPIOD->MODER |= 0x80000000;
			disableSYSTIMER5();
			TIM4->CCER |= (TIM_CCER_CC4E);	
			TIM4->CCR4 = D;
			break;
		}	
		
		
	}  
		
}

void ispisi(char line[], int tmp)
{
	printUSART2("\n %d, %d\n", g_usart2_ridx, tmp);
		while(tmp <= g_usart2_ridx)
		{
			printUSART2("%c", line[tmp]);
			
			tmp++;
		}
	printUSART2("\n gotovo\n");
}

void blinkState(uint16_t i, uint16_t O, uint16_t P)
{     							   								
		switch(i)
		{
			case 0:
			{
				GPIOD->MODER &= ~(0x03000000);
				GPIOD->MODER |= 0x01000000;
				if(P>O)
				{					
					RCC->APB1ENR |= RCC_APB1ENR_TIM12EN;
					
					TIM12->CR1 |= TIM_CR1_CEN;	 								// 
					TIM12->PSC = 0x0054-0x0001;											// 
																						// 
					TIM12->ARR = 0x03E8;												// 
					TIM12->CR1 = 0x0084;													// 
																						//
					TIM12->CR2 = 0x0000;
					TIM12->CNT = 0x0000;												// 
					TIM12->EGR |= TIM_EGR_UG;	
					TIM12->DIER = 0x0001;												// enable 
					
					NVIC_SetPriority(TIM8_BRK_TIM12_IRQn, 0);
					NVIC_EnableIRQ(TIM8_BRK_TIM12_IRQn);										//
					TIM12->CR1 |= TIM_CR1_CEN;
					setB1(P-O);
					setD1(1);
				}
				break;
			}
			case 1:
			{
				
				GPIOD->MODER &= ~(0x0C000000);
				GPIOD->MODER |= 0x04000000;
				if(P>O)
				{	
					RCC->APB1ENR |= RCC_APB1ENR_TIM3EN; 								// 
	
					TIM3->CR1 |= TIM_CR1_CEN;
					TIM3->PSC = 0x0054-0x0001;											// 
																						// 
					TIM3->ARR = 0x03E8;													// 
					TIM3->CR1 = 0x0084;													// 
																						//
					TIM3->CR2 = 0x0000;
					TIM3->CNT = 0x0000;													// 
					TIM3->EGR |= TIM_EGR_UG;											//
					TIM3->DIER = 0x0001;												// enable 
					
					NVIC_SetPriority(TIM3_IRQn, 0);
					NVIC_EnableIRQ(TIM3_IRQn);
					TIM3->CR1 |= TIM_CR1_CEN;

					setB2(P-O);
					setD2(1);
					
				}		
				break;
			}
			case 2:
			{
				GPIOD->MODER &= ~(0x30000000);
				GPIOD->MODER |= 0x10000000;
				if(P>O)
				{	
					RCC->APB1ENR |= RCC_APB1ENR_TIM2EN; 								// 
	
					TIM2->CR1 |= TIM_CR1_CEN;
					TIM2->PSC = 0x0054-0x0001;											// 
																						// 
					TIM2->ARR = 0x03E8;													// 
					TIM2->CR1 = 0x0084;													// 
																						//
					TIM2->CR2 = 0x0000;
					TIM2->CNT = 0x0000;													// 
					TIM2->EGR |= TIM_EGR_UG;											//
					TIM2->DIER = 0x0001;												// enable 
					
					NVIC_SetPriority(TIM2_IRQn, 0);
					NVIC_EnableIRQ(TIM2_IRQn);
					TIM2->CR1 |= TIM_CR1_CEN;
					setB3(P-O);
					setD3(1);
				}
				break;
			}
			case 3:
			{
				GPIOD->MODER &= ~(0xC0000000);
				GPIOD->MODER |= 0x40000000;
				if(P>O)
				{	
					RCC->APB1ENR |= RCC_APB1ENR_TIM5EN; 								// 
					
					TIM5->CR1 |= TIM_CR1_CEN;
					TIM5->PSC = 0x0054-0x0001;											// 
																						// 
					TIM5->ARR = 0x03E8;													// 
					TIM5->CR1 = 0x0084;													// 
																						//
					TIM5->CR2 = 0x0000;
					TIM5->CNT = 0x0000;													// 
					TIM5->EGR |= TIM_EGR_UG;											//
					TIM5->DIER = 0x0001;												// enable 
					
					NVIC_SetPriority(TIM5_IRQn , 0);
					NVIC_EnableIRQ(TIM5_IRQn );
					TIM5->CR1 |= TIM_CR1_CEN;

					setB4(P-O);
					setD4(1);
				}
				break;
			}
		}
		
}
int isLed(char number)
{
	if(number=='0' || number=='1'|| number=='2' || number=='3')
		return 1;
	return 0;
}

int isOn(char number)
{
	if(number=='0' || number=='1')
		return 1;
	return 0;
}

int numberOfChars(int a, char b)
{
		int k=0;
		while(g_usart2_buffer[a] != b)
		{
			if(g_usart2_buffer[a]>57 && g_usart2_buffer[a]<48)
				return 0;
			
			++k;
			++a;
		}
	return k;
	
}

int decValue(char num)
{
	if(num=='1')
		return 1;
	else if(num=='2')
		return 2;
	else if(num=='3')
		return 3;
	else if(num=='4')
		return 4;
	else if(num=='5')
		return 5;
	else if(num=='6')
		return 6;
	else if(num=='7')
		return 7;
	else if(num=='8')
		return 8;
	else if(num=='9')
		return 9;
	else if(num=='0')
		return 0;
	else if(num=='a' || num=='A')
		return 10;
	else if(num=='b' || num=='B')
		return 11;
	else if(num=='c' || num=='C')
		return 12;
	else if(num=='d' || num=='D')
		return 13;
	else if(num=='e' || num=='E')
		return 14;
	else if(num=='f' || num=='F')
		return 15;	
}


void makeNumber(int k)
{
		if(k>0 && k<3)
		{
			int i;
			for(i=0; i<8-k; ++i)
				number[i] = 0;
		}
		else if(k>2 && k<5)
		{
			int i;
			for(i=0; i<8-k; ++i)
				number[i] = 0;
		}
		else
		{
			int i;
			for(i=0; i<8-k; ++i)
				number[i] = 0;
		}
}

int hexNumber(int a, char b,int bool)
{
		int k = 0;
		int m = a;
		while(g_usart2_buffer[a] != b)
		{
			if((g_usart2_buffer[a]>57 && g_usart2_buffer[a]<48) || (g_usart2_buffer[a]<64 && g_usart2_buffer[a]>71) || (g_usart2_buffer[a]<96 && g_usart2_buffer[a]>103))
				return 0;				
			++k;
			++a;
		}
		if(bool)
		{
			makeNumber(k);
			int j=8-k;
			while(g_usart2_buffer[m] != b)
			{
				if((g_usart2_buffer[m]>57 && g_usart2_buffer[m]<48) || (g_usart2_buffer[m]<64 && g_usart2_buffer[m]>71) || (g_usart2_buffer[m]<96 && g_usart2_buffer[m]>103))
					return 0;
				number[j] = decValue(g_usart2_buffer[m]);	
				++j;					
				++m;
			}
		}
	return k;		
}

int powValue(int a, int b)	
{
	if(b==0)
	return 1;
	int c=1;
	while(b>0)
		{
				c*=a;
				--b;
		}
		return c;
}

void parsiraj(char line[],int tmp)
{
	volatile int state=0;
	char led;
	int O=0,P=0;
	while(tmp<=g_usart2_ridx)
	{					
		switch(state)
		{
			case 0:
			{
				if(line[tmp]=='l')
					state=4;
				else if(line[tmp]=='h')
					state=1;
				else if(line[tmp] == 'a')
					state = 30;
				else if(line[tmp] == 'w')
					state = 44;
				else if(line[tmp] == 'r')
					state = 57;
				else if(line[tmp] == 't')
					state = 68;
				else
					state=99;
				break;
			}
			case 1:
			{
				if(line[tmp]=='e')
					state=2;
				else
					state=99;
			break;
			}
			case 2:
			{
				if(line[tmp]=='l')
					state=3;
				else
					state=99;
			break;
			}
			case 3:
			{
				if(line[tmp]=='p')
				{
					if(line[tmp+1]=='\r')
						{
						printUSART2("\nHELP:\n\nThis is a program that parses our commands which control the STM32F4 device. We use 4 LED diodes, which we can set in 3 different states.");
						printUSART2("\n\nFirst command is: led s N S.\nThis is a command which sets the N(0, 1, 2, 3) diode in static state S(0-off, 1-on).\nIf the command is written correctly we should get the message which diode is set, and in which state.\nFor example:\nLED: [1] is set in static state 1.");
						printUSART2("\n\nNext command is: led b N O P.\nThis is a command which sets the N(0, 1, 2, 3) diode in blink state, and the O(ms) is interval of the on state of LED diode, and the P(ms) is full interval during which it is set first on/off once.\nIf the command is written correctly we should get the message which diode is set, and in which state.\nFor example:\nLED: [0] is set to blink state on time [50]ms and period[100]ms.");
						printUSART2("\n\nNext command is: led p N D.\nThis is a command which sets the N(0, 1, 2, 3) diode in pwm state where D(0-100) is duty cicle of period which is set on 1ms(1/1000 second).\nIf the command is written correctly we should get the message which diode is set, and in which state.\nFor example:\nLED: [3] is set to pwm state in duty cicle [20].");
						printUSART2("\n\nNext command is : apa s C.\nThis is a command wich sets the APA102C smart LED diode in color defined in C parametar. The C parametar should be 32-bit number that defines a color in RGB color system.");
						printUSART2("\n\nNext command is : apa b C O P.\nThis is a command wich sets the APA102C smart LED diode in color defined in C parametar. The C parametar should be 32-bit number that defines a color in RGB color system.\nThe diode should also be set in blink state and the O(ms) is interval of the on state of LED diode, and the P(ms) is full interval during which it is set first on/off once.");
						printUSART2("\n\nNext command is : ws s C.\nThis is a command wich sets the WS2812B smart LED diode in color defined in C parametar. The C parametar should be 32-bit number that defines a color in RGB color system.");
						printUSART2("\n\nNext command is : ws b C O P.\nThis is a command wich sets the WS2812B smart LED diode in color defined in C parametar. The C parametar should be 32-bit number that defines a color in RGB color system.\nThe diode should also be set in blink state and the O(ms) is interval of the on state of LED diode, and the P(ms) is full interval during which it is set first on/off once.");
						printUSART2("\n\nNext command is : rtc r.\nThis is a command which gives us the representation of time and date in human readable format of RTC register.");
						printUSART2("\n\nNext command is : rtc w T.\nThis is a command which gives us the representation of a date and time, which we send as T parametar, in RTC-TR and RTC-DR registers.");
						printUSART2("\n\nNext command is : lis r.\nThis is a command which gives us the angle of STM32f4 device using the LIS302DL accelometar.");
						printUSART2("\n\nNext command is : temp r.\nThis is a command which gives us the temperature of chip in °C.");
						printUSART2("\n\nIf the command is written incorrectly we should get the message:\nERROR: unknown command.\nIf some arguments are written incorrectly we should get the message:\nSome of the arguments are incorrect.");
						printUSART2("\n\nThe help command gives us this explenation on how to enter commands and how does the parser work.\n");
						
						return;
					}
					else
						state=99;
				}
				else
					state=99;
			break;
			}
			case 4:
			{
				if(line[tmp]=='e')
					state = 5;
				else if(line[tmp]=='i')
					state = 64;
				else
					state=99;
			break;
			}
			case 5:
			{
				if(line[tmp]=='d')
					state=6;
				else
					state=99;
			break;
			}
			case 6:
			{
				if(line[tmp]==' ')
					state=7;
				else
					state=99;
			break;
			}
			case 7:
			{
				if(line[tmp]=='s')
					state=8;
				else if(line[tmp]=='p')
					state=12;
				else if(line[tmp]=='b')
					state=16;
				else if(line[tmp]=='m')
					state=22;
				else
					state=99;
			break;
			}
			case 8:
			{
				if(line[tmp]==' ')
					state=9;
				else
					state=99;
			break;
			}
			case 9:
			{
				if(isLed(line[tmp]))
				{
					led =line[tmp];
					state=10;
				}
				else
					state=98;
			break;
			}
			case 10:
			{
				if(line[tmp]==' ')
					state=11;
				else
					state=99;
			break;
			}
			case 11:
			{
				if(isOn(line[tmp]))
				{
					if(line[tmp+1]=='\r')
					{	staticState(led-'0', line[tmp]-'0');
						printUSART2("\nLED: [%d] set to static state [%d].\n", led-'0', line[tmp]-'0');
						return;
					}
					else
					{
						state=98;
						break;
					}
				}
				else{
					state=98;
					break;
				}
			}
			case 12:
			{
				if(line[tmp]==' ')
					state=13;
				else
					state=99;
			break;
			}
			case 13:
			{
				if(isLed(line[tmp]))
				{
					led =line[tmp];
					state=14;
				}
				else
					state=99;
			break;
			}
			case 14:
			{
				if(line[tmp]==' ')
					state=15;
				else
					state=99;
			break;
			}
			case 15:
			{
				int k = numberOfChars(tmp, '\r');
				if(k > 3 || k==0)
				{
					state = 98;
					break;
				}
				else
				{
					int i,a=1,num=0;
					for(i=tmp+k-1;i>=tmp;--i)
					{
						num+=(line[i]-'0')*a;
						a*=10;
					}
					if(num>100){
						state = 98;
						break;
					}
					pwmState(led-'0',num);
					printUSART2("\nLED: [%d] set to pwm state, duty cycle [%d].\n", led-'0',num);
					return;
				}
			break;
			}
			case 16:
			{
				if(line[tmp]==' ')
					state=17;
				else
					state=99;
			break;
			}
			case 17:
			{
				if(isLed(line[tmp]))
				{
					led =line[tmp];
					state=18;
				}
				else
					state=99;
			break;
			}
			case 18:
			{
				if(line[tmp]==' ')
					state=19;
				else
					state=99;
			break;
			}
			case 19:
			{
				int k = numberOfChars(tmp,' ');
				if(k > 3 || k==0)
				{
					state = 98;
					break;
				}
				else
				{
					int i,a=1,num=0;
					for(i=tmp+k-1;i>=tmp;--i)
					{
						num+=(line[i]-'0')*a;
						a*=10;
					}
					O=num;
					tmp=tmp+k-1;
					state=20;
					break;
				}
			}	
			case 20:
			{
				if(line[tmp]==' ')
					state=21;
				else
					state=99;
			break;
			}
			case 21:
			{
				int k = numberOfChars(tmp,'\r');
				if(k > 4 || k==0)
				{
					state = 98;
					break;
				}
				else
				{
					int i,a=1,num=0;
					for(i=tmp+k-1;i>=tmp;--i)
					{
						num+=(line[i]-'0')*a;
						a*=10;
					}
					P=num;
					tmp=tmp+k;	
					if(line[tmp]!='\r')
					{
						state=98;
						break;
					
					}
					blinkState(led-'0',O,P);
					printUSART2("\nLED: [%d] set to blink state, on time [%d]ms and period [%d]ms.\n", led-'0',O,P);
					return;
				}
			}
			case 30:
			{
					if(line[tmp] == 'p')
						state = 31;
					else
						state = 99;
				break;
			}
			case 31:
			{
					if(line[tmp] == 'a')
						state = 32;
					else
						state = 99;
				break;
			}
			case 32:
			{
					if(line[tmp] == ' ')
						state = 33;
					else
						state = 99;
				break;
			}
			case 33:
			{
					if(line[tmp] == 's')
						state = 34;
					else if(line[tmp] == 'b')
						state = 37;
					else
						state = 99;
				break;
			}
			case 34:
			{
					if(line[tmp] == ' ')
						state = 36;
					else
						state = 99;
				break;
			}
			case 36:
			{
				int i;
				for(i=0;i<8;++i)
						number[i]=0;
				int k = hexNumber(tmp, '\r',1);
				if(k<0 || k>8)
				{
					state = 98;
					break;
				}
				else
				{	
					uint8_t red = 0x00000000;
					uint8_t green = 0x00000000;
					uint8_t blue = 0x00000000;
					for(i=2; i<8; ++i)
					{
							if(i<4)
							{
									red |= number[i];
									if(i != 3)
										red = red<<4;
							}
							else if(i<6)
							{
									green |= number[i];
									if(i != 5)
										green = green<<4;
							}
							else
							{
									blue |= number[i];
									if(i != 7)
										blue = blue<<4;
							}
					}
					SPI1_CS_HIGH;
					
					RCC->APB1ENR &= ~(RCC_APB1ENR_TIM13EN); 								// 
	
					TIM13->CR1 &= ~(TIM_CR1_CEN);
					TIM13->PSC &= ~(0x0054-0x0001);											// 
																		// 
					TIM13->ARR &= ~(0x03E8);													// 
					TIM13->CR1 &= ~(0x0084);													// 
																		//
					TIM13->CR2 &= ~(0x0000);
					TIM13->CNT &= ~(0x0000);													// 
					TIM13->EGR &= ~(TIM_EGR_UG);											//
					TIM13->DIER &= ~(0x0001);												// enable 
	
					NVIC_DisableIRQ(TIM8_UP_TIM13_IRQn);
					TIM13->CR1 &= ~(TIM_CR1_CEN);
					setD5(0);
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
					t=0x00000000;
					t=(t|red)<<8;
					t=(t|green)<<8;
					t=(t|blue);
					
					printUSART2("\nAPA: color [0x%x] [RGB] static state\n",t);
					SPI1_CS_LOW;				
					return;
				}
			}
			case 37:
			{
					if(line[tmp] == ' ')
						state = 39;
					else
						state = 99;
				break;
			}
			case 39:
			{
				int i;
				for(i=0;i<8;++i)
						number[i]=0;
				int k = hexNumber(tmp, ' ',1);
				if(k > 8 || k==0)
				{
					state = 98;
					break;
				}
				else
				{
					for(i=2; i<8; ++i)
					{
							if(i<4)
							{
									APAr |= number[i];
									if(i != 3)
										APAr = APAr<<4;
							}
							else if(i<6)
							{
									APAg |= number[i];
									if(i != 5)
										APAg = APAg<<4;
							}
							else
							{
									APAb |= number[i];
									if(i != 7)
										APAb = APAb<<4;
							}
					}
					tmp = tmp + k -1;
					state = 40;
				}
			break;
			}
			case 40:
			{
				if(line[tmp]==' ')
					state=41;
				else
					state=99;
			break;
			}
			case 41:
			{
				int k = numberOfChars(tmp,' ');
				if(k > 3 || k==0)
				{
					state = 98;
					break;
				}	
				else
				{
					int i,a=1,num=0;
					for(i=tmp+k-1;i>=tmp;--i)
					{
						num+=(line[i]-'0')*a;
						a*=10;
					}
					O=num;
					tmp=tmp+k-1;
					state=42;
					break;
				}
			}	
			case 42:
			{
				
				if(line[tmp]==' ')
					state=43;
				else
					state=99;
			break;
			}
			case 43:
			{
				int k = numberOfChars(tmp,'\r');
				if(k > 4 || k==0)
				{
					state = 98;
					break;
				}
				else
				{
					int i,a=1,num=0;
					for(i=tmp+k-1;i>=tmp;--i)
					{
						num+=(line[i]-'0')*a;
						a*=10;
					}
					P=num;
					tmp=tmp+k;	
					if(line[tmp]!='\r')
					{
						state=98;
						break;
					
					}
					setP_APA(P-O);
					uint32_t t=0x00000000;
					t=(t|APAr)<<8;
					t=(t|APAg)<<8;
					t=(t|APAb);
					RCC->APB1ENR |= RCC_APB1ENR_TIM13EN; 								// 
	
					TIM13->CR1 |= TIM_CR1_CEN;
					TIM13->PSC = 0x0054-0x0001;											// 
																		// 
					TIM13->ARR = 0x03E8;													// 
					TIM13->CR1 = 0x0084;													// 
																						//
					TIM13->CR2 = 0x0000;
					TIM13->CNT = 0x0000;													// 
					TIM13->EGR |= TIM_EGR_UG;											//
					TIM13->DIER = 0x0001;												// enable 
					
					NVIC_SetPriority(TIM8_UP_TIM13_IRQn, 0);
					NVIC_EnableIRQ(TIM8_UP_TIM13_IRQn);
					TIM13->CR1 |= TIM_CR1_CEN;

					setD5(1);
					printUSART2("\nAPA: color [0x%x][RGB] blink state, on time [%d]ms & period [%d]ms\n",t,O,P);
					return;
				}
			}		
			case 44:
			{
				if(line[tmp] == 's')
						state = 45;
				else
						state = 99;
				break;									
			}			
			case 45:
			{
				if(line[tmp] == ' ')
						state = 46;
				else
						state = 99;
				break;									
			}			
			case 46:
			{
					if(line[tmp] == 's')
						state = 47;
					else if(line[tmp] == 'b')
						state = 50;
					else
						state = 99;
				break;
			}
			case 47:
			{
					if(line[tmp] == ' ')
						state = 49;
					else
						state = 99;
				break;
			}
			case 49:
			{
				int i;
				for(i=0;i<8;++i)
						number[i]=0;
				int k = hexNumber(tmp, '\r',1);
				if(k<0 || k>8)
				{
					state = 98;
					break;
				}
				else
				{	
					uint8_t red = 0x00000000;
					uint8_t green = 0x00000000;
					uint8_t blue = 0x00000000;
					
					for(i=2; i<8; ++i)
					{
							if(i<4)
							{
									red |= number[i];
									if(i != 3)
										red = red<<4;
							}
							else if(i<6)
							{
									green |= number[i];
									if(i != 5)
										green = green<<4;
							}
							else
							{
									blue |= number[i];
									if(i != 7)
										blue = blue<<4;
							}
					}
					
					uint8_t Red[7]={0x00000000};
					uint8_t Blue[7]={0x00000000};
					uint8_t Green[7]={0x00000000};
					
					uint8_t a=0x00000001;
					for(i=0;i<8;++i)
					{
						if(red&a)
							Red[i]=0xf0;
						else
							Red[i]=0x80;
						a=a<<1;
					}
					a=0x00000001;
					for(i=0;i<8;++i)
					{
						if(blue&a)
							Blue[i]=0xf0;
						else
							Blue[i]=0x80;
						a=a<<1;
					}
					
					a=0x00000001;
					for(i=0;i<8;++i)
					{
						if(green&a)
							Green[i]=0xf0;
						else
							Green[i]=0x80;
						a=a<<1;
					}
					a=0x00000001;
					int j=7;
					for(i=0;i<7;++i)
					{
						uint8_t b=Red[i+1];
						Red[i]=Red[i] | (b>>j);
						Red[i+1]=Red[i+1]<<(i+1);
						--j;
					}
					
					j=7;
					for(i=0;i<7;++i)
					{
						uint8_t b=Blue[i+1];
						Blue[i]=Blue[i] | (b>>j);
						Blue[i+1]=Blue[i+1]<<(i+1);
						--j;
					}
					j=7;
					for(i=0;i<7;++i)
					{
						uint8_t b=Green[i+1];
						Green[i]=Green[i] | (b>>j);
						Green[i+1]=Green[i+1]<<(i+1);
						--j;
					}
					t=0x00000000;
					t=(t|red)<<8;
					t=(t|green)<<8;
					t=(t|blue);
					
					RCC->APB1ENR &= ~(RCC_APB1ENR_TIM14EN);
	
					TIM14->CR1 &= ~(TIM_CR1_CEN);	 								// 
					TIM14->PSC &= ~(0x0054-0x0001);											// 
																						// 
					TIM14->ARR &= ~(0x03E8);												// 
					TIM14->CR1 &= ~(0x0084);													// 
																						//
					TIM14->CR2 &= ~(0x0000);
					TIM14->CNT &= ~(0x0000);												// 
					TIM14->EGR &= ~(TIM_EGR_UG);	
					TIM14->DIER &= ~(0x0001);												// enable 
					NVIC_DisableIRQ(TIM8_TRG_COM_TIM14_IRQn);
					TIM14->CR1 &= ~(TIM_CR1_CEN);
					
					setD6(0);
					SPI1_CS_HIGH;
					for(i=0;i<7;++i)
						txByteSPI1(Green[i]);
					
					for(i=0;i<7;++i)
						txByteSPI1(Red[i]);
					
					for(i=0;i<7;++i)
						txByteSPI1(Blue[i]);
						
					SPI1_CS_LOW;				
					printUSART2("\nWS: color [0x%x] [RGB] static state\n",t);
					
					return;
				}
			}
			case 50:
			{
					if(line[tmp] == ' ')
						state = 52;
					else
						state = 99;
				break;
			}
			case 52:
			{
				int i;
				for(i=0;i<8;++i)
						number[i]=0;
				int k = hexNumber(tmp, ' ',1);
				if(k<0 || k>8)
				{
					state = 98;
					break;
				}
				else
				{	
					uint8_t red = 0x00000000;
					uint8_t green = 0x00000000;
					uint8_t blue = 0x00000000;
					
					for(i=2; i<8; ++i)
					{
							if(i<4)
							{
									red |= number[i];
									if(i != 3)
										red = red<<4;
							}
							else if(i<6)
							{
									green |= number[i];
									if(i != 5)
										green = green<<4;
							}
							else
							{
									blue |= number[i];
									if(i != 7)
										blue = blue<<4;
							}
					}
					
					uint8_t a=0x00000001;
					for(i=0;i<8;++i)
					{
						if(red&a)
							RedNiz[i]=0xf0;
						else
							RedNiz[i]=0x80;
						a=a<<1;
					}
					a=0x00000001;
					for(i=0;i<8;++i)
					{
						if(blue&a)
							BlueNiz[i]=0xf0;
						else
							BlueNiz[i]=0x80;
						a=a<<1;
					}
					
					a=0x00000001;
					for(i=0;i<8;++i)
					{
						if(green&a)
							GreenNiz[i]=0xf0;
						else
							GreenNiz[i]=0x80;
						a=a<<1;
					}
					a=0x00000001;
					int j=7;
					for(i=0;i<7;++i)
					{
						uint8_t b=RedNiz[i+1];
						RedNiz[i]=RedNiz[i] | (b>>j);
						RedNiz[i+1]=RedNiz[i+1]<<(i+1);
						--j;
					}
					j=7;
					for(i=0;i<7;++i)
					{
						uint8_t b=BlueNiz[i+1];
						BlueNiz[i]=BlueNiz[i] | (b>>j);
						BlueNiz[i+1]=BlueNiz[i+1]<<(i+1);
						--j;
					}
					j=7;
					for(i=0;i<7;++i)
					{
						uint8_t b=GreenNiz[i+1];
						GreenNiz[i]=GreenNiz[i] | (b>>j);
						GreenNiz[i+1]=GreenNiz[i+1]<<(i+1);
						--j;
					}
					t=0x00000000;
					t=(t|red)<<8;
					t=(t|green)<<8;
					t=(t|blue);
					tmp=tmp+k-1;
					state=53;
				}
			break;
			}
			case 53:
			{
				if(line[tmp]==' ')
					state=54;
				else
					state=99;
			break;
			}
			case 54:
			{
				int k = numberOfChars(tmp,' ');
				if(k > 3 || k==0)
				{
					state = 98;
					break;
				}	
				else
				{
					int i,a=1,num=0;
					for(i=tmp+k-1;i>=tmp;--i)
					{
						num+=(line[i]-'0')*a;
						a*=10;
					}
					O=num;
					tmp=tmp+k-1;
					state=55;
					break;
				}
			}	
			case 55:
			{
			
				if(line[tmp]==' ')
					state=56;
				else
					state=99;
			break;
			}
			case 56:
			{
			
				int k = numberOfChars(tmp,'\r');
				if(k > 4 || k==0)
				{
					state = 98;
					break;
				}
				else
				{
					int i,a=1,num=0;
					for(i=tmp+k-1;i>=tmp;--i)
					{
						num+=(line[i]-'0')*a;
						a*=10;
					}
					P=num;
					tmp=tmp+k;	
					if(line[tmp]!='\r')
					{
						state=98;
						break;
					
					}
					RCC->APB1ENR |= RCC_APB1ENR_TIM14EN;	
					TIM14->CR1 |= TIM_CR1_CEN;	 								// 
					TIM14->PSC = 0x0054-0x0001;											// 
																						// 
					TIM14->ARR = 0x03E8;												// 
					TIM14->CR1 = 0x0084;													// 
																						//
					TIM14->CR2 = 0x0000;
					TIM14->CNT = 0x0000;												// 
					TIM14->EGR |= TIM_EGR_UG;	
					TIM14->DIER = 0x0001;												// enable 
					
					NVIC_SetPriority(TIM8_TRG_COM_TIM14_IRQn, 0);
					NVIC_EnableIRQ(TIM8_TRG_COM_TIM14_IRQn);										//
					TIM14->CR1 |= TIM_CR1_CEN;
					setBlueArray(BlueNiz);
					setRedArray(RedNiz);
					setGreenArray(GreenNiz);
					setP_WS(P-O);
					setD6(1);
					printUSART2("\nWS: color [0x%x][RGB] blink state, on time [%d]ms & period [%d]ms\n",t,O,P);
					return;
				}
			}	
			case 57:
			{
				if(line[tmp]=='t')
					state = 58;
				else
					state=99;
			break;
			}
			case 58:
			{
				if(line[tmp]=='c')
					state=59;
				else
					state=99;
			break;
			}
			case 59:
			{
				if(line[tmp]==' ')
					state=60;
				else
					state=99;
			break;
			}
			case 60:
			{
				if(line[tmp]=='r')
					state=61;
				else if(line[tmp]='w')
					state=62;
				else
					state=99;
			break;
			}
			case 61:
			{
				if(line[tmp]!='\r')
				{
					state=99;
					break;
				}
			tM_in=RTC->TR;
			dT_in=RTC->DR;	
			out = dT_in >> 16; 
			out &= 0x00ff;
			timeinfo->tm_year=((out&0x00f0)>>4)*10+(out&0x000f)+70;
			out = dT_in >> 8; 
			out &= 0x001f;
			timeinfo->tm_mon=((out&0x0010)>>4)*10+(out&0x000f);
			out = dT_in >> 0; 
			out &= 0x003f;
			timeinfo->tm_mday=((out&0x0030)>>4)*10+(out&0x000f);
			out = tM_in >> 16; 
			out &= 0x003f;
			timeinfo->tm_hour=((out&0x0030)>>4)*10+(out&0x000f);
			out = tM_in >> 8; 
			out &= 0x007f;
			timeinfo->tm_min=((out&0x0070)>>4)*10+(out&0x000f);
			out = tM_in >> 0; 
			out &= 0x007f;
			timeinfo->tm_sec=((out&0x0070)>>4)*10+(out&0x000f);
			
			
			printUSART2("\n HRF:%d-%d-%d %d:%d:%d\n", timeinfo->tm_year+1900, timeinfo->tm_mon, timeinfo->tm_mday, timeinfo->tm_hour+2, timeinfo->tm_min, timeinfo->tm_sec );
			return;
			}
			case 62:
			{
				if(line[tmp]==' ')
					state=63;
				else
					state=99;
			break;
			}		
			case 63:
			{	
				int k = hexNumber(tmp,'\r',0);
				if(k != 8 )
				{
					state = 98;
					break;
				}
				else
				{
					int i,a=0, num=0;
					for(i=tmp+k-1;i>=tmp;--i)
					{
						
						num+=decValue(line[i])*powValue(16,a);
						++a;
					}
					rawtime = num;
					timeinfo = localtime (&rawtime);
					uint32_t tmp=0;
					uint32_t in = 0x00000000;
					uint32_t in1 = 0x00000000;
					tmp=(timeinfo->tm_year-70)/10;
					in|=tmp;
					
					in=in<<4;
					
					tmp=(timeinfo->tm_year-70)%10;
					in|=tmp;
					in=in<<4;
					/*printf("\n %08x %d\n",in,tmp);
					
					tmp=timeinfo->tm_wday;
					in|=tmp;
					printf("\n %08x %d \n",in,tmp);
					*///in=in<<4;
					
					tmp=(timeinfo->tm_mon+1)/10;
					in|=tmp;
					in=in<<4;
				//printf("\n %08x %d\n",in,tmp);
					
					tmp=(timeinfo->tm_mon+1)%10;
					in|=tmp;
					//printf("\n %08x %d\n",in,tmp);
					in=in<<4;
					
					tmp=timeinfo->tm_mday/10;
					in|=tmp;
				//	printf("\n %08x %d\n",in,tmp);
					in=in<<4;
					//printf("\n %08x %d\n",in,tmp);
					
					tmp=timeinfo->tm_mday%10;
					in|=tmp;
					//printf("\n %08x %d\n",in,tmp);
					
					//printf("\n ---------------------------------------------------------------- \n");
					tmp=timeinfo->tm_hour/10;
					in1|=tmp;
					//printf("\n %x \n",in1);
					in1=in1<<4;
					tmp=timeinfo->tm_hour%10;
					in1|=tmp;
					//printf("\n %x \n",in1);
					in1=in1<<4;
					tmp=(timeinfo->tm_min)/10;
					in1|=tmp;
				//	printf("\n %x \n",in1);
					in1=in1<<4;
					tmp=timeinfo->tm_min%10;
					in1|=tmp;
					//printf("\n %x \n",in1);
					in1=in1<<4;
					tmp=(timeinfo->tm_sec)/10;
					in1|=tmp;
					//printf("\n %x \n",in1);
					in1=in1<<4;
					tmp=timeinfo->tm_sec%10;
					in1|=tmp;
				//	printf("\n %x \n",in1);
					RTC->WPR = 0xCA;													// disable write protection for RTC
					RTC->WPR = 0x53;
					RTC->ISR |= RTC_ISR_RSF;											// enable calendar and time shadow register syncronisation
					while((RTC->ISR & RTC_ISR_RSF) != RTC_ISR_RSF);

					RTC->ISR |= RTC_ISR_INIT;											// enter initialization mode
					while((RTC->ISR & RTC_ISR_INITF) != RTC_ISR_INITF);					// wait for initialization
					
					RTC->PRER =  0x00630000;											// PREDIV_A = 99, must be completed in two write cycles
					RTC->PRER |= 0x0000270F;											// PREDIV_S = 79999
																						// (PREDIV_A+1)*(PREDIV_S+1) = 8MHz == HSE
					RTC->TR = in1;
					RTC->DR = in;											    // enter date values in shadow register
					RTC->SSR = 0x00000000;
					
					//RTC->CR &= ~(RTC_CR_TSE);											// disable time stamp
					RTC->ISR &= ~(RTC_ISR_INIT);										// exit initialization mode
					RTC->CR &= ~(RTC_CR_TSIE);											// disable timestamp interrupt
					
					RTC->WPR = 0xFF;		
					printUSART2("\n");
			}
				
				return;
			}
			case 64:
			{
				if(line[tmp]=='s')
					state=65;
				else
					state=99;
			break;
			}
			case 65:
			{
				if(line[tmp]==' ')
					state=66;
				else
					state=99;
			break;
			}
			case 66:
			{
				if(line[tmp]=='r')
					state=67;
				else
					state=99;
			break;
			}	
			case 67:
			{
				printUSART2("\n Lis r\n");
				if(line[tmp]!='\r')
				{
						state=99;
						break;
				}																// 
				initLIS302DL();
				getDataLIS302DL(accel_data);
				float ax = (float)accel_data[0];
				float ay = (float)accel_data[1];
				float az = (float)accel_data[2];
				float rho = atanf(ax/sqrt(ay*ay + az*az))*180/3.14;
				float phi = atanf(ay/sqrt(ax*ax + az*az))*180/3.14;
				float theta = atanf(sqrt(ay*ay + ax*ax)/az)*180/3.14;
				printUSART2("\nLIS302: \nThe angle of x is [%f] \nThe angle of y is [%f]\nThe angle of z is [%f]\n",rho, phi, theta);
				return;
			break;
			}
			case 68:
			{
				if(line[tmp]=='e')
					state=69;
				else
					state=99;
			break;
			}
			case 69:
			{
				if(line[tmp]=='m')
					state=70;
				else
					state=99;
			break;
			}
			case 70:
			{
				if(line[tmp]=='p')
					state=71;
				else
					state=99;
			break;
			}
			case 71:
			{
				if(line[tmp]==' ')
					state=72;
				else
					state=99;
			break;
			}
			case 72:
			{
				if(line[tmp]=='r')
					state=73;
				else
					state=99;
			break;
			}
			case 73:
			{
				if(line[tmp]!='\r')
					{
						state=99;
						break;
					}
				printUSART2("\nTemperature of chip: %d °C\n",(uint32_t)getADC1Temp());
				return;
			break;
			}		
			case 97:
			{
					printUSART2("\n 32 bit overfloww\n");
			return;
			}
			case 98:
			{
					printUSART2("\nSome of the arguments are incorrect\n");
			return;
			}
			case 99:
			{
					printUSART2("\nError: Unknown command\n");
			return;
			}
		}
		++tmp;
	}
	printUSART2("\nError: Unknown command\n");
}



void parser_function(uint8_t array[])
{
		parsiraj(array,z);
		z=g_usart2_ridx+1;
}

