module ejemplo_1(
    input wire a,
    input wire b,
    output reg s
);


always@(a,b) begin //Cada vez que cambia a o b llama al proceso
    if(a==1) begin
        if(b==1) begin
            s=1;
        end
    end
    else
        s=0;
end        


endmodule    