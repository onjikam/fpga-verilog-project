// prime_detector.v
module prime_detector (
    input  wire SW1,   // LSB
    input  wire SW2,
    input  wire SW3,
    input  wire SW4,   // MSB
    output wire LED1
);
    // Bundle individual switches into a 4-bit bus (MSB..LSB)
    wire [3:0] switches = {SW4, SW3, SW2, SW1};

    // Light LED1 only for primes: 2, 3, 5, 7, 11, 13
    assign LED1 = (switches == 4'd2)  ||
                  (switches == 4'd3)  ||
                  (switches == 4'd5)  ||
                  (switches == 4'd7)  ||
                  (switches == 4'd11) ||
                  (switches == 4'd13);
endmodule
