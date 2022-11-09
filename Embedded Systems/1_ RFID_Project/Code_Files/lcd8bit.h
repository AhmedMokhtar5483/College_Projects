/*

 * 1.c
 *
 *  Created on: Apr 25, 2019
 *      Author: Mahmoud
 */

#ifndef lcd8bit
# define lcd8bit

#include <avr/io.h>
#include <util/delay.h>
#include <stdio.h>
#define F_CPU 1000000UL      // FCPU Definition for util/delay

/*LCD function declarations */
void LCD_send_command(unsigned char cmnd);
void LCD_send_data(unsigned char data);
void LCD_init(void);
void LCD_goto(unsigned char y, unsigned char x);
void LCD_print(unsigned char *string);
void LCD_blink(void);
void LCD_clear(void);

#define DATA_PORT	PORTB
#define DATA_DDR	DDRB

#define CNTRL_PORT	PORTD
#define CNTRL_DDR	DDRD


#define RS_PIN		5
#define RW_PIN		4
#define ENABLE_PIN	3


/* This function sends a command 'cmnd' to the LCD module*/
void LCD_send_command(unsigned char cmnd)
{
	DATA_PORT = cmnd;
	CNTRL_PORT &= ~(1<< RW_PIN);
	CNTRL_PORT &= ~(1<< RS_PIN);

	CNTRL_PORT |= (1<< ENABLE_PIN);
	_delay_us(1);
	CNTRL_PORT &= ~(1<< ENABLE_PIN);
	_delay_us(100);
}

/* This function sends the data 'data' to the LCD module*/
void LCD_send_data(unsigned char data)
{
	DATA_PORT = data;
	CNTRL_PORT &= ~(1<< RW_PIN);
	CNTRL_PORT |= (1<< RS_PIN);

	CNTRL_PORT |= (1<< ENABLE_PIN);
	_delay_us(2);
	CNTRL_PORT &= ~(1<< ENABLE_PIN);
	_delay_us(100);
}

void LCD_init()
{


	_delay_ms(10);
	LCD_send_command(0x38);
	LCD_send_command(0x0E);
	LCD_send_command(0x01);
	_delay_ms(10);
	LCD_send_command(0x06);
}

/* This function moves the cursor the line y column x on the LCD module*/

void LCD_goto(unsigned char y, unsigned char x)
{
	unsigned char firstAddress[] = {0x80,0xC0,0x94,0xD4};

	LCD_send_command(firstAddress[y-1] + x-1);
	_delay_ms(10);
}

void LCD_print(unsigned char *string) //put a string in memory location & use it as POINTER
{
	unsigned char i=0;
	while(string[i]!=0)
	{
		LCD_send_data(string[i]);
		i++;

	}
}

void LCD_blink()
{
	LCD_send_command(0x08);
	_delay_ms(250);
	LCD_send_command(0x0C);
	_delay_ms(250);
}



void LCD_clear(void)
{
	LCD_send_command(0x01);
	_delay_ms(100);

}

void LCD_printInt(unsigned long val)
{
	/***************************************************************
	This function writes a integer type value to LCD module

	Arguments:
	1)int val	: Value to print

	2)unsigned int field_length :total length of field in which the value is printed
	must be between 1-5 if it is -1 the field length is no of digits in the val

	****************************************************************/

	unsigned char str[100];
	sprintf(str,"%lu",val);
	LCD_print(str);

}

# endif


