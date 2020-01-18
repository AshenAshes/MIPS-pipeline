<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="RSTN" />
        <signal name="clk100MHz" />
        <signal name="BTN_y(3:0)" />
        <signal name="BTN_x(4:0)" />
        <signal name="SW(15:0)" />
        <signal name="readn" />
        <signal name="CR" />
        <signal name="XLXN_22(4:0)" />
        <signal name="RDY" />
        <signal name="Pulse(3:0)" />
        <signal name="BTN_OK(3:0)" />
        <signal name="BTN_OK(2:0)" />
        <signal name="SW_OK(15:0)" />
        <signal name="SW_OK(7:5),SW_OK(15),SW_OK(0)" />
        <signal name="Ai(31:0)" />
        <signal name="Bi(31:0)" />
        <signal name="blink(7:0)" />
        <signal name="rst" />
        <signal name="Div(20)" />
        <signal name="SW_OK(0)" />
        <signal name="Div(25)" />
        <signal name="Disp_num(31:0)" />
        <signal name="point_out(7:0)" />
        <signal name="LE_out(7:0)" />
        <signal name="seg_clk" />
        <signal name="seg_sout" />
        <signal name="SEG_PEN" />
        <signal name="seg_clrn" />
        <signal name="SW_OK(2)" />
        <signal name="Div(31:0)" />
        <signal name="Clk_CPU" />
        <signal name="IO_clk" />
        <signal name="inst(31:0)" />
        <signal name="XLXN_58" />
        <signal name="PC(31:0)" />
        <signal name="PC(11:2)" />
        <signal name="XLXN_62" />
        <signal name="Addr_out(31:0)" />
        <signal name="Data_in(31:0)" />
        <signal name="Data_out(31:0)" />
        <signal name="XLXN_69(9:0)" />
        <signal name="XLXN_70(0:0)" />
        <signal name="XLXN_71(31:0)" />
        <signal name="XLXN_72" />
        <signal name="XLXN_74(31:0)" />
        <signal name="CPU2IO(31:0)" />
        <signal name="XLXN_79" />
        <signal name="GPIOF0" />
        <signal name="LED_out(15:0)" />
        <signal name="Counter_out(31:0)" />
        <signal name="XLXN_88" />
        <signal name="XLXN_89" />
        <signal name="XLXN_94" />
        <signal name="Div(6)" />
        <signal name="Div(9)" />
        <signal name="Div(11)" />
        <signal name="XLXN_103(1:0)" />
        <signal name="SW_OK(7:5)" />
        <signal name="Div(31:0),Div(31:0)" />
        <signal name="NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO" />
        <signal name="NO,NO,PC(31:2)" />
        <signal name="led_clk" />
        <signal name="led_sout" />
        <signal name="LED_PEN" />
        <signal name="led_clrn" />
        <signal name="SW_OK(1),Div(19:18)" />
        <signal name="SEGMENT(7:0)" />
        <signal name="AN(3:0)" />
        <signal name="LED(7:0)" />
        <signal name="Buzzer" />
        <signal name="V5" />
        <signal name="NO" />
        <signal name="clk200P" />
        <signal name="clk200N" />
        <port polarity="Input" name="RSTN" />
        <port polarity="Input" name="BTN_y(3:0)" />
        <port polarity="Output" name="BTN_x(4:0)" />
        <port polarity="Input" name="SW(15:0)" />
        <port polarity="Output" name="readn" />
        <port polarity="Output" name="CR" />
        <port polarity="Output" name="RDY" />
        <port polarity="Output" name="seg_clk" />
        <port polarity="Output" name="seg_sout" />
        <port polarity="Output" name="SEG_PEN" />
        <port polarity="Output" name="seg_clrn" />
        <port polarity="Output" name="led_clk" />
        <port polarity="Output" name="led_sout" />
        <port polarity="Output" name="LED_PEN" />
        <port polarity="Output" name="led_clrn" />
        <port polarity="Output" name="SEGMENT(7:0)" />
        <port polarity="Output" name="AN(3:0)" />
        <port polarity="Output" name="LED(7:0)" />
        <port polarity="Output" name="Buzzer" />
        <port polarity="Input" name="clk200P" />
        <port polarity="Input" name="clk200N" />
        <blockdef name="SCPU">
            <timestamp>2016-2-25T15:53:0</timestamp>
            <line x2="-48" y1="-512" y2="-512" x1="-16" />
            <line x2="-48" y1="-464" y2="-464" x1="-16" />
            <line x2="-48" y1="-384" y2="-384" style="linewidth:W" x1="-16" />
            <line x2="-48" y1="-224" y2="-224" style="linecolor:rgb(255,0,0)" x1="-16" />
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(255,170,255);fillstyle:Solid" width="384" x="-16" y="-580" height="564" />
            <line x2="400" y1="-432" y2="-432" style="linewidth:W" x1="368" />
            <line x2="400" y1="-496" y2="-496" x1="368" />
            <line x2="400" y1="-368" y2="-368" style="linewidth:W" x1="368" />
            <line x2="400" y1="-304" y2="-304" style="linewidth:W" x1="368" />
            <line x2="-16" y1="-112" y2="-112" style="linewidth:W" x1="-48" />
            <line x2="400" y1="-176" y2="-176" x1="368" />
            <line x2="400" y1="-112" y2="-112" x1="368" />
        </blockdef>
        <blockdef name="ROM_D">
            <timestamp>2016-2-25T15:53:0</timestamp>
            <rect style="fillcolor:rgb(255,170,255);fillstyle:Solid" width="380" x="32" y="84" height="244" />
            <line x2="32" y1="208" y2="208" style="linewidth:W" x1="0" />
            <line x2="416" y1="208" y2="208" style="linewidth:W" x1="448" />
        </blockdef>
        <blockdef name="RAM_B">
            <timestamp>2016-2-25T15:53:0</timestamp>
            <rect style="fillcolor:rgb(255,170,255);fillstyle:Solid" width="380" x="32" y="32" height="316" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="272" y2="272" x1="0" />
            <line x2="32" y1="144" y2="144" style="linewidth:W" x1="0" />
            <line x2="32" y1="224" y2="224" style="linewidth:W" x1="0" />
            <line x2="416" y1="144" y2="144" style="linewidth:W" x1="448" />
        </blockdef>
        <blockdef name="MIO_BUS">
            <timestamp>2016-2-25T15:53:0</timestamp>
            <rect style="fillcolor:rgb(255,255,127);fillstyle:Solid" width="432" x="64" y="-832" height="832" />
            <line x2="32" y1="-800" y2="-800" x1="64" />
            <line x2="32" y1="-736" y2="-736" x1="64" />
            <line x2="32" y1="-544" y2="-544" x1="64" />
            <line x2="32" y1="-480" y2="-480" style="linewidth:W" x1="64" />
            <line x2="32" y1="-416" y2="-416" style="linewidth:W" x1="64" />
            <line x2="32" y1="-352" y2="-352" style="linewidth:W" x1="64" />
            <line x2="32" y1="-64" y2="-64" style="linewidth:W" x1="64" />
            <line x2="32" y1="-112" y2="-112" style="linewidth:W" x1="64" />
            <line x2="32" y1="-160" y2="-160" x1="64" />
            <line x2="32" y1="-208" y2="-208" style="linewidth:W" x1="64" />
            <line x2="528" y1="-192" y2="-192" style="linewidth:W" x1="496" />
            <line x2="496" y1="-160" y2="-160" x1="528" />
            <line x2="496" y1="-128" y2="-128" x1="528" />
            <line x2="496" y1="-96" y2="-96" x1="528" />
            <line x2="528" y1="-64" y2="-64" x1="496" />
            <line x2="32" y1="-672" y2="-672" style="linewidth:W" x1="64" />
            <line x2="32" y1="-624" y2="-624" style="linewidth:W" x1="64" />
            <line x2="528" y1="-368" y2="-368" style="linewidth:W" x1="496" />
            <line x2="528" y1="-768" y2="-768" style="linewidth:W" x1="496" />
            <line x2="528" y1="-720" y2="-720" x1="496" />
            <line x2="528" y1="-672" y2="-672" x1="496" />
        </blockdef>
        <blockdef name="Counter_x">
            <timestamp>2016-2-25T15:53:0</timestamp>
            <rect style="fillcolor:rgb(180,180,180);fillstyle:Solid" width="384" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="512" y1="-480" y2="-480" x1="448" />
            <line x2="512" y1="-336" y2="-336" x1="448" />
            <line x2="512" y1="-192" y2="-192" x1="448" />
            <rect width="64" x="448" y="-60" height="24" />
            <line x2="512" y1="-48" y2="-48" x1="448" />
        </blockdef>
        <blockdef name="Multi_8CH32">
            <timestamp>2016-2-25T15:53:0</timestamp>
            <line x2="0" y1="-528" y2="-528" style="linewidth:W" x1="32" />
            <line x2="0" y1="-464" y2="-464" style="linewidth:W" x1="32" />
            <line x2="0" y1="-672" y2="-672" x1="32" />
            <line x2="0" y1="-624" y2="-624" x1="32" />
            <line x2="0" y1="-576" y2="-576" x1="32" />
            <line x2="0" y1="-416" y2="-416" style="linewidth:W" x1="32" />
            <line x2="0" y1="-368" y2="-368" style="linewidth:W" x1="32" />
            <line x2="0" y1="-320" y2="-320" style="linewidth:W" x1="32" />
            <line x2="0" y1="-272" y2="-272" style="linewidth:W" x1="32" />
            <line x2="0" y1="-224" y2="-224" style="linewidth:W" x1="32" />
            <line x2="0" y1="-176" y2="-176" style="linewidth:W" x1="32" />
            <line x2="0" y1="-128" y2="-128" style="linewidth:W" x1="32" />
            <line x2="0" y1="-80" y2="-80" style="linewidth:W" x1="32" />
            <line x2="0" y1="-32" y2="-32" style="linewidth:W" x1="32" />
            <line x2="352" y1="-576" y2="-576" style="linewidth:W" x1="384" />
            <line x2="352" y1="-528" y2="-528" style="linewidth:W" x1="384" />
            <line x2="352" y1="-624" y2="-624" style="linewidth:W" x1="384" />
            <rect style="fillcolor:rgb(179,164,255);fillstyle:Solid" width="320" x="32" y="-696" height="696" />
        </blockdef>
        <blockdef name="SPIO">
            <timestamp>2016-2-25T15:53:0</timestamp>
            <line x2="32" y1="-224" y2="-224" x1="64" />
            <line x2="32" y1="-32" y2="-32" style="linewidth:W" x1="64" />
            <line x2="464" y1="-224" y2="-224" style="linewidth:W" x1="448" />
            <line x2="32" y1="-176" y2="-176" x1="64" />
            <line x2="32" y1="-128" y2="-128" x1="64" />
            <line x2="32" y1="-80" y2="-80" x1="64" />
            <line x2="464" y1="-192" y2="-192" style="linewidth:W" x1="448" />
            <line x2="464" y1="-160" y2="-160" style="linewidth:W" x1="448" />
            <line x2="448" y1="-128" y2="-128" x1="464" />
            <line x2="464" y1="-96" y2="-96" x1="448" />
            <line x2="448" y1="-32" y2="-32" x1="464" />
            <line x2="464" y1="-64" y2="-64" x1="448" />
            <rect style="fillcolor:rgb(149,160,255);fillstyle:Solid" width="384" x="64" y="-260" height="256" />
        </blockdef>
        <blockdef name="Seg7_Dev">
            <timestamp>2016-2-25T15:53:0</timestamp>
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(192,173,254);fillstyle:Solid" width="288" x="32" y="-240" height="240" />
            <line x2="0" y1="-32" y2="-32" style="linewidth:W" x1="32" />
            <line x2="0" y1="-208" y2="-208" style="linewidth:W" x1="32" />
            <line x2="352" y1="-192" y2="-192" style="linewidth:W" x1="320" />
            <line x2="352" y1="-64" y2="-64" style="linewidth:W" x1="320" />
            <line x2="0" y1="-64" y2="-64" style="linewidth:W" x1="32" />
            <line x2="32" y1="-144" y2="-144" x1="0" />
            <line x2="32" y1="-176" y2="-176" x1="0" />
            <line x2="0" y1="-96" y2="-96" style="linewidth:W" x1="32" />
        </blockdef>
        <blockdef name="PIO">
            <timestamp>2016-2-25T15:53:0</timestamp>
            <rect style="fillcolor:rgb(149,160,255);fillstyle:Solid" width="384" x="64" y="-256" height="256" />
            <line x2="32" y1="-224" y2="-224" x1="64" />
            <line x2="32" y1="-160" y2="-160" x1="64" />
            <line x2="32" y1="-96" y2="-96" x1="64" />
            <line x2="32" y1="-32" y2="-32" style="linewidth:W" x1="64" />
            <line x2="480" y1="-32" y2="-32" style="linewidth:W" x1="448" />
            <line x2="480" y1="-128" y2="-128" style="linewidth:W" x1="448" />
            <line x2="480" y1="-224" y2="-224" style="linewidth:W" x1="448" />
        </blockdef>
        <blockdef name="SAnti_jitter">
            <timestamp>2016-2-25T15:53:0</timestamp>
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(170,255,255);fillstyle:Solid" width="300" x="64" y="-248" height="256" />
            <line x2="32" y1="-64" y2="-64" style="linewidth:W" x1="64" />
            <line x2="32" y1="-32" y2="-32" x1="64" />
            <line x2="32" y1="-160" y2="-160" style="linewidth:W" x1="64" />
            <line x2="32" y1="-112" y2="-112" style="linewidth:W" x1="64" />
            <line x2="32" y1="-224" y2="-224" x1="64" />
            <line x2="32" y1="-192" y2="-192" x1="64" />
            <line x2="400" y1="-192" y2="-192" style="linewidth:W" x1="368" />
            <line x2="364" y1="-160" y2="-160" x1="400" />
            <line x2="364" y1="-224" y2="-224" x1="400" />
            <line x2="364" y1="-16" y2="-16" x1="400" />
            <line x2="400" y1="-48" y2="-48" style="linewidth:W" x1="368" />
            <line x2="400" y1="-128" y2="-128" style="linewidth:W" x1="368" />
            <line x2="400" y1="-96" y2="-96" style="linewidth:W" x1="368" />
        </blockdef>
        <blockdef name="clk_div">
            <timestamp>2016-2-25T15:53:0</timestamp>
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(142,240,255);fillstyle:Solid" width="256" x="32" y="-140" height="140" />
            <line x2="0" y1="-80" y2="-80" x1="32" />
            <line x2="0" y1="-112" y2="-112" x1="32" />
            <line x2="0" y1="-32" y2="-32" x1="32" />
            <line x2="320" y1="-112" y2="-112" style="linewidth:W" x1="288" />
            <line x2="320" y1="-32" y2="-32" x1="288" />
        </blockdef>
        <blockdef name="SEnter_2_32">
            <timestamp>2016-2-25T15:53:0</timestamp>
            <line x2="288" y1="-240" y2="-240" x1="320" />
            <line x2="320" y1="-192" y2="-192" style="linewidth:W" x1="288" />
            <line x2="320" y1="-128" y2="-128" style="linewidth:W" x1="288" />
            <line x2="320" y1="-64" y2="-64" style="linewidth:W" x1="288" />
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(170,255,255);fillstyle:Solid" width="256" x="32" y="-272" height="272" />
            <line x2="0" y1="-208" y2="-208" style="linewidth:W" x1="32" />
            <line x2="0" y1="-176" y2="-176" x1="32" />
            <line x2="0" y1="-240" y2="-240" x1="32" />
            <line x2="0" y1="-64" y2="-64" style="linewidth:W" x1="32" />
            <line x2="0" y1="-112" y2="-112" style="linewidth:W" x1="32" />
        </blockdef>
        <blockdef name="SSeg7_Dev">
            <timestamp>2016-2-25T15:53:0</timestamp>
            <line x2="0" y1="-48" y2="-48" style="linewidth:W" x1="32" />
            <line x2="368" y1="-160" y2="-160" x1="384" />
            <line x2="368" y1="-224" y2="-224" x1="384" />
            <line x2="368" y1="-96" y2="-96" x1="384" />
            <line x2="0" y1="-80" y2="-80" style="linewidth:W" x1="32" />
            <line x2="0" y1="-112" y2="-112" style="linewidth:W" x1="32" />
            <rect style="linecolor:rgb(0,0,0);fillcolor:rgb(174,185,255);fillstyle:Solid" width="336" x="32" y="-372" height="360" />
            <line x2="0" y1="-224" y2="-224" x1="32" />
            <line x2="0" y1="-160" y2="-160" x1="32" />
            <line x2="368" y1="-288" y2="-288" x1="384" />
            <line x2="0" y1="-336" y2="-336" x1="32" />
            <line x2="0" y1="-304" y2="-304" x1="32" />
            <line x2="0" y1="-272" y2="-272" x1="32" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="clkdiv">
            <timestamp>2019-9-16T7:8:41</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="SCPU" name="U1">
            <blockpin signalname="Clk_CPU" name="clk" />
            <blockpin signalname="rst" name="reset" />
            <blockpin signalname="inst(31:0)" name="inst_in(31:0)" />
            <blockpin signalname="XLXN_58" name="INT" />
            <blockpin signalname="Addr_out(31:0)" name="Addr_out(31:0)" />
            <blockpin signalname="XLXN_62" name="mem_w" />
            <blockpin signalname="Data_out(31:0)" name="Data_out(31:0)" />
            <blockpin signalname="Data_in(31:0)" name="Data_in(31:0)" />
            <blockpin signalname="PC(31:0)" name="PC_out(31:0)" />
            <blockpin name="CPU_MIO" />
            <blockpin name="MIO_ready" />
        </block>
        <block symbolname="ROM_D" name="U2">
            <blockpin signalname="PC(11:2)" name="a(9:0)" />
            <blockpin signalname="inst(31:0)" name="spo(31:0)" />
        </block>
        <block symbolname="RAM_B" name="U3">
            <blockpin signalname="XLXN_69(9:0)" name="addra(9:0)" />
            <blockpin signalname="XLXN_72" name="clka" />
            <blockpin signalname="XLXN_70(0:0)" name="wea(0:0)" />
            <blockpin signalname="XLXN_71(31:0)" name="dina(31:0)" />
            <blockpin signalname="XLXN_74(31:0)" name="douta(31:0)" />
        </block>
        <block symbolname="MIO_BUS" name="U4">
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="clk100MHz" name="clk" />
            <blockpin signalname="XLXN_62" name="mem_w" />
            <blockpin signalname="Addr_out(31:0)" name="addr_bus(31:0)" />
            <blockpin signalname="Data_in(31:0)" name="Cpu_data4bus(31:0)" />
            <blockpin signalname="Data_out(31:0)" name="Cpu_data2bus(31:0)" />
            <blockpin signalname="XLXN_74(31:0)" name="ram_data_out(31:0)" />
            <blockpin signalname="XLXN_69(9:0)" name="ram_addr(9:0)" />
            <blockpin signalname="XLXN_70(0:0)" name="data_ram_we" />
            <blockpin signalname="XLXN_71(31:0)" name="ram_data_in(31:0)" />
            <blockpin signalname="Counter_out(31:0)" name="counter_out(31:0)" />
            <blockpin signalname="XLXN_88" name="counter2_out" />
            <blockpin signalname="XLXN_89" name="counter1_out" />
            <blockpin signalname="XLXN_58" name="counter0_out" />
            <blockpin signalname="XLXN_94" name="counter_we" />
            <blockpin signalname="BTN_OK(3:0)" name="BTN(3:0)" />
            <blockpin signalname="SW_OK(15:0)" name="SW(15:0)" />
            <blockpin signalname="LED_out(15:0)" name="led_out(15:0)" />
            <blockpin signalname="CPU2IO(31:0)" name="Peripheral_in(31:0)" />
            <blockpin signalname="XLXN_79" name="GPIOe0000000_we" />
            <blockpin signalname="GPIOF0" name="GPIOf0000000_we" />
        </block>
        <block symbolname="Counter_x" name="U10">
            <blockpin signalname="IO_clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="Div(6)" name="clk0" />
            <blockpin signalname="Div(9)" name="clk1" />
            <blockpin signalname="Div(11)" name="clk2" />
            <blockpin signalname="XLXN_94" name="counter_we" />
            <blockpin signalname="CPU2IO(31:0)" name="counter_val(31:0)" />
            <blockpin signalname="XLXN_103(1:0)" name="counter_ch(1:0)" />
            <blockpin signalname="XLXN_58" name="counter0_OUT" />
            <blockpin signalname="XLXN_89" name="counter1_OUT" />
            <blockpin signalname="XLXN_88" name="counter2_OUT" />
            <blockpin signalname="Counter_out(31:0)" name="counter_out(31:0)" />
        </block>
        <block symbolname="Multi_8CH32" name="U5">
            <blockpin signalname="SW_OK(7:5)" name="Test(2:0)" />
            <blockpin signalname="Div(31:0),Div(31:0)" name="point_in(63:0)" />
            <blockpin signalname="XLXN_79" name="EN" />
            <blockpin signalname="IO_clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO" name="LES(63:0)" />
            <blockpin signalname="CPU2IO(31:0)" name="Data0(31:0)" />
            <blockpin signalname="NO,NO,PC(31:2)" name="data1(31:0)" />
            <blockpin signalname="inst(31:0)" name="data2(31:0)" />
            <blockpin signalname="Counter_out(31:0)" name="data3(31:0)" />
            <blockpin signalname="Addr_out(31:0)" name="data4(31:0)" />
            <blockpin signalname="Data_out(31:0)" name="data5(31:0)" />
            <blockpin signalname="Data_in(31:0)" name="data6(31:0)" />
            <blockpin signalname="PC(31:0)" name="data7(31:0)" />
            <blockpin signalname="point_out(7:0)" name="point_out(7:0)" />
            <blockpin signalname="LE_out(7:0)" name="LE_out(7:0)" />
            <blockpin signalname="Disp_num(31:0)" name="Disp_num(31:0)" />
        </block>
        <block symbolname="SPIO" name="U7">
            <blockpin signalname="IO_clk" name="clk" />
            <blockpin signalname="CPU2IO(31:0)" name="P_Data(31:0)" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="GPIOF0" name="EN" />
            <blockpin signalname="Div(20)" name="Start" />
            <blockpin signalname="led_clk" name="led_clk" />
            <blockpin name="GPIOf0(13:0)" />
            <blockpin signalname="LED_out(15:0)" name="LED_out(15:0)" />
            <blockpin signalname="XLXN_103(1:0)" name="counter_set(1:0)" />
            <blockpin signalname="led_clrn" name="led_clrn" />
            <blockpin signalname="LED_PEN" name="LED_PEN" />
            <blockpin signalname="led_sout" name="led_sout" />
        </block>
        <block symbolname="Seg7_Dev" name="U61">
            <blockpin signalname="LE_out(7:0)" name="LES(7:0)" />
            <blockpin signalname="SW_OK(1),Div(19:18)" name="Scan(2:0)" />
            <blockpin signalname="SEGMENT(7:0)" name="SEGMENT(7:0)" />
            <blockpin signalname="AN(3:0)" name="AN(3:0)" />
            <blockpin signalname="point_out(7:0)" name="point(7:0)" />
            <blockpin signalname="Div(25)" name="flash" />
            <blockpin signalname="SW_OK(0)" name="SW0" />
            <blockpin signalname="Disp_num(31:0)" name="Hexs(31:0)" />
        </block>
        <block symbolname="PIO" name="U71">
            <blockpin signalname="IO_clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="GPIOF0" name="EN" />
            <blockpin signalname="CPU2IO(31:0)" name="PData_in(31:0)" />
            <blockpin name="GPIOf0(21:0)" />
            <blockpin signalname="LED(7:0)" name="LED_out(7:0)" />
            <blockpin name="counter_set(1:0)" />
        </block>
        <block symbolname="SAnti_jitter" name="U9">
            <blockpin signalname="SW(15:0)" name="SW(15:0)" />
            <blockpin signalname="readn" name="readn" />
            <blockpin signalname="BTN_y(3:0)" name="Key_y(3:0)" />
            <blockpin signalname="BTN_x(4:0)" name="Key_x(4:0)" />
            <blockpin signalname="RSTN" name="RSTN" />
            <blockpin signalname="clk100MHz" name="clk" />
            <blockpin signalname="XLXN_22(4:0)" name="Key_out(4:0)" />
            <blockpin signalname="RDY" name="Key_ready" />
            <blockpin signalname="CR" name="CR" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="SW_OK(15:0)" name="SW_OK(15:0)" />
            <blockpin signalname="Pulse(3:0)" name="pulse_out(3:0)" />
            <blockpin signalname="BTN_OK(3:0)" name="BTN_OK(3:0)" />
        </block>
        <block symbolname="clk_div" name="U8">
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="clk100MHz" name="clk" />
            <blockpin signalname="SW_OK(2)" name="SW2" />
            <blockpin signalname="Div(31:0)" name="clkdiv(31:0)" />
            <blockpin signalname="Clk_CPU" name="Clk_CPU" />
        </block>
        <block symbolname="SEnter_2_32" name="M4">
            <blockpin signalname="readn" name="readn" />
            <blockpin signalname="Ai(31:0)" name="Ai(31:0)" />
            <blockpin signalname="Bi(31:0)" name="Bi(31:0)" />
            <blockpin signalname="blink(7:0)" name="blink(7:0)" />
            <blockpin signalname="XLXN_22(4:0)" name="Din(4:0)" />
            <blockpin signalname="RDY" name="D_ready" />
            <blockpin signalname="clk100MHz" name="clk" />
            <blockpin signalname="SW_OK(7:5),SW_OK(15),SW_OK(0)" name="Ctrl(4:0)" />
            <blockpin signalname="BTN_OK(2:0)" name="BTN(2:0)" />
        </block>
        <block symbolname="SSeg7_Dev" name="U6">
            <blockpin signalname="LE_out(7:0)" name="LES(7:0)" />
            <blockpin signalname="SEG_PEN" name="SEG_PEN" />
            <blockpin signalname="seg_sout" name="seg_sout" />
            <blockpin signalname="seg_clrn" name="seg_clrn" />
            <blockpin signalname="point_out(7:0)" name="point(7:0)" />
            <blockpin signalname="Disp_num(31:0)" name="Hexs(31:0)" />
            <blockpin signalname="SW_OK(0)" name="SW0" />
            <blockpin signalname="Div(25)" name="flash" />
            <blockpin signalname="seg_clk" name="seg_clk" />
            <blockpin signalname="clk100MHz" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="Div(20)" name="Start" />
        </block>
        <block symbolname="inv" name="XLXI_14">
            <blockpin signalname="Clk_CPU" name="I" />
            <blockpin signalname="IO_clk" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_15">
            <blockpin signalname="clk100MHz" name="I" />
            <blockpin signalname="XLXN_72" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_16">
            <blockpin signalname="V5" name="I" />
            <blockpin signalname="Buzzer" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_17">
            <blockpin signalname="V5" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_18">
            <blockpin signalname="NO" name="G" />
        </block>
        <block symbolname="clkdiv" name="XLXI_19">
            <blockpin signalname="clk200P" name="clk200P" />
            <blockpin signalname="clk200N" name="clk200N" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="clk100MHz" name="clk100MHz" />
            <blockpin name="clkdiv(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5382" height="3801">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="3408" y="2304" name="U7" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="32" y="-4" type="instance" />
        </instance>
        <instance x="3520" y="1616" name="U5" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="1056" y="1936" name="U2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="338" type="instance" />
        </instance>
        <instance x="1056" y="2496" name="U3" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="348" type="instance" />
        </instance>
        <instance x="1536" y="3344" name="U61" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="2688" y="3392" name="U71" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="32" y="0" type="instance" />
        </instance>
        <instance x="1040" y="464" name="U9" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="32" y="8" type="instance" />
        </instance>
        <instance x="1104" y="848" name="U8" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="3264" y="608" name="U6" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-12" type="instance" />
        </instance>
        <branch name="BTN_y(3:0)">
            <wire x2="1072" y1="304" y2="304" x1="560" />
        </branch>
        <branch name="BTN_x(4:0)">
            <wire x2="960" y1="384" y2="384" x1="560" />
            <wire x2="960" y1="352" y2="384" x1="960" />
            <wire x2="1072" y1="352" y2="352" x1="960" />
        </branch>
        <branch name="SW(15:0)">
            <wire x2="800" y1="432" y2="432" x1="560" />
            <wire x2="800" y1="400" y2="432" x1="800" />
            <wire x2="1072" y1="400" y2="400" x1="800" />
        </branch>
        <iomarker fontsize="28" x="496" y="240" name="RSTN" orien="R180" />
        <branch name="RSTN">
            <wire x2="1072" y1="240" y2="240" x1="496" />
        </branch>
        <branch name="clk100MHz">
            <attrtext style="alignment:SOFT-TCENTER;fontsize:28;fontname:Arial" attrname="Name" x="256" y="1024" type="branch" />
            <wire x2="256" y1="960" y2="1024" x1="256" />
            <wire x2="352" y1="1024" y2="1024" x1="256" />
            <wire x2="352" y1="1024" y2="2768" x1="352" />
            <wire x2="448" y1="2768" y2="2768" x1="352" />
            <wire x2="752" y1="1024" y2="1024" x1="352" />
            <wire x2="2288" y1="1024" y2="1024" x1="752" />
            <wire x2="688" y1="960" y2="960" x1="256" />
            <wire x2="688" y1="656" y2="656" x1="608" />
            <wire x2="688" y1="656" y2="960" x1="688" />
            <wire x2="752" y1="144" y2="272" x1="752" />
            <wire x2="752" y1="272" y2="736" x1="752" />
            <wire x2="1104" y1="736" y2="736" x1="752" />
            <wire x2="752" y1="736" y2="1024" x1="752" />
            <wire x2="1072" y1="272" y2="272" x1="752" />
            <wire x2="1888" y1="144" y2="144" x1="752" />
            <wire x2="1888" y1="144" y2="240" x1="1888" />
            <wire x2="2128" y1="240" y2="240" x1="1888" />
            <wire x2="1888" y1="112" y2="144" x1="1888" />
            <wire x2="2880" y1="112" y2="112" x1="1888" />
            <wire x2="2880" y1="112" y2="272" x1="2880" />
            <wire x2="3264" y1="272" y2="272" x1="2880" />
        </branch>
        <iomarker fontsize="28" x="560" y="304" name="BTN_y(3:0)" orien="R180" />
        <iomarker fontsize="28" x="560" y="384" name="BTN_x(4:0)" orien="R180" />
        <branch name="readn">
            <wire x2="1072" y1="432" y2="432" x1="1024" />
            <wire x2="1024" y1="432" y2="560" x1="1024" />
            <wire x2="2544" y1="560" y2="560" x1="1024" />
            <wire x2="2544" y1="240" y2="240" x1="2448" />
            <wire x2="2544" y1="240" y2="560" x1="2544" />
            <wire x2="2608" y1="240" y2="240" x1="2544" />
        </branch>
        <branch name="CR">
            <wire x2="1536" y1="240" y2="240" x1="1440" />
        </branch>
        <iomarker fontsize="28" x="1536" y="240" name="CR" orien="R0" />
        <branch name="XLXN_22(4:0)">
            <wire x2="2128" y1="272" y2="272" x1="1440" />
        </branch>
        <branch name="RDY">
            <wire x2="1984" y1="304" y2="304" x1="1440" />
            <wire x2="2128" y1="304" y2="304" x1="1984" />
            <wire x2="2512" y1="160" y2="160" x1="1984" />
            <wire x2="1984" y1="160" y2="304" x1="1984" />
        </branch>
        <instance x="2128" y="480" name="M4" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <iomarker fontsize="28" x="2608" y="240" name="readn" orien="R0" />
        <branch name="Pulse(3:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1568" y="336" type="branch" />
            <wire x2="1568" y1="336" y2="336" x1="1440" />
        </branch>
        <branch name="BTN_OK(3:0)">
            <wire x2="1648" y1="368" y2="368" x1="1440" />
            <wire x2="1696" y1="368" y2="368" x1="1648" />
            <wire x2="1696" y1="368" y2="384" x1="1696" />
            <wire x2="1648" y1="368" y2="1152" x1="1648" />
            <wire x2="2288" y1="1152" y2="1152" x1="1648" />
        </branch>
        <bustap x2="1792" y1="368" y2="368" x1="1696" />
        <branch name="BTN_OK(2:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1971" y="368" type="branch" />
            <wire x2="2128" y1="368" y2="368" x1="1792" />
        </branch>
        <instance x="1104" y="1776" name="U1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="-48" y="-16" type="instance" />
        </instance>
        <instance x="2256" y="1824" name="U4" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="32" y="0" type="instance" />
        </instance>
        <branch name="SW_OK(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1529" y="416" type="branch" />
            <wire x2="1616" y1="416" y2="416" x1="1440" />
            <wire x2="1696" y1="416" y2="416" x1="1616" />
            <wire x2="1696" y1="416" y2="432" x1="1696" />
            <wire x2="1616" y1="416" y2="640" x1="1616" />
            <wire x2="1616" y1="640" y2="1200" x1="1616" />
            <wire x2="2288" y1="1200" y2="1200" x1="1616" />
            <wire x2="2512" y1="640" y2="640" x1="1616" />
            <wire x2="2512" y1="640" y2="656" x1="2512" />
        </branch>
        <bustap x2="1792" y1="416" y2="416" x1="1696" />
        <branch name="SW_OK(7:5),SW_OK(15),SW_OK(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2023" y="416" type="branch" />
            <wire x2="2128" y1="416" y2="416" x1="1792" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1465" y="448" type="branch" />
            <wire x2="1008" y1="624" y2="768" x1="1008" />
            <wire x2="1104" y1="768" y2="768" x1="1008" />
            <wire x2="1008" y1="768" y2="896" x1="1008" />
            <wire x2="1008" y1="896" y2="1312" x1="1008" />
            <wire x2="1056" y1="1312" y2="1312" x1="1008" />
            <wire x2="2096" y1="896" y2="896" x1="1008" />
            <wire x2="2864" y1="896" y2="896" x1="2096" />
            <wire x2="2864" y1="896" y2="992" x1="2864" />
            <wire x2="3168" y1="992" y2="992" x1="2864" />
            <wire x2="3168" y1="992" y2="2128" x1="3168" />
            <wire x2="3440" y1="2128" y2="2128" x1="3168" />
            <wire x2="3520" y1="992" y2="992" x1="3168" />
            <wire x2="2096" y1="896" y2="1088" x1="2096" />
            <wire x2="2288" y1="1088" y2="1088" x1="2096" />
            <wire x2="2096" y1="1088" y2="2240" x1="2096" />
            <wire x2="2208" y1="2240" y2="2240" x1="2096" />
            <wire x2="1520" y1="624" y2="624" x1="1008" />
            <wire x2="1520" y1="448" y2="448" x1="1440" />
            <wire x2="1520" y1="448" y2="624" x1="1520" />
        </branch>
        <iomarker fontsize="28" x="2512" y="160" name="RDY" orien="R0" />
        <branch name="Ai(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2624" y="288" type="branch" />
            <wire x2="2624" y1="288" y2="288" x1="2448" />
        </branch>
        <branch name="Bi(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2608" y="352" type="branch" />
            <wire x2="2608" y1="352" y2="352" x1="2448" />
        </branch>
        <branch name="blink(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2608" y="416" type="branch" />
            <wire x2="2608" y1="416" y2="416" x1="2448" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3152" y="304" type="branch" />
            <wire x2="3264" y1="304" y2="304" x1="3152" />
        </branch>
        <branch name="Div(20)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3168" y="336" type="branch" />
            <wire x2="3264" y1="336" y2="336" x1="3168" />
        </branch>
        <branch name="SW_OK(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3184" y="384" type="branch" />
            <wire x2="3264" y1="384" y2="384" x1="3184" />
        </branch>
        <branch name="Div(25)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3184" y="448" type="branch" />
            <wire x2="3264" y1="448" y2="448" x1="3184" />
        </branch>
        <branch name="Disp_num(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3431" y="848" type="branch" />
            <wire x2="3264" y1="496" y2="496" x1="3104" />
            <wire x2="3104" y1="496" y2="848" x1="3104" />
            <wire x2="3968" y1="848" y2="848" x1="3104" />
            <wire x2="3968" y1="848" y2="992" x1="3968" />
            <wire x2="3968" y1="992" y2="992" x1="3904" />
        </branch>
        <branch name="point_out(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3549" y="784" type="branch" />
            <wire x2="3152" y1="528" y2="784" x1="3152" />
            <wire x2="4000" y1="784" y2="784" x1="3152" />
            <wire x2="4000" y1="784" y2="1040" x1="4000" />
            <wire x2="3264" y1="528" y2="528" x1="3152" />
            <wire x2="4000" y1="1040" y2="1040" x1="3904" />
        </branch>
        <branch name="LE_out(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3579" y="688" type="branch" />
            <wire x2="3264" y1="560" y2="560" x1="3200" />
            <wire x2="3200" y1="560" y2="688" x1="3200" />
            <wire x2="4048" y1="688" y2="688" x1="3200" />
            <wire x2="4048" y1="688" y2="1088" x1="4048" />
            <wire x2="4048" y1="1088" y2="1088" x1="3904" />
        </branch>
        <branch name="seg_clk">
            <wire x2="3888" y1="320" y2="320" x1="3648" />
        </branch>
        <branch name="seg_sout">
            <wire x2="3888" y1="384" y2="384" x1="3648" />
        </branch>
        <branch name="SEG_PEN">
            <wire x2="3888" y1="448" y2="448" x1="3648" />
        </branch>
        <branch name="seg_clrn">
            <wire x2="3888" y1="512" y2="512" x1="3648" />
        </branch>
        <iomarker fontsize="28" x="3888" y="320" name="seg_clk" orien="R0" />
        <iomarker fontsize="28" x="3888" y="384" name="seg_sout" orien="R0" />
        <iomarker fontsize="28" x="3888" y="448" name="SEG_PEN" orien="R0" />
        <iomarker fontsize="28" x="3888" y="512" name="seg_clrn" orien="R0" />
        <branch name="SW_OK(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="816" type="branch" />
            <wire x2="1104" y1="816" y2="816" x1="960" />
        </branch>
        <branch name="Div(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="736" type="branch" />
            <wire x2="1824" y1="736" y2="736" x1="1424" />
            <wire x2="2032" y1="736" y2="736" x1="1824" />
            <wire x2="1824" y1="736" y2="2304" x1="1824" />
            <wire x2="1824" y1="2304" y2="2368" x1="1824" />
            <wire x2="1824" y1="2368" y2="2432" x1="1824" />
            <wire x2="1824" y1="2432" y2="2480" x1="1824" />
        </branch>
        <instance x="1872" y="848" name="XLXI_14" orien="R0" />
        <branch name="Clk_CPU">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1465" y="816" type="branch" />
            <wire x2="1040" y1="1120" y2="1264" x1="1040" />
            <wire x2="1056" y1="1264" y2="1264" x1="1040" />
            <wire x2="1584" y1="1120" y2="1120" x1="1040" />
            <wire x2="1584" y1="816" y2="816" x1="1424" />
            <wire x2="1872" y1="816" y2="816" x1="1584" />
            <wire x2="1584" y1="816" y2="1120" x1="1584" />
        </branch>
        <branch name="IO_clk">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2677" y="816" type="branch" />
            <wire x2="2960" y1="816" y2="816" x1="2096" />
            <wire x2="2960" y1="816" y2="944" x1="2960" />
            <wire x2="3200" y1="944" y2="944" x1="2960" />
            <wire x2="3200" y1="944" y2="2080" x1="3200" />
            <wire x2="3440" y1="2080" y2="2080" x1="3200" />
            <wire x2="3520" y1="944" y2="944" x1="3200" />
            <wire x2="2176" y1="2080" y2="2176" x1="2176" />
            <wire x2="2208" y1="2176" y2="2176" x1="2176" />
            <wire x2="3200" y1="2080" y2="2080" x1="2176" />
        </branch>
        <instance x="2208" y="2656" name="U10" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="inst(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="880" y="1392" type="branch" />
            <wire x2="928" y1="1392" y2="1392" x1="880" />
            <wire x2="928" y1="1392" y2="1920" x1="928" />
            <wire x2="1568" y1="1920" y2="1920" x1="928" />
            <wire x2="1568" y1="1920" y2="2144" x1="1568" />
            <wire x2="1056" y1="1392" y2="1392" x1="928" />
            <wire x2="1568" y1="2144" y2="2144" x1="1504" />
        </branch>
        <branch name="XLXN_58">
            <wire x2="1056" y1="1552" y2="1552" x1="976" />
            <wire x2="976" y1="1552" y2="1872" x1="976" />
            <wire x2="2848" y1="1872" y2="1872" x1="976" />
            <wire x2="2848" y1="1872" y2="2176" x1="2848" />
            <wire x2="2848" y1="2176" y2="2176" x1="2720" />
            <wire x2="2848" y1="1728" y2="1728" x1="2784" />
            <wire x2="2848" y1="1728" y2="1872" x1="2848" />
        </branch>
        <branch name="PC(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="688" y="1664" type="branch" />
            <wire x2="768" y1="1664" y2="1664" x1="688" />
            <wire x2="1056" y1="1664" y2="1664" x1="768" />
            <wire x2="768" y1="1664" y2="2144" x1="768" />
            <wire x2="768" y1="2144" y2="2160" x1="768" />
        </branch>
        <bustap x2="864" y1="2144" y2="2144" x1="768" />
        <branch name="PC(11:2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="948" y="2144" type="branch" />
            <wire x2="1056" y1="2144" y2="2144" x1="864" />
        </branch>
        <branch name="XLXN_62">
            <wire x2="2288" y1="1280" y2="1280" x1="1504" />
        </branch>
        <branch name="Addr_out(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1867" y="1344" type="branch" />
            <wire x2="2288" y1="1344" y2="1344" x1="1504" />
        </branch>
        <branch name="Data_in(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1852" y="1408" type="branch" />
            <wire x2="2288" y1="1408" y2="1408" x1="1504" />
        </branch>
        <branch name="Data_out(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1869" y="1472" type="branch" />
            <wire x2="2288" y1="1472" y2="1472" x1="1504" />
        </branch>
        <branch name="XLXN_69(9:0)">
            <wire x2="992" y1="2464" y2="2576" x1="992" />
            <wire x2="1056" y1="2576" y2="2576" x1="992" />
            <wire x2="1712" y1="2464" y2="2464" x1="992" />
            <wire x2="1712" y1="1712" y2="2464" x1="1712" />
            <wire x2="2288" y1="1712" y2="1712" x1="1712" />
        </branch>
        <branch name="XLXN_70(0:0)">
            <wire x2="960" y1="2416" y2="2640" x1="960" />
            <wire x2="1056" y1="2640" y2="2640" x1="960" />
            <wire x2="1664" y1="2416" y2="2416" x1="960" />
            <wire x2="1664" y1="1664" y2="2416" x1="1664" />
            <wire x2="2288" y1="1664" y2="1664" x1="1664" />
        </branch>
        <branch name="XLXN_71(31:0)">
            <wire x2="912" y1="2368" y2="2720" x1="912" />
            <wire x2="1056" y1="2720" y2="2720" x1="912" />
            <wire x2="1616" y1="2368" y2="2368" x1="912" />
            <wire x2="1616" y1="1616" y2="2368" x1="1616" />
            <wire x2="2288" y1="1616" y2="1616" x1="1616" />
        </branch>
        <instance x="448" y="2800" name="XLXI_15" orien="R0" />
        <branch name="XLXN_72">
            <wire x2="1056" y1="2768" y2="2768" x1="672" />
        </branch>
        <branch name="XLXN_74(31:0)">
            <wire x2="1760" y1="2640" y2="2640" x1="1504" />
            <wire x2="1760" y1="1760" y2="2640" x1="1760" />
            <wire x2="2288" y1="1760" y2="1760" x1="1760" />
        </branch>
        <branch name="XLXN_79">
            <wire x2="3280" y1="1104" y2="1104" x1="2784" />
            <wire x2="3520" y1="1040" y2="1040" x1="3280" />
            <wire x2="3280" y1="1040" y2="1104" x1="3280" />
        </branch>
        <branch name="GPIOF0">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2913" y="1152" type="branch" />
            <wire x2="3104" y1="1152" y2="1152" x1="2784" />
            <wire x2="3104" y1="1152" y2="2176" x1="3104" />
            <wire x2="3440" y1="2176" y2="2176" x1="3104" />
        </branch>
        <branch name="CPU2IO(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2944" y="1056" type="branch" />
            <wire x2="2208" y1="2560" y2="2560" x1="2096" />
            <wire x2="2096" y1="2560" y2="2768" x1="2096" />
            <wire x2="3136" y1="2768" y2="2768" x1="2096" />
            <wire x2="2944" y1="1056" y2="1056" x1="2784" />
            <wire x2="3136" y1="1056" y2="1056" x1="2944" />
            <wire x2="3136" y1="1056" y2="1248" x1="3136" />
            <wire x2="3136" y1="1248" y2="2272" x1="3136" />
            <wire x2="3136" y1="2272" y2="2768" x1="3136" />
            <wire x2="3440" y1="2272" y2="2272" x1="3136" />
            <wire x2="3520" y1="1248" y2="1248" x1="3136" />
        </branch>
        <branch name="LED_out(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2911" y="1456" type="branch" />
            <wire x2="3056" y1="1456" y2="1456" x1="2784" />
            <wire x2="3056" y1="1456" y2="1680" x1="3056" />
            <wire x2="3968" y1="1680" y2="1680" x1="3056" />
            <wire x2="3968" y1="1680" y2="2112" x1="3968" />
            <wire x2="3968" y1="2112" y2="2112" x1="3872" />
        </branch>
        <branch name="Counter_out(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2930" y="1632" type="branch" />
            <wire x2="2992" y1="2608" y2="2608" x1="2720" />
            <wire x2="2992" y1="1632" y2="1632" x1="2784" />
            <wire x2="2992" y1="1632" y2="2608" x1="2992" />
        </branch>
        <branch name="XLXN_88">
            <wire x2="2944" y1="2464" y2="2464" x1="2720" />
            <wire x2="2944" y1="1664" y2="1664" x1="2784" />
            <wire x2="2944" y1="1664" y2="2464" x1="2944" />
        </branch>
        <branch name="XLXN_89">
            <wire x2="2896" y1="2320" y2="2320" x1="2720" />
            <wire x2="2896" y1="1696" y2="1696" x1="2784" />
            <wire x2="2896" y1="1696" y2="2320" x1="2896" />
        </branch>
        <branch name="XLXN_94">
            <wire x2="2800" y1="1984" y2="1984" x1="2048" />
            <wire x2="2048" y1="1984" y2="2496" x1="2048" />
            <wire x2="2208" y1="2496" y2="2496" x1="2048" />
            <wire x2="2800" y1="1760" y2="1760" x1="2784" />
            <wire x2="2800" y1="1760" y2="1984" x1="2800" />
        </branch>
        <bustap x2="1920" y1="2304" y2="2304" x1="1824" />
        <branch name="Div(6)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1928" y="2304" type="branch" />
            <wire x2="1936" y1="2304" y2="2304" x1="1920" />
            <wire x2="2208" y1="2304" y2="2304" x1="1936" />
        </branch>
        <bustap x2="1920" y1="2368" y2="2368" x1="1824" />
        <branch name="Div(9)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1928" y="2368" type="branch" />
            <wire x2="1936" y1="2368" y2="2368" x1="1920" />
            <wire x2="2208" y1="2368" y2="2368" x1="1936" />
        </branch>
        <bustap x2="1920" y1="2432" y2="2432" x1="1824" />
        <branch name="Div(11)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="2432" type="branch" />
            <wire x2="1936" y1="2432" y2="2432" x1="1920" />
            <wire x2="2208" y1="2432" y2="2432" x1="1936" />
        </branch>
        <branch name="XLXN_103(1:0)">
            <wire x2="2208" y1="2624" y2="2624" x1="2160" />
            <wire x2="2160" y1="2624" y2="2720" x1="2160" />
            <wire x2="3088" y1="2720" y2="2720" x1="2160" />
            <wire x2="3088" y1="1984" y2="2720" x1="3088" />
            <wire x2="3920" y1="1984" y2="1984" x1="3088" />
            <wire x2="3920" y1="1984" y2="2080" x1="3920" />
            <wire x2="3920" y1="2080" y2="2080" x1="3872" />
        </branch>
        <bustap x2="2608" y1="640" y2="640" x1="2512" />
        <branch name="SW_OK(7:5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2624" y="640" type="branch" />
            <wire x2="2624" y1="640" y2="640" x1="2608" />
            <wire x2="3408" y1="640" y2="640" x1="2624" />
            <wire x2="3408" y1="640" y2="1088" x1="3408" />
            <wire x2="3520" y1="1088" y2="1088" x1="3408" />
        </branch>
        <branch name="Div(31:0),Div(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3456" y="1152" type="branch" />
            <wire x2="3520" y1="1152" y2="1152" x1="3456" />
        </branch>
        <branch name="NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO">
            <wire x2="3520" y1="1200" y2="1200" x1="3472" />
        </branch>
        <branch name="NO,NO,PC(31:2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3440" y="1296" type="branch" />
            <wire x2="3520" y1="1296" y2="1296" x1="3440" />
        </branch>
        <branch name="inst(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3440" y="1344" type="branch" />
            <wire x2="3520" y1="1344" y2="1344" x1="3440" />
        </branch>
        <branch name="Counter_out(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3456" y="1392" type="branch" />
            <wire x2="3520" y1="1392" y2="1392" x1="3456" />
        </branch>
        <branch name="Addr_out(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3424" y="1440" type="branch" />
            <wire x2="3520" y1="1440" y2="1440" x1="3424" />
        </branch>
        <branch name="Data_out(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3440" y="1488" type="branch" />
            <wire x2="3520" y1="1488" y2="1488" x1="3440" />
        </branch>
        <branch name="Data_in(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3440" y="1536" type="branch" />
            <wire x2="3520" y1="1536" y2="1536" x1="3440" />
        </branch>
        <branch name="PC(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3440" y="1584" type="branch" />
            <wire x2="3520" y1="1584" y2="1584" x1="3440" />
        </branch>
        <branch name="Div(20)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3360" y="2224" type="branch" />
            <wire x2="3440" y1="2224" y2="2224" x1="3360" />
        </branch>
        <branch name="led_clk">
            <wire x2="4128" y1="2176" y2="2176" x1="3872" />
            <wire x2="4304" y1="2128" y2="2128" x1="4128" />
            <wire x2="4128" y1="2128" y2="2176" x1="4128" />
        </branch>
        <branch name="led_sout">
            <wire x2="4208" y1="2208" y2="2208" x1="3872" />
        </branch>
        <branch name="LED_PEN">
            <wire x2="3888" y1="2240" y2="2240" x1="3872" />
            <wire x2="3968" y1="2240" y2="2240" x1="3888" />
            <wire x2="3968" y1="2240" y2="2288" x1="3968" />
            <wire x2="4064" y1="2288" y2="2288" x1="3968" />
        </branch>
        <iomarker fontsize="28" x="4304" y="2128" name="led_clk" orien="R0" />
        <iomarker fontsize="28" x="4208" y="2208" name="led_sout" orien="R0" />
        <iomarker fontsize="28" x="4048" y="2368" name="led_clrn" orien="R0" />
        <branch name="led_clrn">
            <wire x2="3888" y1="2272" y2="2272" x1="3872" />
            <wire x2="3888" y1="2272" y2="2368" x1="3888" />
            <wire x2="4048" y1="2368" y2="2368" x1="3888" />
        </branch>
        <iomarker fontsize="28" x="4064" y="2288" name="LED_PEN" orien="R0" />
        <branch name="SW_OK(1),Div(19:18)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1248" y="3136" type="branch" />
            <wire x2="1536" y1="3136" y2="3136" x1="1248" />
        </branch>
        <branch name="SW_OK(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1104" y="3168" type="branch" />
            <wire x2="1536" y1="3168" y2="3168" x1="1104" />
        </branch>
        <branch name="Div(25)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="3200" type="branch" />
            <wire x2="1536" y1="3200" y2="3200" x1="1056" />
        </branch>
        <branch name="Disp_num(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="3248" type="branch" />
            <wire x2="1536" y1="3248" y2="3248" x1="1088" />
        </branch>
        <branch name="point_out(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="3280" type="branch" />
            <wire x2="1536" y1="3280" y2="3280" x1="1200" />
        </branch>
        <branch name="LE_out(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="3312" type="branch" />
            <wire x2="1536" y1="3312" y2="3312" x1="1232" />
        </branch>
        <branch name="SEGMENT(7:0)">
            <wire x2="1904" y1="3152" y2="3152" x1="1888" />
            <wire x2="2144" y1="3152" y2="3152" x1="1904" />
        </branch>
        <branch name="AN(3:0)">
            <wire x2="1904" y1="3280" y2="3280" x1="1888" />
            <wire x2="2176" y1="3280" y2="3280" x1="1904" />
        </branch>
        <iomarker fontsize="28" x="2176" y="3280" name="AN(3:0)" orien="R0" />
        <iomarker fontsize="28" x="2144" y="3152" name="SEGMENT(7:0)" orien="R0" />
        <branch name="IO_clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2592" y="3168" type="branch" />
            <wire x2="2720" y1="3168" y2="3168" x1="2592" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2608" y="3232" type="branch" />
            <wire x2="2720" y1="3232" y2="3232" x1="2608" />
        </branch>
        <branch name="GPIOF0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2624" y="3296" type="branch" />
            <wire x2="2720" y1="3296" y2="3296" x1="2624" />
        </branch>
        <branch name="CPU2IO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="3360" type="branch" />
            <wire x2="2720" y1="3360" y2="3360" x1="2640" />
        </branch>
        <branch name="LED(7:0)">
            <wire x2="3184" y1="3264" y2="3264" x1="3168" />
            <wire x2="3376" y1="3264" y2="3264" x1="3184" />
        </branch>
        <iomarker fontsize="28" x="3376" y="3264" name="LED(7:0)" orien="R0" />
        <instance x="2032" y="3584" name="XLXI_16" orien="R0" />
        <branch name="Buzzer">
            <wire x2="2272" y1="3552" y2="3552" x1="2256" />
            <wire x2="2448" y1="3552" y2="3552" x1="2272" />
        </branch>
        <branch name="V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="3552" type="branch" />
            <wire x2="2032" y1="3552" y2="3552" x1="1824" />
        </branch>
        <iomarker fontsize="28" x="2448" y="3552" name="Buzzer" orien="R0" />
        <instance x="4272" y="832" name="XLXI_17" orien="R0" />
        <branch name="V5">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4400" y="896" type="branch" />
            <wire x2="4336" y1="832" y2="896" x1="4336" />
            <wire x2="4400" y1="896" y2="896" x1="4336" />
        </branch>
        <instance x="4272" y="1168" name="XLXI_18" orien="R0" />
        <branch name="NO">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4336" y="992" type="branch" />
            <wire x2="4384" y1="992" y2="992" x1="4336" />
            <wire x2="4336" y1="992" y2="1040" x1="4336" />
        </branch>
        <iomarker fontsize="28" x="560" y="432" name="SW(15:0)" orien="R180" />
        <instance x="224" y="816" name="XLXI_19" orien="R0">
        </instance>
        <branch name="clk200P">
            <wire x2="224" y1="656" y2="656" x1="192" />
        </branch>
        <iomarker fontsize="28" x="192" y="656" name="clk200P" orien="R180" />
        <branch name="clk200N">
            <wire x2="224" y1="720" y2="720" x1="192" />
        </branch>
        <iomarker fontsize="28" x="192" y="720" name="clk200N" orien="R180" />
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="160" y="784" type="branch" />
            <wire x2="224" y1="784" y2="784" x1="160" />
        </branch>
    </sheet>
</drawing>