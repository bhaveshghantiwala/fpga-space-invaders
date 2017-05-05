module player (
    input s_clk, clk_0, clk_1, clk_2, en, on_sw,
    input move_rt_btn, move_lft_btn, shoot_btn,
    input [10:0] pixel_x, pixel_y,
    input ship_pixel,
    output reg player_pixel,
    output reg [2:0] charge_count,
    output shot_pixel_out
    );

    //holds the location of the ship's coordinates
    
    wire [10:0] orig_x, orig_y;
    wire shift_right, shift_left, shoot;
    wire [1:0] shot_pixel;
    reg [1:0] shot_state;
    reg [10:0] ship_x;
    wire [10:0] shot_orig_x0, shot_orig_y0, shot_orig_x1, shot_orig_y1;
    reg [1:0] shot_en;

    parameter S0 = 2'b00,
              S1 = 2'b01,
              S2 = 2'b10,
              S3 = 2'b11;
    
    assign orig_x = 11'd481;
    assign orig_y = 11'd651;
    
    assign shift_right = move_rt_btn;
    assign shift_left = move_lft_btn;
    assign shoot = shoot_btn;
    

    //ship movement
    always @(posedge clk_1)
        begin
        if (!on_sw)
            begin
            ship_x <= orig_x;
            end
        else
            begin
            if (shift_right && ship_x < 964)
                begin
                ship_x <= ship_x + 1;
                end
            else if (shift_left && ship_x > 0)
                begin
                ship_x <= ship_x - 1;
                end
            else
                begin
                ship_x <= ship_x;
                end
            end
        end

    
    //ship draw
    
    always @(*)
        begin
        if(en)
            begin
            if (pixel_y >= orig_y + 15 && pixel_y < orig_y + 45)
                begin
                if (pixel_x >= ship_x && pixel_x < ship_x + 60)
                    player_pixel = 1'b1;
                else
                    player_pixel = 1'b0;
                end
            else if (pixel_y >= orig_y && pixel_y < orig_y + 15)
                begin
                if (pixel_x >= ship_x + 15 && pixel_x < ship_x + 45)
                    player_pixel = 1'b1;
                else
                    player_pixel = 1'b0;
                end
            else
                player_pixel = 1'b0;
            end
        else
            player_pixel = 1'b0;
        end

    
    
    
    //ship shoot
    always @(posedge clk_0)
        begin
        if (!on_sw)
            begin
            charge_count <= 3'b110;
            shot_state <= S0;
            shot_en <= 2'b00;
            end
        else
            begin
            case(shot_state)
                S0: begin
                    if (shoot)
                        begin
                        shot_state <= S1;
                        shot_en[0] <= 1'b1;
                        shot_en[1] <= 1'b0;
                        charge_count <= 3'b000;
                        end
                    else
                        begin
                        shot_state <= S0;
                        shot_en[1] <= 1'b0;
                        end
                    end
                S1: begin
                    if (charge_count >= 5)
                        begin
                        charge_count <= charge_count + 1;
                        shot_state <= S2;
                        end
                    else
                        begin
                        charge_count <= charge_count + 1;
                        shot_state <= S1;
                        end
                    end
                S2: begin
                    if (shoot)
                        begin
                        shot_state <= S3;
                        shot_en[0] <= 1'b0;
                        shot_en[1] <= 1'b1;
                        charge_count <= 3'b000;
                        end
                    else
                        begin
                        shot_en[0] <= 1'b0;
                        shot_state <= S2;
                        end
                    end
                S3: begin
                    if (charge_count >= 5)
                        begin
                        charge_count <= charge_count + 1;
                        shot_state <= S0;
                        end
                    else
                        begin
                        charge_count <= charge_count + 1;
                        shot_state <= S3;
                        end
                    end 
            endcase
            end
        end
    
    assign shot_pixel_out = |shot_pixel;
    assign shot_orig_x0 = ship_x + 27;
    assign shot_orig_y0 = orig_y;
    assign shot_orig_x1 = ship_x + 27;
    assign shot_orig_y1 = orig_y;
    
    shot s0 (
        .s_clk(s_clk),
        .clk_0(clk_2),  
        .en(shot_en[0]),
        .orig_x(shot_orig_x0), 
        .orig_y(shot_orig_y0),
        .pixel_x(pixel_x), 
        .pixel_y(pixel_y),
        .ship_pixel(ship_pixel),
        .shot_pixel(shot_pixel[0])
        );

    shot s1 (
        .s_clk(s_clk),
        .clk_0(clk_2),  
        .en(shot_en[1]),
        .orig_x(shot_orig_x1), 
        .orig_y(shot_orig_y1),
        .pixel_x(pixel_x), 
        .pixel_y(pixel_y),
        .ship_pixel(ship_pixel),
        .shot_pixel(shot_pixel[1])
        );

endmodule
