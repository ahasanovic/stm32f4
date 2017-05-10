#ifndef __DELAY_H
#define __DELAY_H

#include "stm32f4xx.h"

#define SYSTIMER_TIMEOUT						0
#define SYSTIMER_KEEP_ALIVE						1
#define SYSTIM_TIMEOUT							0
#define SYSTIM_KEEP_ALIVE						1

void 		delay_ms(uint32_t ms);				// 													
void 		delay_us(uint32_t ms);				// 


void 		initSTOPWATCH(void);
void 		startSTOPWATCH(void);
uint32_t 	stopSTOPWATCH(void);

void 		initSYSTIMER(void);
uint32_t 	getSYSTIMER(void);
uint8_t 	chk4TimeoutSYSTIMER(uint32_t btime, uint32_t period);

void 		initSYSTIM(void);
uint32_t 	getSYSTIM12(void);
uint32_t 	getSYSTIM7(void);
uint32_t 	getSYSTIM13(void);
uint32_t 	getSYSTIM3(void);
uint32_t 	getSYSTIM2(void);
uint32_t 	getSYSTIM5(void);
uint32_t 	getSYSTIM4(void);
uint32_t 	getB1(void);
uint32_t 	getB2(void);
uint32_t 	getB3(void);
uint32_t 	getB4(void);
uint32_t 	getP_APA(void);
uint32_t 	getP_WS(void);
uint32_t 	getD1(void);
uint32_t 	getD2(void);
uint32_t 	getD3(void);
uint32_t 	getD4(void);
uint32_t 	getD5(void);
uint32_t 	getD6(void);
void		setB1(uint32_t);
void		setB2(uint32_t);
void		setB3(uint32_t);
void		setB4(uint32_t);
void 		setP_APA(uint32_t b5);
void 		setP_WS(uint32_t b6);
void 		disableSYSTIMER12();
void		disableSYSTIMER2();
void		disableSYSTIMER5();
void		disableSYSTIMER3();
uint8_t 	chk4TimeoutSYSTIM(uint32_t btime, uint32_t period,uint32_t l);

extern volatile uint32_t L[4];
extern volatile uint32_t g_tim12_val;
extern volatile uint32_t g_tim10_val;
extern volatile uint32_t g_tim7_val;
extern volatile uint32_t g_tim3_val;
extern volatile uint32_t g_tim2_val;
extern volatile uint32_t g_tim5_val;
extern volatile uint32_t g_tim4_val;
#endif 
