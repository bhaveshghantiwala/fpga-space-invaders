module vga_top (
    input clk, on_sw, 
    input [2:0] level,
    input [11:0] score,
    input [2:0] mode,
    input player_pixel, ship_pixel, shot_pixel,
    input [2:0] charge_count,
    output [10:0] pixel_x, pixel_y,
    output hsync, vsync,
    output [4:0] vga_r,
    output [5:0] vga_g,
    output [4:0] vga_b
    );

    wire [4:0] rgb_game, rgb_title, rgb_inbet, rgb_win, rgb_g_over; 
    reg [4:0] cl_frm_log;

    vga_sync vs0 (
        .clk(clk),
        .on_sw(on_sw),
        .hsync(hsync), 
        .vsync(vsync), 
        .video_on(video_on),
        .pixel_x(pixel_x), 
        .pixel_y(pixel_y)
        );

    vga_rgb_game vg0 ( 
        .level(level),
        .score(score),
        .video_on(video_on),
        .player_pixel(player_pixel),
        .shot_pixel(shot_pixel),
        .ship_pixel(ship_pixel),
        .charge_count(charge_count),
        .pixel_x(pixel_x), 
        .pixel_y(pixel_y),
        .vga_rgb(rgb_game)
        );
        
    vga_rgb_title vt0 (
        .video_on(video_on),
        .pixel_x(pixel_x), 
        .pixel_y(pixel_y),
        .vga_rgb(rgb_title)
        );

    vga_rgb_inbet vib0 (
        .video_on(video_on),
        .pixel_x(pixel_x), 
        .pixel_y(pixel_y),
        .vga_rgb(rgb_inbet)
        );

    vga_rgb_g_over vgo0 (
        .video_on(video_on),
        .pixel_x(pixel_x), 
        .pixel_y(pixel_y),
        .vga_rgb(rgb_g_over)
        );

    vga_rgb_win vw0 (
        .video_on(video_on),
        .pixel_x(pixel_x), 
        .pixel_y(pixel_y),
        .vga_rgb(rgb_win)
        );


    always @(*)
        begin
        if (mode == 3'b001)
            cl_frm_log = rgb_game;
        else if (mode == 3'b010)
            cl_frm_log = rgb_inbet;
        else if (mode == 3'b011)
            cl_frm_log = rgb_win;
        else if (mode == 3'b100)
            cl_frm_log = rgb_g_over;
        else
            cl_frm_log = rgb_title;
        end

    color_decode cd0 (
        .cl_frm_log(cl_frm_log),
        .cl_to_vga({vga_r,vga_g,vga_b})
        );

endmodule

