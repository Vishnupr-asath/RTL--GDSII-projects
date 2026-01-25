module alu32 (
    input  wire [31:0] a,
    input  wire [31:0] b,
    input  wire [3:0]  sel,
    output reg  [31:0] y,
    output reg         cout
);

    reg [32:0] tmp;

    always @(*) begin
        y    = 32'b0;
        cout = 1'b0;

        case (sel)

            // Arithmetic
            4'b0000: begin // ADD
                tmp  = {1'b0, a} + {1'b0, b};
                y    = tmp[31:0];
                cout = tmp[32];
            end

            4'b0001: begin // SUB
                tmp  = {1'b0, a} - {1'b0, b};
                y    = tmp[31:0];
                cout = tmp[32];
            end

            4'b0010: begin // INC
                tmp  = {1'b0, a} + 33'd1;
                y    = tmp[31:0];
                cout = tmp[32];
            end

            4'b0011: begin // DEC
                tmp  = {1'b0, a} - 33'd1;
                y    = tmp[31:0];
                cout = tmp[32];
            end

            // Logical
            4'b0100: y = a & b;      // AND
            4'b0101: y = a | b;      // OR
            4'b0110: y = a ^ b;      // XOR
            4'b0111: y = ~a;         // NOT
            // Shifts
            4'b1000: y = a << 1;     // Logical left shift
            4'b1001: y = a >> 1;     // Logical right shift

            default: y = 32'b0;

        endcase
    end

endmodule
