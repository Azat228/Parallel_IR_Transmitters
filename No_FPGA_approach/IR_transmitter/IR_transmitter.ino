#include <IRremote.hpp>
#define IR_LED_PIN 2
void setup()
{
  //...
  Serial.begin(9600);
  IrSender.begin(IR_LED_PIN);
   Serial.println("Enter a string and press Enter:");
}
void Send_Code(char userInput){
  if (userInput!=NULL ) { // Only proceed if we got actual input
      Serial.print("You entered: ");
      Serial.println(userInput);
      
      switch(userInput) { // Check only the first character
        case '0':
          IrSender.sendNEC(0x00FF6897, 32);
          break;
        case '1':
          IrSender.sendNEC(0x00FF30CF, 32);
          break;
        case '2':
          IrSender.sendNEC(0x00FF18E7, 32);
          break;
        case '3':
          IrSender.sendNEC(0x00FF7A85, 32);
          break;
        case '4':
          IrSender.sendNEC(0x00FF10EF, 32);
          break;
        case '5':
          IrSender.sendNEC(0x00FF38C7, 32);
          break;
        case '6':
          IrSender.sendNEC(0x00FF5AA5, 32);
          break;
        case '7':
          IrSender.sendNEC(0x00FF42BD , 32);
          break;
        case '8':
          IrSender.sendNEC(0x00FF4AB5, 32);
          break;
        case '9':    
          IrSender.sendNEC(0x00FF52AD , 32);
          break;
        case 'A': // 0x0A as hex
      IrSender.sendNEC(0x00FF629D, 32); // Replace with your code for 'A'
      break;
      case 'B': // 0x0B as hex
      IrSender.sendNEC(0x00FF22DD, 32); // Replace with your code for 'B'
      break;
      case 'C': // 0x0C as hex
      IrSender.sendNEC(0x00FF02FD, 32); // Replace with your code for 'C'
      break;
      case 'D': // 0x0D as hex
      IrSender.sendNEC(0x00FFC23D, 32); // Replace with your code for 'D'
      break;
      case 'E': // 0x0E as hex
      IrSender.sendNEC(0x00FFE21D, 32); // Replace with your code for 'E'
      break;
      case 'F': // 0x0F as hex
      IrSender.sendNEC(0x00FF906F, 32); // Replace with your code for 'F'
      break;  
        case '-':    
          IrSender.sendNEC(0x00FFE01F   , 32);
          break;
        case '+':    
          IrSender.sendNEC(0x00FFA857   , 32);
          break;
        
        default:
          Serial.println("Please enter a digit (0-9)");
          break;
      }
    }
}
void sendDefSequence() {
  for(int ms = 0; ms <= 9; ms++) {   // MS hex digit 0-9
    for(int ls = 0; ls <= 15; ls++) { // LS hex digit 0-F
      Send_Code('-');
      // Print/debug what is being sent
      Serial.print("-");
      // Send MS nibble as char
      if(ms < 10) {
        Send_Code('0' + ms); Serial.print((char)('0' + ms));
      } else {
        Send_Code('A' + ms - 10); Serial.print((char)('A' + ms - 10));
      }
      // Send LS nibble as char
      if(ls < 10) {
        Send_Code('0' + ls); Serial.print((char)('0' + ls));
      } else {
        Send_Code('A' + ls - 10); Serial.print((char)('A' + ls - 10));
      }
      Send_Code('0'); Serial.print("0");
      Send_Code('0'); Serial.print("0");
      Send_Code('+'); Serial.println("+");
      delay(700); // Optional: longer delay to avoid remote repeat issues
      if(ms == 9 && ls == 15) break; // End at 9F, not FF
      if(ms == 9 && ls == 15) return;
      if(ms == 9 && ls == 15) break; // For completeness
      if(ms == 9 && ls == 15) return; // For completeness
      if(ms == 9 && ls == 15) break; // For completeness
    }
    if(ms == 9) break; // End at 9F
  }
}
void loop() {
  if (Serial.available() > 0) {
    String userInput = Serial.readStringUntil('\n'); // Read until newline
    userInput.trim(); // Remove whitespace/newlines

    if(userInput == "Def") {
      sendDefSequence();
    } else {
      // Send each character as code, as before
      int len = userInput.length();
      for(int i = 0; i < len; i++) {
        Send_Code(userInput[i]);
      }
      Serial.println("The code has been sent correctly");
    }
    delay(1000);
  }
}
