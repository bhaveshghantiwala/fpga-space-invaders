module vga_rgb_game(
    input video_on,
    input player_pixel,
    input shot_pixel,
    input ship_pixel,
    input [2:0] level,
    input [2:0] charge_count,
    input [11:0] score,
    input [10:0] pixel_x, pixel_y,
    output reg [4:0] vga_rgb
    );
            
    always @(*)
        begin
        if (video_on)
            begin
            if (pixel_y >= 0 && pixel_y < 10 || pixel_y >= 50 && pixel_y < 60)
                vga_rgb = 5'b00000;
            else if (pixel_y >= 708 && pixel_y < 718 || pixel_y >= 758)
                vga_rgb = 5'b00000;
            else if (pixel_y >= 10 && pixel_y < 50)
                begin
                if (pixel_x >= 20 && pixel_x < 30 && pixel_y < 42) // top of L
                    vga_rgb = 5'b01110;
                else if (pixel_x >= 20 && pixel_x < 50 && pixel_y >= 42) //bottom of L
                    vga_rgb = 5'b01110;
                else if (pixel_x >= 60 && pixel_x < 90 && pixel_y < 16) //1 of E
                    vga_rgb = 5'b01110;
                else if (pixel_x >= 60 && pixel_x < 70 && pixel_y >= 16 && pixel_y < 27) //2 of E
                    vga_rgb = 5'b01110;
                else if (pixel_x >= 60 && pixel_x < 90 && pixel_y >= 27 && pixel_y < 33) //3 of E
                    vga_rgb = 5'b01110;
                else if (pixel_x >= 60 && pixel_x < 70 && pixel_y >= 33 && pixel_y < 44) //4 of E
                    vga_rgb = 5'b01110;
                else if (pixel_x >= 60 && pixel_x < 90 && pixel_y >= 44) //5 of E
                    vga_rgb = 5'b01110;
                else if (pixel_x >= 100 && pixel_x < 108 && pixel_y < 14) //start of V
                    vga_rgb = 5'b01110;
                else if (pixel_x >= 101 && pixel_x < 109 && pixel_y >= 14 && pixel_y < 18)
                    vga_rgb = 5'b01110;
                else if (pixel_x >= 102 && pixel_x < 110 && pixel_y >= 18 && pixel_y < 22)
                    vga_rgb = 5'b01110;
                else if (pixel_x >= 103 && pixel_x < 111 && pixel_y >= 22 && pixel_y < 26)
                    vga_rgb = 5'b01110;
                else if (pixel_x >= 104 && pixel_x < 112 && pixel_y >= 26 && pixel_y < 30)
                    vga_rgb = 5'b01110;
                else if (pixel_x >= 105 && pixel_x < 113 && pixel_y >= 30 && pixel_y < 34)
                    vga_rgb = 5'b01110;
                else if (pixel_x >= 106 && pixel_x < 114 && pixel_y >= 34 && pixel_y < 38)
                    vga_rgb = 5'b01110;
                else if (pixel_x >= 107 && pixel_x < 115 && pixel_y >= 38 && pixel_y < 42)
                    vga_rgb = 5'b01110;
                else if (pixel_x >= 108 && pixel_x < 116 && pixel_y >= 42 && pixel_y < 46)
                    vga_rgb = 5'b01110;
                else if (pixel_x >= 109 && pixel_x < 117 && pixel_y >= 46)
                    vga_rgb = 5'b01110;
                else if (pixel_x >= 126 && pixel_x < 134 && pixel_y < 14) //middle of V
                    vga_rgb = 5'b01110;
                else if (pixel_x >= 125 && pixel_x < 133 && pixel_y >= 14 && pixel_y < 18)
                    vga_rgb = 5'b01110;
                else if (pixel_x >= 124 && pixel_x < 132 && pixel_y >= 18 && pixel_y < 22)
                    vga_rgb = 5'b01110;
                else if (pixel_x >= 123 && pixel_x < 131 && pixel_y >= 22 && pixel_y < 26)
                    vga_rgb = 5'b01110;
                else if (pixel_x >= 122 && pixel_x < 130 && pixel_y >= 26 && pixel_y < 30)
                    vga_rgb = 5'b01110;
                else if (pixel_x >= 121 && pixel_x < 129 && pixel_y >= 30 && pixel_y < 34)
                    vga_rgb = 5'b01110;
                else if (pixel_x >= 120 && pixel_x < 128 && pixel_y >= 34 && pixel_y < 38)
                    vga_rgb = 5'b01110;
                else if (pixel_x >= 119 && pixel_x < 127 && pixel_y >= 38 && pixel_y < 42)
                    vga_rgb = 5'b01110;
                else if (pixel_x >= 118 && pixel_x < 126 && pixel_y >= 42 && pixel_y < 46)
                    vga_rgb = 5'b01110;
                else if (pixel_x >= 117 && pixel_x < 125 && pixel_y >= 46) //end of V
                    vga_rgb = 5'b01110;
                else if (pixel_x >= 144 && pixel_x < 174 && pixel_y < 16) //1 of E
                    vga_rgb = 5'b01110;
                else if (pixel_x >= 144 && pixel_x < 154 && pixel_y >= 16 && pixel_y < 27) //2 of E
                    vga_rgb = 5'b01110;
                else if (pixel_x >= 144 && pixel_x < 174 && pixel_y >= 27 && pixel_y < 33) //3 of E
                    vga_rgb = 5'b01110;
                else if (pixel_x >= 144 && pixel_x < 154 && pixel_y >= 33 && pixel_y < 44) //4 of E
                    vga_rgb = 5'b01110;
                else if (pixel_x >= 144 && pixel_x < 174 && pixel_y >= 44) //5 of E
                    vga_rgb = 5'b01110;
                else if (pixel_x >= 184 && pixel_x < 194 && pixel_y < 42) // top of L
                    vga_rgb = 5'b01110;
                else if (pixel_x >= 184 && pixel_x < 214 && pixel_y >= 42) //bottom of L
                    vga_rgb = 5'b01110;
                else if (pixel_x >= 224 && pixel_x < 254)
                    case (level)
                        3'b001: begin
                                if (pixel_x >= 244)
                                    vga_rgb = 5'b00011;
                                else
                                    vga_rgb = 5'b00000;
                                end
                        3'b010: begin
                                if (pixel_y < 16)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 16 && pixel_y < 27 && pixel_x >= 244)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 27 && pixel_y < 33)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 33 && pixel_y < 44 && pixel_x < 234)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 44)
                                    vga_rgb = 5'b00011;       
                                else
                                    vga_rgb = 5'b00000;
                                end
                        3'b011: begin
                                if (pixel_y < 16)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 16 && pixel_y < 27 && pixel_x >= 244)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 27 && pixel_y < 33)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 33 && pixel_y < 44 && pixel_x >= 244)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 44)
                                    vga_rgb = 5'b00011;       
                                else
                                    vga_rgb = 5'b00000;
                                end
                        3'b100: begin
                                if (pixel_y < 24 && pixel_x < 232)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y < 24 && pixel_x >= 246)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 24 && pixel_y < 30)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 30 && pixel_x >= 246)
                                    vga_rgb = 5'b00011;
                                else
                                    vga_rgb = 5'b00000;
                                end
                        3'b101: begin
                                if (pixel_y < 16)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 16 && pixel_y < 27 && pixel_x < 234)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 27 && pixel_y < 33)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 33 && pixel_y < 44 && pixel_x >= 244)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 44)
                                    vga_rgb = 5'b00011;       
                                else
                                    vga_rgb = 5'b00000;
                                end
                        default: vga_rgb = 5'b00000;
                    endcase
                else
                    vga_rgb = 5'b00000;
                end
            else if (pixel_y >= 718 && pixel_y < 758)
                begin
                if (pixel_x >= 20 && pixel_x < 50) //letter S
                    begin
                    if (pixel_y < 724)
                        vga_rgb = 5'b01110;
                    else if (pixel_y >= 724 && pixel_y < 735 && pixel_x < 26)
                        vga_rgb = 5'b01110;
                    else if (pixel_y >= 735 && pixel_y < 741)
                        vga_rgb = 5'b01110;
                    else if (pixel_y >= 741 && pixel_y < 752 && pixel_x >= 44)
                        vga_rgb = 5'b01110;
                    else if (pixel_y >= 752)
                        vga_rgb = 5'b01110;       
                    else
                        vga_rgb = 5'b00000;
                    end
                else if (pixel_x >= 60 && pixel_x < 90) //letter C
                    begin
                    if (pixel_y < 724)
                        vga_rgb = 5'b01110;
                    else if (pixel_y >= 724 && pixel_y < 752 && pixel_x < 66)
                        vga_rgb = 5'b01110;
                    else if (pixel_y >= 752)
                        vga_rgb = 5'b01110;       
                    else
                        vga_rgb = 5'b00000;
                    end
                else if (pixel_x >= 100 && pixel_x < 130) //letter O
                    begin
                    if (pixel_y < 724)
                        vga_rgb = 5'b01110;
                    else if (pixel_y >= 724 && pixel_y < 752 && pixel_x < 106)
                        vga_rgb = 5'b01110;
                    else if (pixel_y >= 724 && pixel_y < 752 && pixel_x >= 124)
                        vga_rgb = 5'b01110;
                    else if (pixel_y >= 752)
                        vga_rgb = 5'b01110;       
                    else
                        vga_rgb = 5'b00000;
                    end
                else if (pixel_x >= 140 && pixel_x < 170) //letter R
                    begin
                    if (pixel_y < 724)
                        vga_rgb = 5'b01110;
                    else if (pixel_y >= 724 && pixel_y < 734 && pixel_x < 146)
                        vga_rgb = 5'b01110;
                    else if (pixel_y >= 724 && pixel_y < 734 && pixel_x >= 164)
                        vga_rgb = 5'b01110;
                    else if (pixel_y >= 734 && pixel_y < 740)
                        vga_rgb = 5'b01110;       
                    else if (pixel_y >= 740 && pixel_x < 146)
                        vga_rgb = 5'b01110;
                    else if (pixel_y >= 740 && pixel_y < 744 && pixel_x >= 146 && pixel_x < 156)
                        vga_rgb = 5'b01110;
                    else if (pixel_y >= 744 && pixel_y < 746 && pixel_x >= 150 && pixel_x < 158)
                        vga_rgb = 5'b01110;
                    else if (pixel_y >= 746 && pixel_y < 748 && pixel_x >= 152 && pixel_x < 160)
                        vga_rgb = 5'b01110;
                    else if (pixel_y >= 748 && pixel_y < 750 && pixel_x >= 154 && pixel_x < 162)
                        vga_rgb = 5'b01110;
                    else if (pixel_y >= 750 && pixel_y < 752 && pixel_x >= 156 && pixel_x < 164)
                        vga_rgb = 5'b01110;
                    else if (pixel_y >= 752 && pixel_y < 754 && pixel_x >= 158 && pixel_x < 166)
                        vga_rgb = 5'b01110;
                    else if (pixel_y >= 754 && pixel_y < 756 && pixel_x >= 160 && pixel_x < 168)
                        vga_rgb = 5'b01110;
                    else if (pixel_y >= 756 && pixel_x >= 162 && pixel_x < 170)
                        vga_rgb = 5'b01110;
                    else
                        vga_rgb = 5'b00000;
                    end
                else if (pixel_x >= 180 && pixel_x < 210) //letter E
                    begin
                    if (pixel_y < 724)
                        vga_rgb = 5'b01110;
                    else if (pixel_y >= 724 && pixel_y < 735 && pixel_x < 186)
                        vga_rgb = 5'b01110;
                    else if (pixel_y >= 735 && pixel_y < 741)
                        vga_rgb = 5'b01110;
                    else if (pixel_y >= 741 && pixel_y < 752 && pixel_x < 186)
                        vga_rgb = 5'b01110;
                    else if (pixel_y >= 752)
                        vga_rgb = 5'b01110;       
                    else
                        vga_rgb = 5'b00000;
                    end
                else if (pixel_x >= 224 && pixel_x < 254)
                    case (score[11:8])
                        4'b0000: begin
                                if (pixel_y < 724)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 724 && pixel_y < 752 && pixel_x < 232)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 724 && pixel_y < 752 && pixel_x >= 246)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 752)
                                    vga_rgb = 5'b00011;
                                else
                                    vga_rgb = 5'b00000;
                                end
                        4'b0001: begin
                                if (pixel_x >= 244)
                                    vga_rgb = 5'b00011;
                                else
                                    vga_rgb = 5'b00000;
                                end
                        4'b0010: begin
                                if (pixel_y < 724)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 724 && pixel_y < 735 && pixel_x >= 244)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 735 && pixel_y < 741)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 741 && pixel_y < 752 && pixel_x < 234)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 752)
                                    vga_rgb = 5'b00011;       
                                else
                                    vga_rgb = 5'b00000;
                                end
                        4'b0011: begin
                                if (pixel_y < 724)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 724 && pixel_y < 735 && pixel_x >= 244)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 735 && pixel_y < 741)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 741 && pixel_y < 752 && pixel_x >= 244)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 752)
                                    vga_rgb = 5'b00011;       
                                else
                                    vga_rgb = 5'b00000;
                                end
                        4'b0100: begin
                                if (pixel_y < 732 && pixel_x < 232)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y < 732 && pixel_x >= 246)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 732 && pixel_y < 738)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 738 && pixel_x >= 246)
                                    vga_rgb = 5'b00011;
                                else
                                    vga_rgb = 5'b00000;
                                end
                        4'b0101: begin
                                if (pixel_y < 724)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 724 && pixel_y < 735 && pixel_x < 234)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 735 && pixel_y < 741)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 741 && pixel_y < 752 && pixel_x >= 244)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 752)
                                    vga_rgb = 5'b00011;       
                                else
                                    vga_rgb = 5'b00000;
                                end
                        4'b0110: begin
                                if (pixel_y < 736 && pixel_x < 232)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 736 && pixel_y < 742)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 742 && pixel_y < 752 && pixel_x < 232)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 742 && pixel_y < 752 && pixel_x >= 246)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 752)
                                    vga_rgb = 5'b00011;
                                else
                                    vga_rgb = 5'b00000;
                                end
                        4'b0111: begin
                                 if (pixel_y < 724)
                                    vga_rgb = 5'b00011;
                                 else if (pixel_y >= 724 && pixel_x >= 246)
                                    vga_rgb = 5'b00011;
                                 else
                                    vga_rgb = 5'b00000;
                                 end
                        4'b1000: begin
                                if (pixel_y < 724)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 724 && pixel_y < 735 && pixel_x < 234)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 724 && pixel_y < 735 && pixel_x > 244)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 735 && pixel_y < 741)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 741 && pixel_y < 752 && pixel_x >= 244)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 741 && pixel_y < 752 && pixel_x < 234)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 752)
                                    vga_rgb = 5'b00011;       
                                else
                                    vga_rgb = 5'b00000;
                                end
                        4'b1001: begin
                                if (pixel_y < 724)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 724 && pixel_y < 734 && pixel_x < 232)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 724 && pixel_y < 734 && pixel_x >= 246)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 734 && pixel_y < 740)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 740 && pixel_x >= 246)
                                    vga_rgb = 5'b00011;
                                else
                                    vga_rgb = 5'b00000;
                                end
                        default: vga_rgb = 5'b00000;
                    endcase
                else if (pixel_x >= 264 && pixel_x < 294)
                    case (score[7:4])
                        4'b0000: begin
                                if (pixel_y < 724)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 724 && pixel_y < 752 && pixel_x < 272)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 724 && pixel_y < 752 && pixel_x >= 286)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 752)
                                    vga_rgb = 5'b00011;
                                else
                                    vga_rgb = 5'b00000;
                                end
                        4'b0001: begin
                                if (pixel_x >= 284)
                                    vga_rgb = 5'b00011;
                                else
                                    vga_rgb = 5'b00000;
                                end
                        4'b0010: begin
                                if (pixel_y < 724)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 724 && pixel_y < 735 && pixel_x >= 284)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 735 && pixel_y < 741)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 741 && pixel_y < 752 && pixel_x < 274)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 752)
                                    vga_rgb = 5'b00011;       
                                else
                                    vga_rgb = 5'b00000;
                                end
                        4'b0011: begin
                                if (pixel_y < 724)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 724 && pixel_y < 735 && pixel_x >= 284)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 735 && pixel_y < 741)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 741 && pixel_y < 752 && pixel_x >= 284)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 752)
                                    vga_rgb = 5'b00011;       
                                else
                                    vga_rgb = 5'b00000;
                                end
                        4'b0100: begin
                                if (pixel_y < 732 && pixel_x < 272)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y < 732 && pixel_x >= 286)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 732 && pixel_y < 738)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 738 && pixel_x >= 286)
                                    vga_rgb = 5'b00011;
                                else
                                    vga_rgb = 5'b00000;
                                end
                        4'b0101: begin
                                if (pixel_y < 724)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 724 && pixel_y < 735 && pixel_x < 274)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 735 && pixel_y < 741)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 741 && pixel_y < 752 && pixel_x >= 284)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 752)
                                    vga_rgb = 5'b00011;       
                                else
                                    vga_rgb = 5'b00000;
                                end
                        4'b0110: begin
                                if (pixel_y < 736 && pixel_x < 272)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 736 && pixel_y < 742)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 742 && pixel_y < 752 && pixel_x < 272)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 742 && pixel_y < 752 && pixel_x >= 286)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 752)
                                    vga_rgb = 5'b00011;
                                else
                                    vga_rgb = 5'b00000;
                                end
                        4'b0111: begin
                                 if (pixel_y < 724)
                                    vga_rgb = 5'b00011;
                                 else if (pixel_y >= 724 && pixel_x >= 286)
                                    vga_rgb = 5'b00011;
                                 else
                                    vga_rgb = 5'b00000;
                                 end
                        4'b1000: begin
                                if (pixel_y < 724)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 724 && pixel_y < 735 && pixel_x < 274)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 724 && pixel_y < 735 && pixel_x > 284)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 735 && pixel_y < 741)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 741 && pixel_y < 752 && pixel_x >= 284)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 741 && pixel_y < 752 && pixel_x < 274)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 752)
                                    vga_rgb = 5'b00011;       
                                else
                                    vga_rgb = 5'b00000;
                                end
                        4'b1001: begin
                                if (pixel_y < 724)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 724 && pixel_y < 734 && pixel_x < 272)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 724 && pixel_y < 734 && pixel_x >= 286)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 734 && pixel_y < 740)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 740 && pixel_x >= 286)
                                    vga_rgb = 5'b00011;
                                else
                                    vga_rgb = 5'b00000;
                                end
                        default: vga_rgb = 5'b00000;
                    endcase
                else if (pixel_x >= 304 && pixel_x < 334)
                    case (score[3:0])
                        4'b0000: begin
                                if (pixel_y < 724)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 724 && pixel_y < 752 && pixel_x < 312)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 724 && pixel_y < 752 && pixel_x >= 326)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 752)
                                    vga_rgb = 5'b00011;
                                else
                                    vga_rgb = 5'b00000;
                                end
                        4'b0001: begin
                                if (pixel_x >= 324)
                                    vga_rgb = 5'b00011;
                                else
                                    vga_rgb = 5'b00000;
                                end
                        4'b0010: begin
                                if (pixel_y < 724)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 724 && pixel_y < 735 && pixel_x >= 324)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 735 && pixel_y < 741)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 741 && pixel_y < 752 && pixel_x < 314)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 752)
                                    vga_rgb = 5'b00011;       
                                else
                                    vga_rgb = 5'b00000;
                                end
                        4'b0011: begin
                                if (pixel_y < 724)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 724 && pixel_y < 735 && pixel_x >= 324)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 735 && pixel_y < 741)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 741 && pixel_y < 752 && pixel_x >= 324)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 752)
                                    vga_rgb = 5'b00011;       
                                else
                                    vga_rgb = 5'b00000;
                                end
                        4'b0100: begin
                                if (pixel_y < 732 && pixel_x < 312)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y < 732 && pixel_x >= 326)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 732 && pixel_y < 738)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 738 && pixel_x >= 326)
                                    vga_rgb = 5'b00011;
                                else
                                    vga_rgb = 5'b00000;
                                end
                        4'b0101: begin
                                if (pixel_y < 724)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 724 && pixel_y < 735 && pixel_x < 314)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 735 && pixel_y < 741)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 741 && pixel_y < 752 && pixel_x >= 324)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 752)
                                    vga_rgb = 5'b00011;       
                                else
                                    vga_rgb = 5'b00000;
                                end
                        4'b0110: begin
                                if (pixel_y < 736 && pixel_x < 312)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 736 && pixel_y < 742)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 742 && pixel_y < 752 && pixel_x < 312)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 742 && pixel_y < 752 && pixel_x >= 326)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 752)
                                    vga_rgb = 5'b00011;
                                else
                                    vga_rgb = 5'b00000;
                                end
                        4'b0111: begin
                                 if (pixel_y < 724)
                                    vga_rgb = 5'b00011;
                                 else if (pixel_y >= 724 && pixel_x >= 326)
                                    vga_rgb = 5'b00011;
                                 else
                                    vga_rgb = 5'b00000;
                                 end
                        4'b1000: begin
                                if (pixel_y < 724)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 724 && pixel_y < 735 && pixel_x < 314)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 724 && pixel_y < 735 && pixel_x > 324)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 735 && pixel_y < 741)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 741 && pixel_y < 752 && pixel_x >= 324)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 741 && pixel_y < 752 && pixel_x < 314)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 752)
                                    vga_rgb = 5'b00011;       
                                else
                                    vga_rgb = 5'b00000;
                                end
                        4'b1001: begin
                                if (pixel_y < 724)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 724 && pixel_y < 734 && pixel_x < 312)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 724 && pixel_y < 734 && pixel_x >= 326)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 734 && pixel_y < 740)
                                    vga_rgb = 5'b00011;
                                else if (pixel_y >= 740 && pixel_x >= 326)
                                    vga_rgb = 5'b00011;
                                else
                                    vga_rgb = 5'b00000;
                                end
                        default: vga_rgb = 5'b00000;
                    endcase
                else if (pixel_x < 984 && pixel_x >= 856)
                    begin
                    if (pixel_y < 722 || pixel_y >= 754 || pixel_x < 860 || pixel_x >= 980)
                        vga_rgb = 5'b11111;
                    else if (pixel_y >= 722 && pixel_y < 754 && pixel_x >=860 && pixel_x < 980)
                        case (charge_count)
                            3'b000: vga_rgb = 5'b00000;
                            3'b001: begin
                                    if (pixel_x < 880)
                                        vga_rgb = 5'b00001;
                                    else
                                        vga_rgb = 5'b00000;
                                    end
                            3'b010: begin
                                    if (pixel_x < 900)
                                        vga_rgb = 5'b00001;
                                    else
                                        vga_rgb = 5'b00000;
                                    end
                            3'b011: begin
                                    if (pixel_x < 920)
                                        vga_rgb = 5'b00001;
                                    else
                                        vga_rgb = 5'b00000;
                                    end
                            3'b100: begin
                                    if (pixel_x < 940)
                                        vga_rgb = 5'b00001;
                                    else
                                        vga_rgb = 5'b00000;
                                    end
                            3'b101: begin
                                    if (pixel_x < 960)
                                        vga_rgb = 5'b00001;
                                    else
                                        vga_rgb = 5'b00000;
                                    end
                            3'b110: begin
                                    vga_rgb = 5'b00010;
                                    end
                            default: vga_rgb = 5'b00000;
                        endcase
                    else
                        vga_rgb = 5'b00000;
                    end
                else
                    vga_rgb = 5'b00000;
                end
            else if (pixel_y >= 60 && pixel_y < 64 || pixel_y > 703 && pixel_y <= 707)
                vga_rgb = 5'b11111;
            else if (pixel_y > 589 && pixel_y <= 593)
                vga_rgb = 5'b00010;
            else if (player_pixel)
                vga_rgb = 5'b01111;
            else if (shot_pixel)
                vga_rgb = 5'b00001;
            else if (ship_pixel)
                vga_rgb = 5'b01100;
            else
                vga_rgb = 5'b00000;
            end
        else
            vga_rgb = 5'b00000;
        end

/*
    //vga test - color bars
    always @(*)
        begin
        if (video_on)
            begin
            if (pixel_x < 256)
                vga_rgb = 5'b01111;
            else if (pixel_x >= 256 && pixel_x < 512)
                vga_rgb = 5'b01110;
            else if (pixel_x >= 512 && pixel_x < 768)
                vga_rgb = 5'b01000;
            else
                vga_rgb = 5'b01100;
            end
        else
            begin
            vga_rgb = 5'b00000;
            end
        end */
endmodule

 
