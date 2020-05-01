char dizi[10]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};
short i=0;
void main()
{
trisb=0;
portb=dizi[0];
trisa.f0=1;
trisa.f1=1;
CMCON=7;
while(1)
         {
          if(porta.f0==0)
                        {
                         if(i<9)
                               {
                                i++;
                                portb=dizi[i];
                                delay_ms(300);
                               }
                        }
          if(porta.f1==0)
                        {
                          if(i==10)i=9;
                          i--;
                          if(i<0)i=0;
                          portb=dizi[i];
                          delay_ms(300);
                         }
         }
}