#ifndef __USART2_H_
#define __USART2_H_

#include <stdio.h>
#include <stdarg.h>
#include "stm32f4xx.h"
#include "misc.h"
#include "rtc.h"
#include "spi.h"

#define USART2_BUFFER_SIZE			512
#define USART2_BAUDRATE_115200		0x0000016C
#define USART2_BAUDRATE_9600		0x00001117
#define USART2_BAUDRATE_460800		0x0000005B

void initUSART2(uint32_t baudrate);
void putcharUSART2(uint8_t data);
void printUSART2(char * str, ... );
void sprintUSART2(uint8_t * str);
void parsiraj(char damir[],int tmp);
void parser_function(uint8_t array[]);
int isOn(char number);
int keyWord(char word[]);
int numberOfChars(int a, char b);
int hexNumber(int a, char b,int bool);
int powValue(int a, int b);
int decValue(char num);
int isLed(char number);
void staticState(uint16_t i, uint16_t S);
void blinkState(uint16_t i, uint16_t O, uint16_t P);
void pwmState(uint16_t i, uint16_t D);
void BlinkPwmState(uint16_t i, uint16_t O, uint16_t P, uint16_t d);
void chkRxBuffUSART2(void);
void enIrqUSART2(void);
#endif 
