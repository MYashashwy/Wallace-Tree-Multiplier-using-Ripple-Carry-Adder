module testbench;
  
  reg [127:0] a;
  reg [127:0] b;

  wire [255:0] result;


    wallace_multiplier uut (
        .a(a), 
        .b(b), 
        .result(result)
    );

    initial begin
       
        $dumpfile("wallace_multiplier.vcd");
        $dumpvars(0, a, b, result);

        a = 128'd5315; b = 128'd8209; #10;
        

        $finish;
    end

    initial begin
        
      $monitor("At time %t, a = %d, b = %d, result = %d",
                 $time, a, b, result);
    end
endmodule
