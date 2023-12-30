module digital_clock_tb();
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

  // Connect the testbench to the design
  digital_clock digital_clock_inst (
    .clk(clk),
    .rst(rst),
    .hour(hour),
    .minute(minute),
    .second(second)
  );

  // Monitor the design's output
  initial begin
    // Monitor output signals here
    $monitor("Time = %t, Clock = %b, Reset = %b, Hour = %d, Minute = %d, Second = %d", $time, clk, rst, hour, minute, second);
  end

endmodule
