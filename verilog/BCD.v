module BCD (
    input [8:0] binary,
    output reg [3:0] hundreds,
    output reg [3:0] tens,
    output reg [3:0] ones
    );

    integer i;
    always @(*)
        begin
        hundreds = 4'd0;
        tens = 4'd0;
        ones = 4'd0;

        for (i = 8; i >= 0; i = i - 1)
            begin
            if (hundreds >= 5)
                hundreds = hundreds + 3;
            if (tens >= 5)
                tens = tens + 3;
            if (ones >= 5)
                ones = ones + 3;

            hundreds = hundreds << 1;
            hundreds[0] = tens[3];
            tens = tens << 1;
            tens[0] = ones[3];
            ones = ones << 1;
            ones[0] = binary[i];
            end
        end
endmodule
