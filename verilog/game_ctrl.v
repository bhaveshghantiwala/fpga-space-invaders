module game_ctrl (
    input s_clk, rst, ship_pixel, shot_pixel, cont_btn, line_crossed,
    output reg lvl_start, player_en, 
    output reg [2:0] level,
    output reg [2:0] mode, 
    output reg [23:0] inv_en,
    output [11:0] score
    );

    reg [4:0] destroyed_count;
    reg [3:0] state;
    reg dsp_clk;
    wire [3:0] hundreds, tens, ones;
    wire [8:0] binary;
    reg [8:0] bug_fix;
    
    parameter S0 = 4'b0000,
              S1 = 4'b0001,
              S2 = 4'b0010,
              S3 = 4'b0011,
              S4 = 4'b0100,
              S5 = 4'b0101,
              S6 = 4'b0110,
              S7 = 4'b0111,
              S8 = 4'b1000,
              S9 = 4'b1001,
              S10 = 4'b1010,
              S11 = 4'b1011;
    parameter M0 = 3'b000,
              M1 = 3'b001,
              M2 = 3'b010,
              M3 = 3'b011,
              M4 = 3'b100;          

    always @(posedge s_clk)
        begin
        if (!rst)
            begin
            state <= S0;
            mode <= M0;
            lvl_start <= 1'b0;
            player_en <= 1'b0;
            inv_en <= 24'h000000;
            level <= 3'b000;
            end
        else
            case (state)
                S0: begin
                    if(cont_btn)
                        begin
                        state <= S1;
                        mode <= M1;
                        lvl_start <= 1'b1;
                        player_en <= 1'b1;
                        inv_en <= 24'h00aa55;
                        level <= 3'b001;
                        end
                    else
                        state <= S0;
                    end
                S1: begin
                    if(destroyed_count == 5'b01000) //8 ships destroyed
                        begin
                        state <= S2;
                        mode <= M2;
                        lvl_start <= 1'b0;
                        player_en <= 1'b0;
                        inv_en <= 24'b000000;
                        end
                    else if (line_crossed)
                        begin
                        state <= S11;
                        mode <= M4;
                        lvl_start <= 1'b0;
                        player_en <= 1'b0;
                        inv_en <= 24'b000000;
                        end
                    else
                        state <= S1;
                    end
                S2: begin
                    if(cont_btn)
                        begin
                        state <= S3;
                        mode <= M1;
                        lvl_start <= 1'b1;
                        player_en <= 1'b1;
                        inv_en <= 24'h005aff;
                        level <= 3'b010;
                        end
                    else
                        state <= S2;
                    end
                S3: begin
                    if(destroyed_count == 5'b01100) //12 ships destroyed
                        begin
                        state <= S4;
                        mode <= M2;
                        lvl_start <= 1'b0;
                        player_en <= 1'b0;
                        inv_en <= 24'b000000;
                        end
                    else if (line_crossed)
                        begin
                        state <= S11;
                        mode <= M4;
                        lvl_start <= 1'b0;
                        player_en <= 1'b0;
                        inv_en <= 24'b000000;
                        end
                    else
                        state <= S3;
                    end
                S4: begin
                    if(cont_btn)
                        begin
                        state <= S5;
                        mode <= M1;
                        lvl_start <= 1'b1;
                        player_en <= 1'b1;
                        inv_en <= 24'haa55ff;
                        level <= 3'b011;
                        end
                    else
                        state <= S4;
                    end
                S5: begin
                    if(destroyed_count == 5'b10000) //16 ships destroyed
                        begin
                        state <= S6;
                        mode <= M2;
                        lvl_start <= 1'b0;
                        player_en <= 1'b0;
                        inv_en <= 24'b000000;
                        end
                    else if (line_crossed)
                        begin
                        state <= S11;
                        mode <= M4;
                        lvl_start <= 1'b0;
                        player_en <= 1'b0;
                        inv_en <= 24'b000000;
                        end
                    else
                        state <= S5;
                    end
                S6: begin
                    if(cont_btn)
                        begin
                        state <= S7;
                        mode <= M1;
                        lvl_start <= 1'b1;
                        player_en <= 1'b1;
                        inv_en <= 24'h3cffff;
                        level <= 3'b100;
                        end
                    else
                        state <= S6;
                    end
                S7: begin
                    if(destroyed_count == 5'b10100) //20 ships destroyed
                        begin
                        state <= S8;
                        mode <= M2;
                        lvl_start <= 1'b0;
                        player_en <= 1'b0;
                        inv_en <= 24'b000000;
                        end
                    else if (line_crossed)
                        begin
                        state <= S11;
                        mode <= M4;
                        lvl_start <= 1'b0;
                        player_en <= 1'b0;
                        inv_en <= 24'b000000;
                        end
                    else
                        state <= S7;
                    end
                S8: begin
                    if(cont_btn)
                        begin
                        state <= S9;
                        mode <= M1;
                        lvl_start <= 1'b1;
                        player_en <= 1'b1;
                        inv_en <= 24'hffffff;
                        level <= 3'b101;
                        end
                    else
                        state <= S8;
                    end
                S9: begin
                    if(destroyed_count == 5'b11000) //24 ships destroyed
                        begin
                        state <= S10;
                        mode <= M3;
                        lvl_start <= 1'b0;
                        player_en <= 1'b0;
                        inv_en <= 24'b000000;
                        end
                    else if (line_crossed)
                        begin
                        state <= S11;
                        mode <= M4;
                        lvl_start <= 1'b0;
                        player_en <= 1'b0;
                        inv_en <= 24'b000000;
                        end
                    else
                        state <= S9;
                    end
                S10: begin
                        state <= S10;
                        mode <= M3;
                        lvl_start <= 1'b0;
                        player_en <= 1'b0;
                        inv_en <= 24'b000000;
                    end
                S11: begin
                        state <= S11;
                        mode <= M4;
                        lvl_start <= 1'b0;
                        player_en <= 1'b0;
                        inv_en <= 24'b000000;
                    end
                default: begin
                        state <= S0;
                        mode <= M0;
                        lvl_start <= 1'b0;
                        player_en <= 1'b0;
                        inv_en <= 24'h000000;
                    end
            endcase
        end

    always @(posedge s_clk)
        begin
        if (!lvl_start)
            destroyed_count <= 5'b00000;
        else
            begin
            if(ship_pixel && shot_pixel)
                destroyed_count <= destroyed_count + 1;
            else
                destroyed_count <= destroyed_count;
            end
        end

    always @(posedge s_clk)
        begin
        if(!rst)
            dsp_clk <= ~dsp_clk;
        else if (state == S0) //to fix bug that doesn't register the first hit for score
            if (cont_btn)
                dsp_clk <= 1'b0;
            else
                dsp_clk <= 1'b1;
        else
            begin
            if(ship_pixel && shot_pixel)
                dsp_clk <= 1'b1;
            else
                dsp_clk <= 1'b0;
            end
        end

    always @(posedge s_clk) //bug fix for score not reseting when restart the game with on switch
        begin
        if (!rst)
            bug_fix <= 9'b0_0000_0000;
        else
            bug_fix <= binary;
        end

       ADDSUB_MACRO #(
           .DEVICE("7SERIES"), // Target Device: "7SERIES" 
           .LATENCY(1),        // Desired clock cycle latency, 0-2
           .WIDTH(9)          // Input / output bus width, 1-48
        ) ADDSUB_MACRO_inst (
           //.CARRYOUT(CARRYOUT), // 1-bit carry-out output signal
           .RESULT(binary),     // Add/sub result output, width defined by WIDTH parameter
           .A(bug_fix),               // Input A bus, width defined by WIDTH parameter
           .ADD_SUB(1'b1),   // 1-bit add/sub input, high selects add, low selects subtract
           .B({6'b000000, level}),               // Input B bus, width defined by WIDTH parameter
           .CARRYIN(1'b0),   // 1-bit carry-in input
           .CE(1'b1),             // 1-bit clock enable input
           .CLK(dsp_clk),           // 1-bit clock input
           .RST(1'b0)            // 1-bit active high synchronous reset
        );

    
    BCD bcd0 (
        .binary(binary),
        .hundreds(hundreds),
        .tens(tens),
        .ones(ones)
        );
        
    assign score = {hundreds, tens, ones};

endmodule
