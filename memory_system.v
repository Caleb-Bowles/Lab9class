module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output reg [7:0] memory
);

    // Individual wires for each of the 4 memory bytes
    wire [7:0] d0, d1, d2, d3;
    wire s0, s1, s2, s3;
    wire [7:0] m0, m1, m2, m3;

    // Demultiplex incoming data and store based on address
    assign d0 = (addr == 2'b00) ? data : 8'b0;
    assign d1 = (addr == 2'b01) ? data : 8'b0;
    assign d2 = (addr == 2'b10) ? data : 8'b0;
    assign d3 = (addr == 2'b11) ? data : 8'b0;

    assign s0 = (addr == 2'b00) ? store : 1'b0;
    assign s1 = (addr == 2'b01) ? store : 1'b0;
    assign s2 = (addr == 2'b10) ? store : 1'b0;
    assign s3 = (addr == 2'b11) ? store : 1'b0;

    // Instantiate the four byte_memory blocks
    byte_memory mem0 (.data(d0), .store(s0), .memory(m0));
    byte_memory mem1 (.data(d1), .store(s1), .memory(m1));
    byte_memory mem2 (.data(d2), .store(s2), .memory(m2));
    byte_memory mem3 (.data(d3), .store(s3), .memory(m3));

    // Output multiplexer to select which stored byte goes to the LEDs
    always @(*) begin
        case (addr)
            2'b00: memory = m0;
            2'b01: memory = m1;
            2'b10: memory = m2;
            2'b11: memory = m3;
            default: memory = 8'b0;
        endcase
    end

endmodule