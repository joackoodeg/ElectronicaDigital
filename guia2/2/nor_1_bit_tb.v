`define DUMPSTR(x) `"x.vcd`"
`timescale 100 ns / 10 ns
        //paso de tiempo / resolucion q tiene
module nor_1_bit_tb();

parameter DURATION = 10;

reg clk;
always #0.5 clk = ~clk;

//registros y cables 
reg test_a, test_b, test_c;
wire test_x;

nor_1_bit UUT_nor_1_bit( //unit under test
    //puertos:
    .a(test_a),
    .b(test_b),
    .c(test_c),
    .x(test_x)
);

initial begin 
    $dumpfile(`DUMPSTR(`VCD_OUTPUT)); //archivo en el que se guarda la salida
    $dumpvars(0, nor_1_bit_tb); //nivel de guardado de datos (temporales) , nivel 0: guardar todo
    
    #1  //Espera 1 unidad de tiempo, definida en el tb
    test_a=0; test_b=0; test_c=0;

    #1
    test_a=1; test_b=1; test_c=1;

    #(DURATION) $display("FIN DE LA SIMULACION. "); //#N, espera N
    $finish;
end


endmodule
