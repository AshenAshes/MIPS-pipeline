<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="rst" />
        <signal name="Start" />
        <signal name="SW0" />
        <signal name="flash" />
        <signal name="Hexs(31:0)" />
        <signal name="point(7:0)" />
        <signal name="LES(7:0)" />
        <signal name="Hexs(31:0),Hexs(31:0)" />
        <signal name="seg_clk" />
        <signal name="seg_sout" />
        <signal name="SEG_PEN" />
        <signal name="seg_clrn" />
        <signal name="SEGMENT(63:0)" />
        <signal name="XLXN_16(63:0)" />
        <signal name="XLXN_17(63:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="Start" />
        <port polarity="Input" name="SW0" />
        <port polarity="Input" name="flash" />
        <port polarity="Input" name="Hexs(31:0)" />
        <port polarity="Input" name="point(7:0)" />
        <port polarity="Input" name="LES(7:0)" />
        <port polarity="Output" name="seg_clk" />
        <port polarity="Output" name="seg_sout" />
        <port polarity="Output" name="SEG_PEN" />
        <port polarity="Output" name="seg_clrn" />
        <blockdef name="HexTo8SEG">
            <timestamp>2019-3-10T13:21:4</timestamp>
            <rect width="304" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-236" height="24" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
        </blockdef>
        <blockdef name="SSeg_map">
            <timestamp>2019-3-10T14:6:20</timestamp>
            <rect width="336" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <blockdef name="MUX2T1_64">
            <timestamp>2019-3-10T10:5:43</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="P2S">
            <timestamp>2017-3-2T15:49:0</timestamp>
            <rect width="208" x="16" y="-212" height="212" />
            <line x2="224" y1="-32" y2="-32" x1="240" />
            <line x2="224" y1="-128" y2="-128" x1="240" />
            <line x2="0" y1="-128" y2="-128" x1="16" />
            <line x2="0" y1="-80" y2="-80" x1="16" />
            <line x2="224" y1="-80" y2="-80" x1="240" />
            <line x2="0" y1="-176" y2="-176" x1="16" />
            <line x2="224" y1="-176" y2="-176" x1="240" />
            <line x2="0" y1="-32" y2="-32" style="linewidth:W" x1="16" />
        </blockdef>
        <block symbolname="HexTo8SEG" name="SM1">
            <blockpin signalname="flash" name="flash" />
            <blockpin signalname="Hexs(31:0)" name="Hexs(31:0)" />
            <blockpin signalname="point(7:0)" name="points(7:0)" />
            <blockpin signalname="LES(7:0)" name="LES(7:0)" />
            <blockpin signalname="XLXN_16(63:0)" name="SEG_TXT(63:0)" />
        </block>
        <block symbolname="SSeg_map" name="SM3">
            <blockpin signalname="Hexs(31:0),Hexs(31:0)" name="Disp_num(63:0)" />
            <blockpin signalname="XLXN_17(63:0)" name="Seg_map(63:0)" />
        </block>
        <block symbolname="MUX2T1_64" name="XLXI_5">
            <blockpin signalname="SW0" name="sel" />
            <blockpin signalname="XLXN_17(63:0)" name="I0(63:0)" />
            <blockpin signalname="XLXN_16(63:0)" name="I1(63:0)" />
            <blockpin signalname="SEGMENT(63:0)" name="o(63:0)" />
        </block>
        <block symbolname="P2S" name="M2">
            <blockpin signalname="seg_clrn" name="sclrn" />
            <blockpin signalname="seg_sout" name="sout" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="SEG_PEN" name="EN" />
            <blockpin signalname="Start" name="Start" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="seg_clk" name="sclk" />
            <blockpin signalname="SEGMENT(63:0)" name="PData(63:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1776" y="1424" name="XLXI_5" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="2176" y1="576" y2="576" x1="1056" />
        </branch>
        <branch name="rst">
            <wire x2="2176" y1="624" y2="624" x1="1024" />
        </branch>
        <branch name="Start">
            <wire x2="2176" y1="672" y2="672" x1="1152" />
        </branch>
        <branch name="SW0">
            <wire x2="1760" y1="736" y2="736" x1="1168" />
            <wire x2="1760" y1="736" y2="1264" x1="1760" />
            <wire x2="1776" y1="1264" y2="1264" x1="1760" />
        </branch>
        <iomarker fontsize="28" x="1056" y="576" name="clk" orien="R180" />
        <iomarker fontsize="28" x="1024" y="624" name="rst" orien="R180" />
        <iomarker fontsize="28" x="1152" y="672" name="Start" orien="R180" />
        <iomarker fontsize="28" x="1168" y="736" name="SW0" orien="R180" />
        <instance x="1040" y="1216" name="SM1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="flash">
            <wire x2="1040" y1="992" y2="992" x1="768" />
        </branch>
        <branch name="Hexs(31:0)">
            <wire x2="1040" y1="1056" y2="1056" x1="832" />
        </branch>
        <branch name="point(7:0)">
            <wire x2="1040" y1="1120" y2="1120" x1="800" />
        </branch>
        <branch name="LES(7:0)">
            <wire x2="1040" y1="1184" y2="1184" x1="816" />
        </branch>
        <iomarker fontsize="28" x="768" y="992" name="flash" orien="R180" />
        <iomarker fontsize="28" x="832" y="1056" name="Hexs(31:0)" orien="R180" />
        <iomarker fontsize="28" x="800" y="1120" name="point(7:0)" orien="R180" />
        <iomarker fontsize="28" x="816" y="1184" name="LES(7:0)" orien="R180" />
        <instance x="1040" y="1648" name="SM3" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="Hexs(31:0),Hexs(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="880" y="1616" type="branch" />
            <wire x2="1040" y1="1616" y2="1616" x1="880" />
        </branch>
        <branch name="seg_clk">
            <wire x2="2800" y1="576" y2="576" x1="2416" />
        </branch>
        <branch name="seg_sout">
            <wire x2="2784" y1="624" y2="624" x1="2416" />
        </branch>
        <branch name="SEG_PEN">
            <wire x2="2784" y1="672" y2="672" x1="2416" />
        </branch>
        <branch name="seg_clrn">
            <wire x2="2800" y1="720" y2="720" x1="2416" />
        </branch>
        <instance x="2176" y="752" name="M2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="12" type="instance" />
        </instance>
        <iomarker fontsize="28" x="2800" y="576" name="seg_clk" orien="R0" />
        <iomarker fontsize="28" x="2784" y="624" name="seg_sout" orien="R0" />
        <iomarker fontsize="28" x="2784" y="672" name="SEG_PEN" orien="R0" />
        <iomarker fontsize="28" x="2800" y="720" name="seg_clrn" orien="R0" />
        <branch name="SEGMENT(63:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2178" y="1056" type="branch" />
            <wire x2="2176" y1="720" y2="720" x1="2112" />
            <wire x2="2112" y1="720" y2="1056" x1="2112" />
            <wire x2="2160" y1="1056" y2="1056" x1="2112" />
            <wire x2="2176" y1="1056" y2="1056" x1="2160" />
            <wire x2="2224" y1="1056" y2="1056" x1="2176" />
            <wire x2="2224" y1="1056" y2="1264" x1="2224" />
            <wire x2="2224" y1="1264" y2="1264" x1="2160" />
        </branch>
        <branch name="XLXN_16(63:0)">
            <wire x2="1616" y1="992" y2="992" x1="1472" />
            <wire x2="1616" y1="992" y2="1392" x1="1616" />
            <wire x2="1776" y1="1392" y2="1392" x1="1616" />
        </branch>
        <branch name="XLXN_17(63:0)">
            <wire x2="1600" y1="1616" y2="1616" x1="1504" />
            <wire x2="1600" y1="1328" y2="1616" x1="1600" />
            <wire x2="1776" y1="1328" y2="1328" x1="1600" />
        </branch>
    </sheet>
</drawing>