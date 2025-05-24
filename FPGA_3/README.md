# Session 3
## 1) Synthesis 8 input function and finding the no of slices
![Screenshot 2025-05-24 164523](https://github.com/user-attachments/assets/5e4c9b38-56f8-4c45-98db-b472494e0862)

![image](https://github.com/user-attachments/assets/e261c3a8-5c96-4320-ad4d-70adeaa34f8f)

## 2)Implemented Positive edge detector
A positive edge detector was designed and implemented on an FPGA to capture the rising edge of a digital input signal. The logic operates synchronously, utilizing a simple method of storing the previous state of the signal and comparing it with the current input at each clock cycle. When a transition from low to high is observed—i.e., the input changes from 0 to 1—the circuit outputs a single-cycle pulse to indicate the detection of the rising edge.
![Screenshot 2025-05-24 164557](https://github.com/user-attachments/assets/e67fa065-a06b-4e5d-a347-517702889be4)

## 3)Implemented Negative edge detector and Both
A negative edge detector was developed and implemented on an FPGA to identify the falling edge of a digital input signal. This design uses synchronous logic, where the input signal's previous and current states are monitored on every clock cycle. A falling edge is detected when the input transitions from high (1) to low (0). Upon detecting this transition, the circuit generates a one-clock-cycle pulse on the output, indicating a valid negative edge event.
![image](https://github.com/user-attachments/assets/75bc3e06-3f95-4218-a373-2bcc3167e990)
![image](https://github.com/user-attachments/assets/86b8e52f-367e-4f07-aa3a-21593eaf354e)

## 4)write the different i/p and outputs present in SPI, Write a i/o details in veriog
## *code:-*
module spi_contrller(pclk_i,prst_i,paddr_i,pwrite_i,pwdata_i,prdata_o,penable_i,pready_o,psel_i,sclk,sclk_in,mosi,miso,ssel_o);
<br>
input pclk_i,prst_i,pwrite_i;
<br>
input [7:0]paddr_i;
<br>
input [7:0]pwdata_i;
<br>
output reg [7:0]prdata_o;
<br>
input penable_i,psel_i;
<br>
output reg pready_o;
<br>
output reg mosi,ssel_o;
<br>
input sclk_in;
<br>
output sclk;
<br>
input miso;

endmodule
