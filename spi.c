#include "spi.h"
void initSPI2(uint16_t prescaler)
{
	/// init SPI2 in master mode
	///wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
	/// SPI2 Pin configuration
	///-----------------------------------------------------------------
	/// PE3 = CS
	/// PB13 = SCK
	/// PB14 = MISO
	/// PB15 = MOSI
	///wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww

	    
		RCC->AHB1ENR |= RCC_AHB1ENR_GPIOBEN; 								//																// 
		GPIOB->MODER |= 0xA8000000; 	
		GPIOB->AFR[1] |= 0x55500000;										//   
		GPIOB->OSPEEDR |= 0xA8000000;										// 
									
		RCC->AHB1ENR |= RCC_AHB1ENR_GPIOEEN;
		GPIOE->MODER |= 0x00000040; 
		GPIOE->OTYPER &= ~(0x00000008);
		GPIOE->OSPEEDR |= 0x00000080;										// 
		SPI1_CS_HIGH;								
		RCC->APB1ENR |=RCC_APB1ENR_SPI2EN; 								// 	
		SPI2->CR1 = (SPI_CR1_MSTR);											// enable 8 bit data & master mode			
		SPI2->CR1 |= (SPI_CR1_SSI)|(SPI_CR1_SSM);
		SPI2->CR1 |= SPI_BaudRatePrescaler_32;		
		SPI2->CR1 |= (SPI_CR1_SPE);
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
void initSPI1(uint16_t prescaler)
{
	/// init SPI1 in master mode
	///wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
	/// SPI1 Pin configuration
	///-----------------------------------------------------------------
	/// PE3 = CS
	/// PB3 DOUT= SCK
	/// PB4 = MISO
	/// PB5 DIN= MOSI
	///wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww

	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOBEN; 								//																// 
	GPIOB->MODER |= 0x00000A80; 	
	GPIOB->AFR[0] |= 0x00555000;										//   
	GPIOB->OSPEEDR |= 0x00000A80;										// 
					
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOEEN;
	GPIOE->MODER |= 0x00000040; 
	GPIOE->OTYPER &= ~(0x00000008);
	GPIOE->OSPEEDR |= 0x00000080;										// 
	SPI1_CS_HIGH;
									
	RCC->APB2ENR |= RCC_APB2ENR_SPI1EN; 								// 	
	SPI1->CR1 = (SPI_CR1_MSTR);											// enable 8 bit data & master mode			
	SPI1->CR1 |= (SPI_CR1_SSI)|(SPI_CR1_SSM);
	SPI1->CR1 |= SPI_BaudRatePrescaler_16;		
	SPI1->CR1 |= (SPI_CR1_SPE);
	
	uint8_t niz[7];
	niz[0]=0x81;
	niz[1]=0x02;
	niz[2]=0x04;
	niz[3]=0x08;
	niz[4]=0x10;
	niz[5]=0x20;
	niz[6]=0x40;				
	int i;
	for(i=0;i<7;++i)
	{
		txByteSPI1(niz[i]);
	}
	for(i=0;i<7;++i)
	{
		txByteSPI1(niz[i]);
	}
	for(i=0;i<7;++i)
	{
		txByteSPI1(niz[i]);
	}
	SPI1_CS_LOW;	
	setArray(niz);									
}
uint8_t rxByteSPI1(void)
{///  receive data using SPI1
	uint8_t data;
	
	SPI1->DR = 0x00;						 							// 
	while(!(SPI1->SR & SPI_I2S_FLAG_TXE)); 								// 
	while(!(SPI1->SR & SPI_I2S_FLAG_RXNE)); 							// 
	while(SPI1->SR & SPI_I2S_FLAG_BSY); 								//	
	data = SPI1->DR; 													//
	
	return data;
}	
uint8_t txByteSPI1(uint8_t data)
{/// send data using SPI1
	uint8_t tmp;

	SPI1->DR = data; 													//
	while(!(SPI1->SR & SPI_I2S_FLAG_TXE));								// 
	while(SPI1->SR & SPI_I2S_FLAG_BSY); 
	tmp = SPI1->DR; 													// 	
	return tmp;
}
uint8_t rxByteSPI2(void)
{///  receive data using SPI2
	uint8_t data;
	
	SPI2->DR = 0x00;						 							// 
	while(!(SPI2->SR & SPI_I2S_FLAG_TXE)); 								// 
	while(!(SPI2->SR & SPI_I2S_FLAG_RXNE)); 							// 
	while(SPI2->SR & SPI_I2S_FLAG_BSY); 								//	
	data = SPI2->DR; 													//
	
	return data;
}	

uint8_t txByteSPI2(uint8_t data)
{/// send data using SPI2
	uint8_t tmp;

	SPI2->DR = data; 													//
	while(!(SPI2->SR & SPI_I2S_FLAG_TXE));								// 
	while(!(SPI2->SR & SPI_I2S_FLAG_RXNE)); 							// 
	while(SPI2->SR & SPI_I2S_FLAG_BSY); 								// 
	tmp = SPI2->DR; 													// 
		
	return tmp;
}
