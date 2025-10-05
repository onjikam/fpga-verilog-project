// switch_logic.v
// Simple Verilog module that uses three switches as input
// and drives two LEDs as output.
// If SW3 = 0 → LED1 shows the SUM (XOR) of SW1 and SW2.
// If SW3 = 1 → LED1 shows the bitwise AND of SW1 and SW2.
// LED4 is always ON as a status indicator.

module switch_logic(
    input  wire SW1,   // Operand 1
    input  wire SW2,   // Operand 2
    input  wire SW3,   // Selector
    output wire LED1,  // Result LED
    output wire LED4   // Status LED (always on)
);
    // Define the logic for sum and AND operations
    wire sum_bit = SW1 ^ SW2;  // XOR = 1-bit sum (ignores carry)
    wire and_bit = SW1 & SW2;  // bitwise AND

    // Use the selector to choose which result goes to LED1
    assign LED1 = (SW3 == 1'b0) ? sum_bit : and_bit;

    // LED4 is always on
    assign LED4 = 1'b1;
endmodule
