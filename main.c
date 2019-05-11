#include <8051.h>


///Pobieranie znakow z terminalu
char getchar() {
    char znak;
    while(RI == 0);  ///Wskaznik przerwania – zapelnienia sie bufora odbiorczego
	RI = 0;
    znak = SBUF; ///Bufor

    return znak;
}

///wysyla znak na standardowe wyjscie
void putchar(char znak) {
    SBUF = znak;
    while(TI==0); ///Wskaznik przerwania – oproznienia bufora nadawczego
    TI=0;
}

///Podniesienie do potegi
int power(int n, int p){
    int i;

    if (p == 0) return 1;

    for(i = 1; i < p; ++i)
    {
        n *= n;
    }
    return n;
}

///Konwersja HEX (Cyfry 0-9; litery A-F)
int hex_to_int(char hex[], int size){
    int result = 0;
    int i;

    for(i = 0; i < size; ++i){
        if (hex[i] >= 'A' && hex[i] <= 'F'){
            hex[i] -= 'A' + 10;
        }
        else if (hex[i] >= '0' && hex[i] <= '9'){
            hex[i] -= '0';
        }
        else
        {
            return -1;
        }
        result += (hex[i] * power(16, size - i - 1));
    }
    return result;
}

///Konwersja Octal (Do zapisu liczb uzywa sie w nim osmiu cyfr, od 0 do 7)
int oct_to_int(char oct[], int size){
    int result = 0;
    int i;

    for(i = 0; i < size; ++i){
        if (oct[i] >= '0' && oct[i] <= '7'){
            oct[i] -= '0';
        }
        else
        {
            return -1;
        }
        result += (oct[i] * power(8, size - i - 1));
    }
    return result;
}

///Konwersja Decimal (Cyfry 0-10)
int dec_to_int(char dec[], int size){
    int result = 0;
    int i;

    for(i = 0; i < size; ++i){
        if (dec[i] >= '0' && dec[i] <= '9'){
            dec[i] -= '0';
        }
        else
        {
            return -1;
        }
        result += (dec[i] * power(10, size - i - 1));
    }
    return result;
}

///Wypisywanie tablicy w terminale
void print_the_stuff(int number){
    int i = 0;
    char array[] = {'\0','\0','\0','\0'};
    char c;

    if (number == 0) putchar('0');

    //W postaci znaku
    while(number > 0){
        c = ( number % 10 ) + '0';
        array[i] = c;
        ++i;
        number /= 10;
    }
    for(i = 4; i >= 0; --i)
    {
        putchar(array[i]);
    }
    putchar('\n');
}


///Wypelnienie tablicy liczbami przekonwertowanymi zgodnie z trescia zadania
void do_the_stuff(){
    int i, j = 0;
    int num1;
    int num2;
    int num3;
    int result;
	char c;

    char number[] = { '\0','\0','\0','\0' };

    for(i = 0; i < 4; ++i)
    {
        c = getchar();
		if (c == ' ') break;
        number[i] = c;
		putchar(number[i]);
        ++j;
    }

    ///arg1 to HEX
    num1 = hex_to_int(number, j);
	//////////////////////
	//print_the_stuff(num1);
	//////////////////////
	putchar(' ');
    j = 0;

    for(i = 0; i < 4; ++i)
    {
        c = getchar();
		if (c == ' ') break;
        number[i] = c;
		putchar(number[i]);
        ++j;
    }

    ///arg2 to Decimal
    num2 = dec_to_int(number, j);
	//////////////////////
	//print_the_stuff(num2);
	//////////////////////
	putchar(' ');
    j = 0;

    for(i = 0; i < 4; ++i)
    {
		c = getchar();
		if (c == 'l') break;
        number[i] = c;
		putchar(number[i]);
        ++j;
    }

    ///arg3 to Octal
    num3 = oct_to_int(number, j);
	//////////////////////
	//print_the_stuff(num3);
	//////////////////////
	putchar('\n');
    j = 0;
	// 256 / 2 | 2 = 128 | 2 = 128

	///arg1 / arg2 OR arg3
    result = num1 / num2;
	result |= num3;
    print_the_stuff(result);
}

void main(void){
    SCON = 0x50; ///ustawiamy tryb transmisji lacza
    TMOD &=	0x0F; ///ustawienie licznika w tryb samo przeladowywania
    TMOD |=	0x20;
    TH1 = TL1 = 253; /// ustalenie – wpisanie predkosci transmisji
    TCON =	0x40; /// ustawienie trybu pracy licznika
    PCON = 0x80; ///ustawienie bitu SMOD

	//print_the_stuff(1234);
	//for(;;){
	//	putchar(getchar());
	//}
	///Uruchomienie glownej funkcji
    while(1){
       do_the_stuff();
    }

}
