module inv_ship_controller(
    input s_clk, clk, on_sw,
    input shot_pixel,
    input [23:0] en,
    input [10:0] pixel_x, pixel_y,
    output ship_pixel_out,
    output line_crossed_out
    );
    
    parameter S0 = 2'b00,
              S1 = 2'b01,
              S2 = 2'b10,
              S3 = 2'b11;

    reg shift_right, shift_left, shift_down;
    reg [1:0] state;
    reg [8:0] h_count;
    reg [5:0] v_count;
    
    wire [23:0] ship_pixel, line_crossed;

    assign ship_pixel_out = |ship_pixel;
    assign line_crossed_out = |line_crossed;
    
    always @(posedge clk)
        begin
        if(!on_sw)
            begin
            state <= S0;
            h_count <= 9'b0_0000_0000;
            v_count <= 6'b00_0000;
            shift_right <= 1'b0;
            shift_down <= 1'b0;
            shift_left <= 1'b0;
            end
        else
            case (state)
                S0: begin
                    if (h_count < 420)
                        begin
                        shift_right <= 1'b1;
                        h_count <= h_count + 1;
                        end
                    else
                        begin
                        state <= S1;
                        shift_right <= 1'b0;
                        h_count <= 9'b0_0000_0000;
                        end
                    end
                S1: begin
                    if (v_count < 32)
                        begin
                        shift_down <= 1'b1;
                        v_count <= v_count + 1;
                        end
                    else
                        begin
                        state <= S2;
                        shift_down <= 1'b0;
                        v_count <= 6'b00_0000;
                        end
                    end                
                S2: begin
                    if (h_count < 420)
                        begin
                        shift_left <= 1'b1;
                        h_count <= h_count + 1;
                        end
                    else
                        begin
                        state <= S3;
                        shift_left <= 1'b0;
                        h_count <= 9'b0_0000_0000;
                        end
                    end
                S3: begin
                    if (v_count < 32)
                        begin
                        shift_down <= 1'b1;
                        v_count <= v_count + 1;
                        end
                    else
                        begin
                        state <= S0;
                        shift_down <= 1'b0;
                        v_count <= 6'b00_0000;
                        end
                    end
            endcase
        end               
        
    inv_ship_t0 is0 (
    .s_clk(s_clk),
    .clk(clk), 
    .en(en[0]), 
    .on_sw(on_sw),                                                                
    .shift_right(shift_right), 
    .shift_left(shift_left), 
    .shift_down(shift_down),
    .orig_x(11'd32), 
    .orig_y(11'd96),
    .pixel_x(pixel_x), 
    .pixel_y(pixel_y),
    .line_crossed(line_crossed[0]),
    .ship_pixel(ship_pixel[0]),
    .shot_pixel(shot_pixel)
    );
    
    inv_ship_t0 is1 (
    .s_clk(s_clk),
    .clk(clk), 
    .en(en[1]), 
    .on_sw(on_sw),                                                                
    .shift_right(shift_right), 
    .shift_left(shift_left), 
    .shift_down(shift_down),
    .orig_x(11'd102), 
    .orig_y(11'd96),
    .pixel_x(pixel_x), 
    .pixel_y(pixel_y),
    .line_crossed(line_crossed[1]),
    .ship_pixel(ship_pixel[1]),
    .shot_pixel(shot_pixel)
    );
    
    inv_ship_t0 is2 (
    .s_clk(s_clk),
    .clk(clk), 
    .en(en[2]), 
    .on_sw(on_sw),                                                                
    .shift_right(shift_right), 
    .shift_left(shift_left), 
    .shift_down(shift_down),
    .orig_x(11'd172), 
    .orig_y(11'd96),
    .pixel_x(pixel_x), 
    .pixel_y(pixel_y),
    .line_crossed(line_crossed[2]),
    .ship_pixel(ship_pixel[2]),
    .shot_pixel(shot_pixel)
    );
    
    inv_ship_t0 is3 (
    .s_clk(s_clk),
    .clk(clk), 
    .en(en[3]), 
    .on_sw(on_sw),                                                                
    .shift_right(shift_right), 
    .shift_left(shift_left), 
    .shift_down(shift_down),
    .orig_x(11'd242), 
    .orig_y(11'd96),
    .pixel_x(pixel_x), 
    .pixel_y(pixel_y),
    .line_crossed(line_crossed[3]),
    .ship_pixel(ship_pixel[3]),
    .shot_pixel(shot_pixel)
    );
    
    inv_ship_t0 is4 (
    .s_clk(s_clk),
    .clk(clk), 
    .en(en[4]), 
    .on_sw(on_sw),                                                                
    .shift_right(shift_right), 
    .shift_left(shift_left), 
    .shift_down(shift_down),
    .orig_x(11'd312), 
    .orig_y(11'd96),
    .pixel_x(pixel_x), 
    .pixel_y(pixel_y),
    .line_crossed(line_crossed[4]),
    .ship_pixel(ship_pixel[4]),
    .shot_pixel(shot_pixel)
    );
    
    inv_ship_t0 is5 (
    .s_clk(s_clk),
    .clk(clk), 
    .en(en[5]), 
    .on_sw(on_sw),                                                                
    .shift_right(shift_right), 
    .shift_left(shift_left), 
    .shift_down(shift_down),
    .orig_x(11'd382), 
    .orig_y(11'd96),
    .pixel_x(pixel_x), 
    .pixel_y(pixel_y),
    .line_crossed(line_crossed[5]),
    .ship_pixel(ship_pixel[5]),
    .shot_pixel(shot_pixel)
    );
    
    inv_ship_t0 is6 (
    .s_clk(s_clk),
    .clk(clk), 
    .en(en[6]), 
    .on_sw(on_sw),                                                                
    .shift_right(shift_right), 
    .shift_left(shift_left), 
    .shift_down(shift_down),
    .orig_x(11'd452), 
    .orig_y(11'd96),
    .pixel_x(pixel_x), 
    .pixel_y(pixel_y),
    .line_crossed(line_crossed[6]),
    .ship_pixel(ship_pixel[6]),
    .shot_pixel(shot_pixel)
    );
    
    inv_ship_t0 is7 (
    .s_clk(s_clk),
    .clk(clk), 
    .en(en[7]), 
    .on_sw(on_sw),                                                                
    .shift_right(shift_right), 
    .shift_left(shift_left), 
    .shift_down(shift_down),
    .orig_x(11'd522), 
    .orig_y(11'd96),
    .pixel_x(pixel_x), 
    .pixel_y(pixel_y),
    .line_crossed(line_crossed[7]),
    .ship_pixel(ship_pixel[7]),
    .shot_pixel(shot_pixel)
    );
    
    inv_ship_t0 is8(
    .s_clk(s_clk),
    .clk(clk), 
    .en(en[8]), 
    .on_sw(on_sw),                                                                
    .shift_right(shift_right), 
    .shift_left(shift_left), 
    .shift_down(shift_down),
    .orig_x(11'd32), 
    .orig_y(11'd160),
    .pixel_x(pixel_x), 
    .pixel_y(pixel_y),
    .line_crossed(line_crossed[8]),
    .ship_pixel(ship_pixel[8]),
    .shot_pixel(shot_pixel)
    );
    
    inv_ship_t0 is9 (
    .s_clk(s_clk),
    .clk(clk), 
    .en(en[9]), 
    .on_sw(on_sw),                                                                
    .shift_right(shift_right), 
    .shift_left(shift_left), 
    .shift_down(shift_down),
    .orig_x(11'd102), 
    .orig_y(11'd160),
    .pixel_x(pixel_x), 
    .pixel_y(pixel_y),
    .line_crossed(line_crossed[9]),
    .ship_pixel(ship_pixel[9]),
    .shot_pixel(shot_pixel)
    );
    
    inv_ship_t0 is10 (
    .s_clk(s_clk),
    .clk(clk), 
    .en(en[10]), 
    .on_sw(on_sw),                                                                
    .shift_right(shift_right), 
    .shift_left(shift_left), 
    .shift_down(shift_down),
    .orig_x(11'd172), 
    .orig_y(11'd160),
    .pixel_x(pixel_x), 
    .pixel_y(pixel_y),
    .line_crossed(line_crossed[10]),
    .ship_pixel(ship_pixel[10]),
    .shot_pixel(shot_pixel)
    );
    
    inv_ship_t0 is11 (
    .s_clk(s_clk),
    .clk(clk), 
    .en(en[11]), 
    .on_sw(on_sw),                                                                
    .shift_right(shift_right), 
    .shift_left(shift_left), 
    .shift_down(shift_down),
    .orig_x(11'd242), 
    .orig_y(11'd160),
    .pixel_x(pixel_x), 
    .pixel_y(pixel_y),
    .line_crossed(line_crossed[11]),
    .ship_pixel(ship_pixel[11]),
    .shot_pixel(shot_pixel)
    );
    
    inv_ship_t0 is12 (
    .s_clk(s_clk),
    .clk(clk), 
    .en(en[12]), 
    .on_sw(on_sw),                                                                
    .shift_right(shift_right), 
    .shift_left(shift_left), 
    .shift_down(shift_down),
    .orig_x(11'd312), 
    .orig_y(11'd160),
    .pixel_x(pixel_x), 
    .pixel_y(pixel_y),
    .line_crossed(line_crossed[12]),
    .ship_pixel(ship_pixel[12]),
    .shot_pixel(shot_pixel)
    );
    
    inv_ship_t0 is13 (
    .s_clk(s_clk),
    .clk(clk), 
    .en(en[13]), 
    .on_sw(on_sw),                                                                
    .shift_right(shift_right), 
    .shift_left(shift_left), 
    .shift_down(shift_down),
    .orig_x(11'd382), 
    .orig_y(11'd160),
    .pixel_x(pixel_x), 
    .pixel_y(pixel_y),
    .line_crossed(line_crossed[13]),
    .ship_pixel(ship_pixel[13]),
    .shot_pixel(shot_pixel)
    );
    
    inv_ship_t0 is14 (
    .s_clk(s_clk),
    .clk(clk), 
    .en(en[14]), 
    .on_sw(on_sw),                                                                
    .shift_right(shift_right), 
    .shift_left(shift_left), 
    .shift_down(shift_down),
    .orig_x(11'd452), 
    .orig_y(11'd160),
    .pixel_x(pixel_x), 
    .pixel_y(pixel_y),
    .line_crossed(line_crossed[14]),
    .ship_pixel(ship_pixel[14]),
    .shot_pixel(shot_pixel)
    );
    
    inv_ship_t0 is15 (
    .s_clk(s_clk),
    .clk(clk), 
    .en(en[15]), 
    .on_sw(on_sw),                                                                
    .shift_right(shift_right), 
    .shift_left(shift_left), 
    .shift_down(shift_down),
    .orig_x(11'd522), 
    .orig_y(11'd160),
    .pixel_x(pixel_x), 
    .pixel_y(pixel_y),
    .line_crossed(line_crossed[15]),
    .ship_pixel(ship_pixel[15]),
    .shot_pixel(shot_pixel)
    );

    inv_ship_t0 is16(
    .s_clk(s_clk),
    .clk(clk), 
    .en(en[16]), 
    .on_sw(on_sw),                                                                
    .shift_right(shift_right), 
    .shift_left(shift_left), 
    .shift_down(shift_down),
    .orig_x(11'd32), 
    .orig_y(11'd224),
    .pixel_x(pixel_x), 
    .pixel_y(pixel_y),
    .line_crossed(line_crossed[16]),
    .ship_pixel(ship_pixel[16]),
    .shot_pixel(shot_pixel)
    );
    
    inv_ship_t0 is17 (
    .s_clk(s_clk),
    .clk(clk), 
    .en(en[17]), 
    .on_sw(on_sw),                                                                
    .shift_right(shift_right), 
    .shift_left(shift_left), 
    .shift_down(shift_down),
    .orig_x(11'd102), 
    .orig_y(11'd224),
    .pixel_x(pixel_x), 
    .pixel_y(pixel_y),
    .line_crossed(line_crossed[17]),
    .ship_pixel(ship_pixel[17]),
    .shot_pixel(shot_pixel)
    );
    
    inv_ship_t0 is18 (
    .s_clk(s_clk),
    .clk(clk), 
    .en(en[18]), 
    .on_sw(on_sw),                                                                
    .shift_right(shift_right), 
    .shift_left(shift_left), 
    .shift_down(shift_down),
    .orig_x(11'd172), 
    .orig_y(11'd224),
    .pixel_x(pixel_x), 
    .pixel_y(pixel_y),
    .line_crossed(line_crossed[18]),
    .ship_pixel(ship_pixel[18]),
    .shot_pixel(shot_pixel)
    );
    
    inv_ship_t0 is19 (
    .s_clk(s_clk),
    .clk(clk), 
    .en(en[19]), 
    .on_sw(on_sw),                                                                
    .shift_right(shift_right), 
    .shift_left(shift_left), 
    .shift_down(shift_down),
    .orig_x(11'd242), 
    .orig_y(11'd224),
    .pixel_x(pixel_x), 
    .pixel_y(pixel_y),
    .line_crossed(line_crossed[19]),
    .ship_pixel(ship_pixel[19]),
    .shot_pixel(shot_pixel)
    );
    
    inv_ship_t0 is20 (
    .s_clk(s_clk),
    .clk(clk), 
    .en(en[20]), 
    .on_sw(on_sw),                                                                
    .shift_right(shift_right), 
    .shift_left(shift_left), 
    .shift_down(shift_down),
    .orig_x(11'd312), 
    .orig_y(11'd224),
    .pixel_x(pixel_x), 
    .pixel_y(pixel_y),
    .line_crossed(line_crossed[20]),
    .ship_pixel(ship_pixel[20]),
    .shot_pixel(shot_pixel)
    );
    
    inv_ship_t0 is21 (
    .s_clk(s_clk),
    .clk(clk), 
    .en(en[21]), 
    .on_sw(on_sw),                                                                
    .shift_right(shift_right), 
    .shift_left(shift_left), 
    .shift_down(shift_down),
    .orig_x(11'd382), 
    .orig_y(11'd224),
    .pixel_x(pixel_x), 
    .pixel_y(pixel_y),
    .line_crossed(line_crossed[21]),
    .ship_pixel(ship_pixel[21]),
    .shot_pixel(shot_pixel)
    );
    
    inv_ship_t0 is22 (
    .s_clk(s_clk),
    .clk(clk), 
    .en(en[22]), 
    .on_sw(on_sw),                                                                
    .shift_right(shift_right), 
    .shift_left(shift_left), 
    .shift_down(shift_down),
    .orig_x(11'd452), 
    .orig_y(11'd224),
    .pixel_x(pixel_x), 
    .pixel_y(pixel_y),
    .line_crossed(line_crossed[22]),
    .ship_pixel(ship_pixel[22]),
    .shot_pixel(shot_pixel)
    );
    
    inv_ship_t0 is23 (
    .s_clk(s_clk),
    .clk(clk), 
    .en(en[23]), 
    .on_sw(on_sw),                                                                
    .shift_right(shift_right), 
    .shift_left(shift_left), 
    .shift_down(shift_down),
    .orig_x(11'd522), 
    .orig_y(11'd224),
    .pixel_x(pixel_x), 
    .pixel_y(pixel_y),
    .line_crossed(line_crossed[23]),
    .ship_pixel(ship_pixel[23]),
    .shot_pixel(shot_pixel)
    );

endmodule
