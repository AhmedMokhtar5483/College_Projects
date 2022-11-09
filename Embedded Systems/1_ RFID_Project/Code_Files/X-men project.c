#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include <stdio.h>
#include <stdlib.h>
#include "lcd8bit.h"
#define F_CPU 1000000UL // F_CPU Definition for util/delay
int n=0;


void uart_init()
{
	// SETTING BIT PARITY (8BIT OR 9 BIT)
	UCSRC=(1<<URSEL)|(1<<UCSZ1)|(1<<UCSZ0);	//8 BIT

	//FOR TX AND RX
	UCSRB=(1<<RXEN)|(1<<TXEN);// ENABLING TX,RX.

	UBRRL=6; // baud rate(6 for 9600)
	UBRRH=(6>>8);
}
void tx_data(unsigned char c)
{
	//SENDING DATA;
	UDR=c;
	while(!(UCSRA & (1<<TXC)));  //set the TX flag
	//clear the TX flag
	UCSRA=(1<<TXC);
}
unsigned char rx_data()
{

	// Wait for data to be received
	while ( !(UCSRA & (1<<RXC)) ); // set the rx flag
	//UCSRA=(0<<RXC);// CLEAR THE rx flag
	/* Get and return received data from buffer */
	return UDR;
}
void Tx_String(unsigned char *str)
{
	while(*str)
	{
		tx_data(*str);
		str++;
		_delay_ms(100);
	}
	
}
void get_card(char *str)
{
	int flag=0;
	char t;
	while(!flag)
	{
	   int i=1;
	   t=rx_data();
	   itoa(t,str[0],10);
	while(i<14&&str[0]==2)
	{
		flag=1;
		t=rx_data();
		itoa(t,str[i],10);
		LCD_printInt(str[i]);
		i++;
	}
	}
}
void test_card(char *str,char *YUP)
{
	LCD_goto(1,1);
	for (int i=0;i<6;i++)
	{
		uart_init();
		str[i]=rx_data();
		//LCD_printInt(str[i]);
		UDR=0;
	}
	LCD_goto(2,1);
	for (int i=6;i<9;i++)
	{
		uart_init();
		YUP[i]=rx_data();
		//LCD_printInt(YUP[i]);
		UDR=0;
	}
}
/*** Function To Initialize Ports ***/
void init_ports()
{
	DDRD=0;
	PORTD=0xFF;
}
/*** Function To Initialize Interrupts ***/
void init_interrupts()
{
	cli(); //Disable Global Interrupts
	GICR =(1<<INT0); //Set Bit6 of GICR to unmask INT0 interrupt
	MCUCR =(3<<ISC00); //Configuring MCUCR for Rising Edge interrupt for INT0
	sei(); //Enable Global Interrupts
}
/*** Interrupt Service Routine For INT0 ***/
ISR(INT0_vect)
{	
	_delay_ms(100);  	// Software debouncing control delay
	//there has to be that counter I previously mentioned and its name is not that crucial
	//int sum=0; //assuming this is the counter
	//char Attendance[20];
	//itoa(sum,Attendance,10); //10 here means decimal means that I want to display the number as a decimal value
	//printf("Decimal value = %s\n", Attendance);
	//LCD_print(Attendance);
	LCD_clear();
	LCD_goto(1,1);
	LCD_print("Attendance is ");
	LCD_printInt(n);
	LCD_goto(2,1);
	LCD_print("Absence is ");
	LCD_printInt(2-n);
}

int main(void)
{
    unsigned char x[20]={"RAMDAN KAREM"};
	unsigned char z[4][11]={"MOKHTAR","ABUSAIF","TAHER","HOSSAM"};
	unsigned char w[20]={2,48,48,48,52,53,49,56,50,48,49,3};
	unsigned char a[12]={130,18,97,144,13,18,81,13,54,57,52,3};
	unsigned char b[12]={130,18,97,144,13,194,81,13,54,57,52,3};
	int A,B,h;
	A=B=h=0;
	int f1,f2;
	f1=f2=0;
	uart_init();
	init_ports();
	CNTRL_DDR = 0xFF;
	CNTRL_PORT = 0x00;
	DATA_DDR = 0xFF;
	DATA_PORT = 0x00;
	
	LCD_init();
	_delay_ms(100);
	for(int i=0;i<4;i++)
	{
		LCD_goto(1,1);
		LCD_print(x);
		LCD_goto(1,14);
		LCD_print("^^");
		LCD_goto(2,1);
		LCD_print(z[i]);
		_delay_ms(1500);
		LCD_clear();
	}
	LCD_clear();
	
	while(1)
	{
		A=B=0;
		LCD_goto(1,1);
		LCD_print("Waiting...");
		LCD_goto(2,1);
		LCD_print("Swipe ur card");
		test_card(x,w);
		_delay_ms(1000);
		LCD_clear();
	for (int i=0;i<12;i++)
	{
		if (x[i]==a[i])
		{   
			A++;
		}
		if (x[i]==b[i])
		{
			B++;
		}
	}
	LCD_goto(1,1);
	if (A>=5)
	{
		if (f1==0)
		{
			LCD_print("Ahmed is here");
			n++;
			f1=1;
		}
		else
		{
			LCD_print("Already scanned");
		}
	}
	if (B>=5)
	{
			if (f2==0)
			{
				LCD_print("BASEM is here");
				n++;
				f2=1;
			}
			else
			{
				LCD_print("Already scanned");
			}
	}
	if(A<5&&B<5){LCD_print("Unknown person");}
		n=f1+f2;
		LCD_goto(2,1);
		LCD_printInt(n);
		_delay_ms(3000);
		LCD_clear();
		init_interrupts();
	}
	
}