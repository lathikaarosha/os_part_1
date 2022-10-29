#include "drivers/serial_port.h"
#include "drivers/frame_buffer.h"



    
    int main(){

           char massage[] = "Hello! welcome to my OS.";
   
    
    serial_write(0x3F8, massage, sizeof(massage));
    fb_write(massage, sizeof(massage));
    
    }
