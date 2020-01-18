module Top(input RSTN,
	       input [3:0] K_COL,
	       input [15:0] SW,
			 input clk200P,
			 input clk200N,
		   output [4:0] K_ROW,
	       output CR,
	       output RDY,
	       output readn,
	       output SEGCLK,
	       output SEGDT,
	       output SEGEN,
	       output SEGCLR,
	       output LEDCLK,
	       output LEDDT,
	       output LEDEN,
	       output LEDCLR,
		   output [7:0] SEGMENT,
		   output [3:0] AN,
		   output [7:0] LED,
		   output Buzzer
		);	
	 wire clk_100mhz;
    wire [4:0] key_out;
    wire key_ready, rst;
    wire [3:0] Pulse;
    wire [3:0] btn_ok;
    wire [15:0] sw_ok;
    wire [31:0] Ai, Bi;
    wire [7:0] blink;
    wire [31:0] Div;
    wire [31:0] disp_num;
    wire [7:0] point_out;
    wire [7:0] LE_out;
    wire Clk_CPU;
    wire GPIOe0000000_we;
    wire [31:0] CPU2IO;
    wire [31:0] PC;
    wire [31:0] inst;
    wire [31:0] Counter_out;
    wire [31:0] Addr_out;
    wire [31:0] Data_out;
    wire [31:0] Data_in;
    wire [31:0] ram_data_in;
    wire [31:0] ram_data_out;
    wire [9:0] ram_addr;
    wire [1:0] counter_set;
    wire data_ram_we;
    wire GPIOF0;
    wire counter_we;
    wire counter0_out, counter1_out, counter2_out;
    wire mem_w;
    wire [15:0] LED_out;
	 
	 clkdiv c5(
		.clk200P(clk200P),
		.clk200N(clk200N),
		.rst(rst),
		.clkdiv(),
		.clk100mhz(clk_100mhz)
		);
		
    SAnti_jitter U9(.RSTN(RSTN), .clk(clk_100mhz), .Key_y(K_COL), .Key_x(K_ROW), .SW(SW), .readn(readn), .CR(CR), .Key_out(key_out), .Key_ready(key_ready), .pulse_out(Pulse), .BTN_OK(btn_ok), .SW_OK(sw_ok), .rst(rst));
    SEnter_2_32 M4(.clk(clk_100mhz), .Din(key_out), .D_ready(key_ready), .BTN(btn_ok[2:0]), .Ctrl({sw_ok[7:5], sw_ok[15], sw_ok[0]}), .readn(readn), .Ai(Ai), .Bi(Bi), .blink(blink));
    
	 clk_div U8(
		.clk(clk_100mhz), 
		.rst(rst), 
		.SW2(sw_ok[2]), 
		.clkdiv(Div), 
		.Clk_CPU(Clk_CPU)
		);
    
	 Multi_8CH32 U5(
		.clk(~Clk_CPU), 
		.rst(rst), 
		.EN(GPIOe0000000_we), 
		.Test(sw_ok[7:5]), 
		.point_in({Div[31:0], Div[31:0]}), 
		.LES(64'b0000000000000000000000000000000000000000000000000000000000000000), 
		.Data0(CPU2IO), 
		.data1({2'b00, PC[31:2]}), 
		.data2(inst), 
		.data3(Counter_out), 
		.data4(Addr_out), 
		.data5(Data_out), 
		.data6(Data_in), 
		.data7(PC), 
		.Disp_num(disp_num), 
		.point_out(point_out), 
		.LE_out(LE_out)
		);
		
    SSeg7_Dev U6(.clk(clk_100mhz), .rst(rst), .Start(Div[10]), .SW0(sw_ok[0]), .flash(Div[25]), .Hexs(disp_num), .point(point_out), .LES(LE_out), .seg_clk(SEGCLK), .seg_sout(SEGDT), .SEG_PEN(SEGEN), .seg_clrn(SEGCLR));//original Div[10]
    
	 ROM_D U2(
		.a(PC[11:2]),
		.spo(inst)
		);
    RAM_B U3(
		.addra(ram_addr), 
		.wea(data_ram_we), 
		.dina(ram_data_in), 
		//.clka(Clk_CPU), 
		.clka(~clk_100mhz),
		.douta(ram_data_out)
		);
    
	 SPIO U7(.clk(~Clk_CPU), .rst(rst), .EN(GPIOF0), .Start(Div[10]), .P_Data(CPU2IO), .counter_set(counter_set), .LED_out(LED_out), .GPIOf0(), .led_clk(LEDCLK), .led_sout(LEDDT), .LED_PEN(LEDEN), .led_clrn(LEDCLR));//original Div[10]
	Seg7_Dev U61(.Scan({sw_ok[1], Div[19:18]}), .SW0(sw_ok[0]), .flash(Div[25]), .Hexs(disp_num), .point(point_out), .LES(LE_out), .SEGMENT(SEGMENT), .AN(AN));
	PIO U71(
			//.clk(clk_100mhz), 
			.clk(~Clk_CPU), 
			.rst(1'b0), .EN(1'b1), .PData_in(Ai), .counter_set(), .LED_out(LED), .GPIOf0());
	
	SCPU_More U1(
		.clk(Clk_CPU), 
		.reset(rst), 
		.MIO_ready(), 
		.inst_in(inst), 
		.Data_in(Data_in), 
		.INT(sw_ok[10]), 
		.mem_w(mem_w), 
		.PC_out(PC), 
		.Addr_out(Addr_out), 
		.Data_out(Data_out), 
		.CPU_MIO()
		);
	
	MIO_BUS U4(.clk(clk_100mhz), .rst(rst), .BTN(btn_ok), .SW(sw_ok), .mem_w(mem_w), .addr_bus(Addr_out), .Cpu_data4bus(Data_in), .Cpu_data2bus(Data_out), .ram_data_in(ram_data_in), .data_ram_we(data_ram_we), .ram_addr(ram_addr), .ram_data_out(ram_data_out), .Peripheral_in(CPU2IO), .GPIOe0000000_we(GPIOe0000000_we), .GPIOf0000000_we(GPIOF0),
		.led_out(LED_out), .counter_out(Counter_out), .counter0_out(counter0_out), .counter1_out(counter1_out), .counter2_out(counter2_out), .counter_we(counter_we));
	Counter_x U10(.clk(~Clk_CPU), .rst(rst), .clk0(Div[6]), .clk1(Div[9]), .clk2(Div[11]), .counter_we(counter_we), .counter_val(CPU2IO), .counter_ch(counter_set), .counter0_OUT(counter0_out), .counter1_OUT(counter1_out), .counter2_OUT(counter2_out), .counter_out(Counter_out));
	assign Buzzer = 1'b1;
	assign RDY = key_ready;
	
endmodule
