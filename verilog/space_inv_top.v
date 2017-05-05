module space_invader_top(
    input clk, clk_rst, cont_btn,
    input move_rt_btn, move_lft_btn, shoot_btn,
    output [4:0] vga_r,
    output [5:0] vga_g,
    output [4:0] vga_b,
    output hsync, vsync
    );
    
    wire clk_1, clk_2, clk_3, clk_4;
    wire player_en;
    wire [2:0] level;
    wire [23:0] inv_en;
    wire ship_pixel, line_crossed;
    wire player_pixel;
    wire [10:0] pixel_x, pixel_y;
    wire [2:0] mode;
    wire [11:0] score;
    wire [2:0] charge_count;
    reg on_sw;
    reg [26:0] count;
               
    clk_div cd1 (
        .clk(clk),
        .clk_rst(clk_rst),
        .div_count(32'd738281),
        .clk_div(clk_1)
        );
    
    clk_div cd2 (
            .clk(clk),
            .clk_rst(clk_rst),
            .div_count(32'd184570),
            .clk_div(clk_2)
            );
            
    clk_div cd3 (
            .clk(clk),
            .clk_rst(clk_rst),
            .div_count(32'd92285),
            .clk_div(clk_3)
            );
            
    clk_div cd4 (
            .clk(clk),
            .clk_rst(clk_rst),
            .div_count(32'd23625000),
            .clk_div(clk_4)
            );        
    
    always @(posedge clk)
        begin
        if (!clk_rst)
            begin
            on_sw <= 1'b0;
            count <= 0;
            end
        else if (count < 94500000)
            count <= count + 1;
        else
            on_sw <= 1'b1;
        end
    
    game_ctrl gc0 (
        .s_clk(clk), 
        .rst(on_sw),  
        .ship_pixel(ship_pixel), 
        .shot_pixel(shot_pixel), 
        .cont_btn(cont_btn),
        .line_crossed(line_crossed),
        .lvl_start(lvl_start), 
        .player_en(player_en),
        .mode(mode), 
        .level(level),
        .inv_en(inv_en),
        .score(score)
        );
    
    player pl0 (
        .s_clk(clk),
        .clk_0(clk_4), 
        .clk_1(clk_2),
        .clk_2(clk_3),
        .en(player_en), 
        .on_sw(lvl_start),
        .move_rt_btn(move_rt_btn), 
        .move_lft_btn(move_lft_btn), 
        .shoot_btn(shoot_btn),
        .pixel_x(pixel_x), 
        .pixel_y(pixel_y),
        .player_pixel(player_pixel),
        .ship_pixel(ship_pixel),
        .shot_pixel_out(shot_pixel),
        .charge_count(charge_count)
        );
    
    inv_ship_controller isc0 (
        .s_clk(clk),
        .clk(clk_1), 
        .on_sw(lvl_start),
        .en(inv_en),
        .pixel_x(pixel_x), 
        .pixel_y(pixel_y),
        .shot_pixel(shot_pixel),
        .ship_pixel_out(ship_pixel),
        .line_crossed_out(line_crossed)
        );
        
    vga_top vt0 (
        .clk(clk), 
        .mode(mode), 
        .on_sw(on_sw),
        .pixel_x(pixel_x), 
        .pixel_y(pixel_y),
        .level(level),
        .score(score),
        .player_pixel(player_pixel),
        .shot_pixel(shot_pixel),
        .ship_pixel(ship_pixel),
        .charge_count(charge_count),
        .hsync(hsync), 
        .vsync(vsync),
        .vga_r(vga_r),
        .vga_g(vga_g),
        .vga_b(vga_b)
        );

endmodule
