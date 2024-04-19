/*
CLASES:
module priority(
    input[7:0] ocho,
    output reg[3.0]BCD
);

always @(*) begin
    if(ocho[7]) BCD=4'b1000;
    else if(ocho[6]) BCD=4'b0111;
    //....
    else BCD = 4'b0000; // Asegurarse de asignar un valor en caso de que ninguna de las condiciones anteriores sea verdadera
end

endmodule

*/

module convertidor_dec_a_BCD(
    input [7:0] decimal,
    output reg [3:0] BCD
);

always @(*) begin
    case(decimal)
        8'd0: BCD = 4'b0000;
        8'd1: BCD = 4'b0001;
        8'd2: BCD = 4'b0010;
        8'd3: BCD = 4'b0011;
        8'd4: BCD = 4'b0100;
        8'd5: BCD = 4'b0101;
        8'd6: BCD = 4'b0110;
        8'd7: BCD = 4'b0111;
        8'd8: BCD = 4'b1000;
        8'd9: BCD = 4'b1001;
        default: BCD = 4'b0000; // Asegurarse de asignar un valor en caso de que ninguna de las condiciones anteriores sea verdadera
    endcase
end

endmodule