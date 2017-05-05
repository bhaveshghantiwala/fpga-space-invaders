module color_decode(
    input [4:0] cl_frm_log,
    output reg [15:0] cl_to_vga
    );
    
    always @(*)
        case(cl_frm_log)
            5'b00000: cl_to_vga = 16'h0000; //black
            5'b00001: cl_to_vga = 16'hf800; //red
            5'b00010: cl_to_vga = 16'h07e0; //green
            5'b00011: cl_to_vga = 16'h001f; //blue
            5'b00100: cl_to_vga = 16'h000f; //navy
            5'b00101: cl_to_vga = 16'h03e0; //darkgreen
            5'b00110: cl_to_vga = 16'h03ef; //darkcyan
            5'b00111: cl_to_vga = 16'h7800; //maroon
            5'b01000: cl_to_vga = 16'h780f; //purple
            5'b01001: cl_to_vga = 16'h7be0; //olive
            5'b01010: cl_to_vga = 16'hc618; //lightgrey
            5'b01011: cl_to_vga = 16'h7bef; //darkgrey
            5'b01100: cl_to_vga = 16'h07ff; //cyan
            5'b01101: cl_to_vga = 16'hf81f; //magenta
            5'b01110: cl_to_vga = 16'hffe0; //yellow
            5'b01111: cl_to_vga = 16'hfd20; //orange
            5'b10000: cl_to_vga = 16'hf81f; //pink
            5'b10001: cl_to_vga = 16'hafe5; //greenyellow
            5'b11111: cl_to_vga = 16'hffff; //white
            default : cl_to_vga = 16'h0000; //black
        endcase
        
endmodule
