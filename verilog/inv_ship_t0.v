module inv_ship_t0 (
    input s_clk, clk, en, on_sw,
    input shift_right, shift_left, shift_down,
    input [10:0] orig_x, orig_y,
    input [10:0] pixel_x, pixel_y,
    input shot_pixel,
    output reg ship_pixel,
    output reg line_crossed
    );

    //holds the location of the ship's coordinates
    reg [10:0] ship_x, ship_y;
    reg destroyed;
    
    always @(posedge clk)
        begin
        if (!on_sw)
            begin
            ship_x <= orig_x;
            ship_y <= orig_y;
            end
        else
            begin
            if (shift_right)
                begin
                ship_x <= ship_x + 1;
                ship_y <= ship_y;
                end
            else if (shift_left)
                begin
                ship_x <= ship_x - 1;
                ship_y <= ship_y;
                end
            else if (shift_down)
                begin
                ship_x <= ship_x;
                ship_y <= ship_y + 1;
                end
            else
                begin
                ship_x <= ship_x;
                ship_y <= ship_y;
                end
            end
        end
        
    always @(posedge s_clk)
        begin
        if (!on_sw)
            destroyed <= 1'b0;
        else
            begin
            if (shot_pixel && ship_pixel)
                destroyed <= 1'b1;
            else
                destroyed <= destroyed;
            end
        end
        
    always @(*)
        begin
        if(en && !destroyed)
            begin
            if (pixel_y >= ship_y && pixel_y < ship_y + 30)
                begin
                if (pixel_x >= ship_x && pixel_x < ship_x + 60)
                    ship_pixel = 1'b1;
                else
                    ship_pixel = 1'b0;
                end
            else if (pixel_y >= ship_y + 30 && pixel_y < ship_y + 45)
                begin
                if (pixel_x >= ship_x + 15 && pixel_x < ship_x + 45)
                    ship_pixel = 1'b1;
                else
                    ship_pixel = 1'b0;
                end
            else
                ship_pixel = 1'b0;
            end
        else
            ship_pixel = 1'b0;
        end
    
    always @(*)
        begin
        if(en && !destroyed && ship_y > 544)
            line_crossed = 1'b1;
        else
            line_crossed = 1'b0;
        end
         

endmodule
