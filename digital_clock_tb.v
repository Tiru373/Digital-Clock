module digclk_tst;
 
    // Inputs
    reg clk;
    reg rst;
 
    // Outputs
    wire [5:0] sec;
    wire [5:0] min;
    wire [4:0] hr;
 
    // Instantiate the Unit Under Test (UUT)
    digiclockuut (
        .clk(clk), 
        .rst(rst), 
        .sec(sec), 
        .min(min), 
        .hr(hr)
    );
 
    initial begin
        // Initialize Inputs
        clk = 0;
        rst = 0;
 
        // Wait 100 ns for global reset to finish
        #100;
rst=1;
        // Add stimulus here
 
    end
 always #10 clk=!clk ;    
endmodule
 
