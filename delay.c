#include "delay.h"

volatile uint32_t g_tim12_val = 0;
volatile uint32_t g_tim3_val = 0;
volatile uint32_t g_tim2_val = 0;
volatile uint32_t g_tim5_val = 0;
volatile uint32_t g_tim4_val = 0;
volatile uint32_t g_tim14_val = 0;
volatile uint32_t g_tim13_val = 0;
volatile uint32_t D1 = 0;
volatile uint32_t PERIOD[3];
volatile uint32_t PERIOD_APA;
volatile uint32_t PERIOD_WS;
volatile uint32_t D2 = 0;
volatile uint32_t D3 = 0;
volatile uint32_t D4 = 0;
volatile uint32_t D5 = 0;
volatile uint32_t D6 = 0;

uint32_t getD1(void)
{
	return D1;
}

uint32_t getD5(void)
{
	return D5;
}

uint32_t getD2(void)
{
	return D2;
}

uint32_t getD3(void)
{
	return D3;
}

uint32_t getD4(void)
{
	return D4;
}

uint32_t getD6(void)
{
	return D6;
}

void setB1(uint32_t b1)
{
		PERIOD[0] = b1;
}

void setB2(uint32_t b2)
{
		PERIOD[1] = b2;
}

void setB3(uint32_t b3)
{
		PERIOD[2] = b3;
}

void setB4(uint32_t b4)
{
		PERIOD[3] = b4;
}
void setP_APA(uint32_t b5)
{
		PERIOD_APA = b5;
}

void setP_WS(uint32_t b6)
{
		PERIOD_WS = b6;
}

uint32_t getB1(void)
{
	return PERIOD[0];
}

uint32_t getB2(void)
{
	return PERIOD[1];
}

uint32_t getB3(void)
{
	return PERIOD[2];
}

uint32_t getB4(void)
{
	return PERIOD[3];
}

uint32_t getP_APA(void)
{
	return PERIOD_APA;
}

uint32_t getP_WS(void)
{
	return PERIOD_WS;
}


uint32_t setD1(uint32_t a)
{
	D1=a;
}

uint32_t setD2(uint32_t a)
{
	D2=a;
}

uint32_t setD3(uint32_t a)
{
	D3=a;
}

uint32_t setD4(uint32_t a)
{
	D4=a;
}
uint32_t setD5(uint32_t a)
{
	D5=a;
}

uint32_t setD6(uint32_t a)
{
	D6=a;
}


void delay_ms(uint32_t ms)
{/// delay in ms 
 
	RCC->APB1ENR |= RCC_APB1ENR_TIM12EN; 								// 
	TIM12->PSC = 0x0054 - 0x0001;										// APB1@42MHz
																		// 
	TIM12->ARR = 0x03E8;												// reload 1000 us
	TIM12->CR1 = 0x0084;												// ARPE On, CMS disable, Up counting

	TIM12->EGR |= TIM_EGR_UG;											// reload all config p363
	TIM12->CR1 |= TIM_CR1_CEN;											// start counter
	while(ms > 0)
	{
																		
		while((TIM12->SR & TIM_SR_UIF) == 0x0000);						// wait for update event
		
		TIM12->SR &= ~TIM_SR_UIF;										// clear the update event interrupt flag
		ms--;
	} 
	TIM12->CR1 &= ~TIM_CR1_CEN;											// stop counter 
	RCC->APB1ENR &= ~RCC_APB1ENR_TIM12EN;								// disable TIM 
}

void delay_us(uint32_t us)
{/// delay in us 
    
	RCC->APB1ENR |= RCC_APB1ENR_TIM12EN; 								//
	TIM12->PSC = 0x0001 - 0x0001;										// 
																		// 
	TIM12->ARR = 0x0054;												// reload value set to 1 us
	TIM12->CR1 = 0x0084;												// ARPE On, CMS disable, Up counting
																		// UEV disable, TIM4 enable(p392)

	TIM12->EGR |= TIM_EGR_UG;											//reload all config p363
	TIM12->CR1 |= TIM_CR1_CEN;											// start counter
	while(us > 0)
	{													
		while((TIM12->SR & TIM_SR_UIF) == 0x0000);						// wait for update event
		
		TIM12->SR &= ~TIM_SR_UIF;										// clear the update event interrupt flag
		us--;
	} 
	TIM12->CR1 &= ~TIM_CR1_CEN;											// stop counter 
	RCC->APB1ENR &= ~RCC_APB1ENR_TIM12EN;								// disable TIM4 
}

void initSTOPWATCH(void)
{/// us resolution	
	RCC->APB1ENR |= RCC_APB1ENR_TIM5EN; 								// enable TIM5 
	TIM5->PSC = 0x0054-0x0001;											// set TIM5 counting prescaler to 84 (p406)
																		// 84MHz/84 = 1MHz -> count each us
	TIM5->ARR = 0xFFFFFFFF;												// reload value set to 1.19304647083h!
	TIM5->CR1 = 0x0084;													// ARPE On, CMS disable, Up counting
																		// UEV disable, TIM5 enable(p392)
	TIM5->CR2 = 0x0000;
	TIM5->CNT = 0x00000000;												// clear the start value
	
}

void startSTOPWATCH(void)
{
	TIM5->EGR |= TIM_EGR_UG;											// update event, reload all config p363
	TIM5->CR1 |= TIM_CR1_CEN;											// start counting!
}

uint32_t stopSTOPWATCH(void)
{
	uint32_t time;

	time = TIM5->CNT;
	TIM5->CR1 &= ~TIM_CR1_CEN;											// stop couting
	return time;
}

void disableSYSTIMER12()
{
	RCC->APB1ENR &= ~(RCC_APB1ENR_TIM12EN);
	setD1(0);
}

void disableSYSTIMER3()
{
	RCC->APB1ENR &= ~(RCC_APB1ENR_TIM3EN); 
	setD2(0);
}

void disableSYSTIMER2()
{
	RCC->APB1ENR &= ~(RCC_APB1ENR_TIM2EN); 
	setD3(0);
}

void disableSYSTIMER5()
{
	RCC->APB1ENR &= ~(RCC_APB1ENR_TIM5EN); 
	setD4(0);
}
void initSYSTIMER(void)
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
	TIM12->CR1 |= TIM_CR1_CEN;											// 	
//---------------------------------------------------------------------
/*	RCC->APB1ENR &= RCC_APB1ENR_TIM7EN; 								// 
	
	TIM7->CR1 |= TIM_CR1_CEN;
	TIM7->PSC = 0x0054-0x0001;											// 
																		// 
	TIM7->ARR = 0x03E8;													// 
	TIM7->CR1 = 0x0084;													// 
																		//
	TIM7->CR2 = 0x0000;
	TIM7->CNT = 0x0000;													// 
	TIM7->EGR |= TIM_EGR_UG;											//
	TIM7->DIER = 0x0001;												// enable 
	
	NVIC_SetPriority(TIM7_IRQn, 0);
	NVIC_EnableIRQ(TIM7_IRQn);
	TIM7->CR1 |= TIM_CR1_CEN;
*/
//---------------------------------------------------------------------
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

//---------------------------------------------------------------------
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

//---------------------------------------------------------------------
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

//---------------------------------------------------------------------
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

//--------------------------------------------------------------------
RCC->APB2ENR |= RCC_APB2ENR_TIM10EN; 								// 
	
	TIM10->CR1 |= TIM_CR1_CEN;
	TIM10->PSC = 0x0054-0x0001;											// 
																		// 
	TIM10->ARR = 0x03E8;													// 
	TIM10->CR1 = 0x0084;													// 
																		//
	TIM10->CR2 = 0x0000;
	TIM10->CNT = 0x0000;													// 
	TIM10->EGR |= TIM_EGR_UG;											//
	TIM10->DIER = 0x0001;													// enable 
	
	NVIC_SetPriority(TIM1_UP_TIM10_IRQn, 0);
	NVIC_EnableIRQ(TIM1_UP_TIM10_IRQn);
	TIM10->CR1 |= TIM_CR1_CEN;
//----------------------------------------------------------------------------	
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

}

uint32_t getSYSTIMER(void)
{
	uint32_t time = TIM2->CNT;
	return time;
}

uint8_t chk4TimeoutSYSTIMER(uint32_t btime, uint32_t period)
{
	uint32_t time = TIM2->CNT;
	if(time >= btime)
	{
		if(time >= (btime + period))
			return (SYSTIMER_TIMEOUT);
		else
			return (SYSTIMER_KEEP_ALIVE);
	}
	else
	{
		uint32_t utmp32 = 0xFFFFFFFF - btime;
		if((time + utmp32) >= period)
			return (SYSTIMER_TIMEOUT);
		else
			return (SYSTIMER_KEEP_ALIVE);
	}
}

void initSYSTIM(void)
{
	RCC->APB1ENR |= RCC_APB1ENR_TIM7EN; 								// 
	TIM7->PSC = 0x0054-0x0001;											// 
																		// 
	TIM7->ARR = 0x03E8;													// 
	TIM7->CR1 = 0x0084;													// 
																		//
	TIM7->CR2 = 0x0000;
	TIM7->CNT = 0x0000;													// 
	TIM7->EGR |= TIM_EGR_UG;											//
	TIM7->DIER = 0x0001;												// enable 
	
	NVIC_SetPriority(TIM7_IRQn, 0);
	NVIC_EnableIRQ(TIM7_IRQn);
	TIM7->CR1 |= TIM_CR1_CEN;											// 	
}

void TIM8_UP_TIM13_IRQHandler(void)
{
	if((TIM13->SR & 0x0001)&& getD5())
	{
		g_tim13_val++;
		TIM13->SR = 0x0000;
	}
}

void TIM8_TRG_COM_TIM14_IRQHandler(void)
{
	if((TIM14->SR & 0x0001)&& getD6())
	{
		g_tim14_val++;
		TIM14->SR = 0x0000;
	}
}

void TIM8_BRK_TIM12_IRQHandler(void)
{
	if((TIM12->SR & 0x0001) && getD1())
	{
		g_tim12_val++;
		TIM12->SR = 0x0000;
	}
}

void TIM3_IRQHandler(void)
{
	if((TIM3->SR & 0x0001)&& getD2())
	{
		g_tim3_val++;
		TIM3->SR = 0x0000;
	}
}

void TIM2_IRQHandler(void)
{
	if((TIM2->SR & 0x0001)&& getD3())
	{
		g_tim2_val++;
		TIM2->SR = 0x0000;
	}
}

void TIM5_IRQHandler(void)
{
	if((TIM5->SR & 0x0001)&& getD4())
	{
		g_tim5_val++;
		TIM5->SR = 0x0000;
	}
}

void TIM4_IRQHandler(void)
{
	if(TIM4->SR & 0x0001)
	{
		g_tim4_val++;
		TIM4->SR = 0x0000;
	}
}


uint32_t getSYSTIM12(void)
{
	return g_tim12_val;
}


uint32_t getSYSTIM13(void)
{
	return g_tim13_val;
}

uint32_t getSYSTIM3(void)
{
	return g_tim3_val;
}

uint32_t getSYSTIM14(void)
{
	return g_tim14_val;
}

uint32_t getSYSTIM2(void)
{
	return g_tim2_val;
}

uint32_t getSYSTIM5(void)
{
	return g_tim5_val;
}

uint32_t getSYSTIM4(void)
{
	return g_tim4_val;
}

uint8_t chk4TimeoutSYSTIM(uint32_t btime, uint32_t period,uint32_t l)
{
		
	uint32_t time;
	if(l==1)
		time = g_tim12_val;
	if(l==2)
		time = g_tim3_val;
	if(l==3)
		time = g_tim2_val;
	if(l==4)
		time = g_tim5_val;
	if(l==5)
		time = g_tim13_val;
	if(l==6)
		time = g_tim14_val;
	if(time >= btime)
	{
		if(time >= (btime + period))
			return (SYSTIM_TIMEOUT);
		else
			return (SYSTIM_KEEP_ALIVE);
	}
	else
	{
		uint32_t utmp32 = 0xFFFFFFFF - btime;
		if((time + utmp32) >= period)
			return (SYSTIM_TIMEOUT);
		else
			return (SYSTIM_KEEP_ALIVE);
	}
}
