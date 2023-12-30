module digital_clock_();
  // Import the design to be tested
 import digital_clock (
    input clk,
    input rst,
    output reg [4:0] hour,
    output reg [5:0] minute,
    output reg [50] second
  );

  // any necessary signals or variables
  reg clk;
  reg rst;

 // Create any necessary clocks or reset signals
  always #10 clk = ~clk;

  // Initialize the design
  initial begin
    clk = 1'b0;
    rst = 1'b1;
    #100;
    rst = 1'b0;
  end

  // Apply stimulus to the design
  initial begin
    // No stimulus needed for a clock
  end

  // Connect the testbench to the design
  always @(posedge clk) begin
    // Connect input signals here
    digital_clock.clk <= clk;
    digital_clock.rst <= rst;
  end

  // Monitor the design's output
  initial begin
    // Monitor output signals here
    $monitor("Time = %t, Clock = %b, Reset = %b, Hour = %d, Minute = %d, Second = %d", $time, clk, rst, hour, minute, second);
  end

endmodule
