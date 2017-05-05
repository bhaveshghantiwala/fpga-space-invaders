module shot (
    input s_clk, clk_0, en,
    input [10:0] orig_x, orig_y,
    input [10:0] pixel_x, pixel_y,
    input ship_pixel,
    output reg shot_pixel
    );
    
    reg [10:0] shot_x, shot_y;
    reg hit;
     
    always @(posedge clk_0)
        begin
        if (!en)
            begin
            shot_x <= orig_x;
            shot_y <= orig_y;
            end
        else 
            begin
            if (shot_y > 0)
                begin
                shot_x <= shot_x;
                shot_y <= shot_y - 1; //shot moves up towards enemies
                end
            else
                begin
                shot_x <= shot_x;
                shot_y <= shot_y;
                end
            end
        end
        
    always @(posedge s_clk)
        begin
        if (!en)
            hit <= 1'b0;
        else
            begin
            if (shot_pixel && ship_pixel)
                hit <= 1'b1;
            else
                hit <= hit;
            end
        end

    always @(*)
        begin
        if(en && !hit)
            begin
            if (pixel_y >= shot_y && pixel_y < shot_y + 20)
                begin
                if (pixel_x >= shot_x && pixel_x < shot_x + 6)
                    shot_pixel = 1'b1;
                else
                    shot_pixel = 1'b0;
                end
            else
                shot_pixel = 1'b0;
            end
        else
            shot_pixel = 1'b0;
        end

endmodule
