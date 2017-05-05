module vga_rgb_g_over(
    input video_on,
    input [10:0] pixel_x, pixel_y,
    output reg [4:0] vga_rgb
    );

    always @(*)
        begin
        if (video_on)
            vga_rgb = 5'b00001;
        else
            vga_rgb = 5'b00000;
        end
endmodule

 
