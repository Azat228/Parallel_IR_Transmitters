#include <Adafruit_GFX.h>
#include <Adafruit_ST7735.h>
#include <SPI.h>
//Install #include <Adafruit_GFX.h> <Adafruit_ST7735.h> libraries
#define TFT_CS    10
#define TFT_DC     9
#define TFT_RST    8

Adafruit_ST7735 tft = Adafruit_ST7735(TFT_CS, TFT_DC, TFT_RST);
//R1 = 5k R2 = 5k
float input_volt = 0.0;
float temp=0.0;
float r1=5000.0; //R1
float r2=5000.0; // R2
void setup() {
  Serial.begin(9600);
  Serial.println(F("--- ARDUINO BOOTED ---")); // If this prints repeatedly, the board is resetting

  tft.initR(INITR_MINI160x80_PLUGIN);
  tft.setRotation(3);
  tft.invertDisplay(true);
  tft.fillScreen(ST77XX_BLACK);
}

void loop() {
  int analogvalue = analogRead(A0);
  temp = (analogvalue * 5.0) / 1023.0; 
  input_volt = temp * ((r1+r2)/r1);
  if (input_volt < 0.1)
  {
    input_volt=0.0;
  }
  Serial.print("v= "); // выводим значение напряжения в окно монитора последовательной связи
  
  Serial.println(input_volt);
  delay(500);
  tft.setTextSize(2);
  tft.setTextColor(ST77XX_GREEN, ST77XX_BLACK); 
  tft.setCursor(5, 25);
  tft.print(F("Vol: "));
  tft.print(input_volt);
  tft.print(F(" V   "));
}