<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="D1" />
        <signal name="D2" />
        <signal name="D3" />
        <signal name="D0" />
        <signal name="ND0" />
        <signal name="ND2" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="XLXN_34" />
        <signal name="XLXN_35" />
        <signal name="ND3" />
        <signal name="ND1" />
        <signal name="XLXN_45" />
        <signal name="XLXN_46" />
        <signal name="XLXN_47" />
        <signal name="XLXN_48" />
        <signal name="XLXN_53" />
        <signal name="XLXN_54" />
        <signal name="XLXN_55" />
        <signal name="XLXN_56" />
        <signal name="LE" />
        <signal name="XLXN_58" />
        <signal name="XLXN_59" />
        <signal name="XLXN_60" />
        <signal name="XLXN_61" />
        <signal name="XLXN_63" />
        <signal name="XLXN_65" />
        <signal name="XLXN_66" />
        <signal name="a" />
        <signal name="b" />
        <signal name="c" />
        <signal name="d" />
        <signal name="e" />
        <signal name="f" />
        <signal name="g" />
        <signal name="point" />
        <signal name="p" />
        <port polarity="Input" name="D1" />
        <port polarity="Input" name="D2" />
        <port polarity="Input" name="D3" />
        <port polarity="Input" name="D0" />
        <port polarity="Input" name="LE" />
        <port polarity="Output" name="a" />
        <port polarity="Output" name="b" />
        <port polarity="Output" name="c" />
        <port polarity="Output" name="d" />
        <port polarity="Output" name="e" />
        <port polarity="Output" name="f" />
        <port polarity="Output" name="g" />
        <port polarity="Input" name="point" />
        <port polarity="Output" name="p" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="and4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-112" y2="-112" x1="144" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
        </blockdef>
        <blockdef name="or4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <block symbolname="inv" name="D23">
            <attr value="INV" name="Device" />
            <blockpin signalname="D0" name="I" />
            <blockpin signalname="ND0" name="O" />
        </block>
        <block symbolname="inv" name="INV2">
            <blockpin signalname="D1" name="I" />
            <blockpin signalname="ND1" name="O" />
        </block>
        <block symbolname="inv" name="FD2">
            <blockpin signalname="D2" name="I" />
            <blockpin signalname="ND2" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="D3" name="I" />
            <blockpin signalname="ND3" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_5">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="ND1" name="I1" />
            <blockpin signalname="ND2" name="I2" />
            <blockpin signalname="ND3" name="I3" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_6">
            <blockpin signalname="ND0" name="I0" />
            <blockpin signalname="ND1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="ND3" name="I3" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_7">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="ND2" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_18" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_8">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="ND1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_9">
            <blockpin signalname="XLXN_16" name="I0" />
            <blockpin signalname="XLXN_17" name="I1" />
            <blockpin signalname="XLXN_18" name="I2" />
            <blockpin signalname="XLXN_19" name="I3" />
            <blockpin signalname="XLXN_58" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_10">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="ND1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="ND3" name="I3" />
            <blockpin signalname="XLXN_21" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_11">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_12">
            <blockpin signalname="ND0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_24" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_14">
            <blockpin signalname="ND0" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="XLXN_25" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_15">
            <blockpin signalname="XLXN_21" name="I0" />
            <blockpin signalname="XLXN_22" name="I1" />
            <blockpin signalname="XLXN_24" name="I2" />
            <blockpin signalname="XLXN_25" name="I3" />
            <blockpin signalname="XLXN_59" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_16">
            <blockpin signalname="ND0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="ND2" name="I2" />
            <blockpin signalname="ND3" name="I3" />
            <blockpin signalname="XLXN_26" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_17">
            <blockpin signalname="ND0" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="XLXN_27" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_18">
            <blockpin signalname="D1" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="XLXN_28" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_19">
            <blockpin signalname="XLXN_26" name="I0" />
            <blockpin signalname="XLXN_27" name="I1" />
            <blockpin signalname="XLXN_28" name="I2" />
            <blockpin signalname="XLXN_60" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_20">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_29" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_21">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="ND1" name="I1" />
            <blockpin signalname="ND2" name="I2" />
            <blockpin signalname="ND3" name="I3" />
            <blockpin signalname="XLXN_30" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_22">
            <blockpin signalname="ND0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="ND2" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_31" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_23">
            <blockpin signalname="ND0" name="I0" />
            <blockpin signalname="ND1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="ND3" name="I3" />
            <blockpin signalname="XLXN_32" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_24">
            <blockpin signalname="XLXN_29" name="I0" />
            <blockpin signalname="XLXN_30" name="I1" />
            <blockpin signalname="XLXN_31" name="I2" />
            <blockpin signalname="XLXN_32" name="I3" />
            <blockpin signalname="XLXN_61" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_25">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="ND3" name="I1" />
            <blockpin signalname="XLXN_33" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_26">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="ND1" name="I1" />
            <blockpin signalname="ND2" name="I2" />
            <blockpin signalname="XLXN_34" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_28">
            <blockpin signalname="XLXN_33" name="I0" />
            <blockpin signalname="XLXN_34" name="I1" />
            <blockpin signalname="XLXN_35" name="I2" />
            <blockpin signalname="XLXN_63" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_31">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="ND3" name="I2" />
            <blockpin signalname="XLXN_47" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_32">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="ND1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_48" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_33">
            <blockpin signalname="XLXN_45" name="I0" />
            <blockpin signalname="XLXN_46" name="I1" />
            <blockpin signalname="XLXN_47" name="I2" />
            <blockpin signalname="XLXN_48" name="I3" />
            <blockpin signalname="XLXN_65" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_34">
            <blockpin signalname="ND1" name="I0" />
            <blockpin signalname="ND2" name="I1" />
            <blockpin signalname="ND3" name="I2" />
            <blockpin signalname="XLXN_54" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_35">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="ND3" name="I3" />
            <blockpin signalname="XLXN_55" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_36">
            <blockpin signalname="XLXN_53" name="I0" />
            <blockpin signalname="ND1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_56" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_37">
            <blockpin signalname="D0" name="I" />
            <blockpin signalname="XLXN_53" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_38">
            <blockpin signalname="XLXN_54" name="I0" />
            <blockpin signalname="XLXN_55" name="I1" />
            <blockpin signalname="XLXN_56" name="I2" />
            <blockpin signalname="XLXN_66" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_39">
            <blockpin signalname="XLXN_58" name="I0" />
            <blockpin signalname="LE" name="I1" />
            <blockpin signalname="a" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_40">
            <blockpin signalname="XLXN_59" name="I0" />
            <blockpin signalname="LE" name="I1" />
            <blockpin signalname="b" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_41">
            <blockpin signalname="XLXN_60" name="I0" />
            <blockpin signalname="LE" name="I1" />
            <blockpin signalname="c" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_42">
            <blockpin signalname="XLXN_61" name="I0" />
            <blockpin signalname="LE" name="I1" />
            <blockpin signalname="d" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_43">
            <blockpin signalname="XLXN_63" name="I0" />
            <blockpin signalname="LE" name="I1" />
            <blockpin signalname="e" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_44">
            <blockpin signalname="XLXN_65" name="I0" />
            <blockpin signalname="LE" name="I1" />
            <blockpin signalname="f" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_45">
            <blockpin signalname="XLXN_66" name="I0" />
            <blockpin signalname="LE" name="I1" />
            <blockpin signalname="g" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_46">
            <blockpin signalname="point" name="I" />
            <blockpin signalname="p" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_47">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="ND2" name="I1" />
            <blockpin signalname="ND3" name="I2" />
            <blockpin signalname="XLXN_45" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_48">
            <blockpin signalname="D1" name="I0" />
            <blockpin signalname="ND2" name="I1" />
            <blockpin signalname="ND3" name="I2" />
            <blockpin signalname="XLXN_46" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_49">
            <blockpin signalname="ND1" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="ND3" name="I2" />
            <blockpin signalname="XLXN_35" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="96" y="176" name="D23" orien="R90">
            <attrtext style="alignment:VLEFT;fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="Device" x="0" y="-64" type="instance" />
        </instance>
        <instance x="352" y="176" name="INV2" orien="R90" />
        <instance x="624" y="176" name="FD2" orien="R90" />
        <instance x="848" y="176" name="XLXI_4" orien="R90" />
        <iomarker fontsize="28" x="128" y="144" name="D0" orien="R270" />
        <branch name="D1">
            <wire x2="160" y1="560" y2="560" x1="128" />
            <wire x2="208" y1="560" y2="560" x1="160" />
            <wire x2="496" y1="560" y2="560" x1="208" />
            <wire x2="528" y1="560" y2="560" x1="496" />
            <wire x2="560" y1="560" y2="560" x1="528" />
            <wire x2="560" y1="560" y2="928" x1="560" />
            <wire x2="1200" y1="560" y2="560" x1="560" />
            <wire x2="1200" y1="560" y2="928" x1="1200" />
            <wire x2="1344" y1="560" y2="560" x1="1200" />
            <wire x2="1344" y1="560" y2="928" x1="1344" />
            <wire x2="1664" y1="560" y2="560" x1="1344" />
            <wire x2="1664" y1="560" y2="928" x1="1664" />
            <wire x2="1968" y1="560" y2="560" x1="1664" />
            <wire x2="1968" y1="560" y2="928" x1="1968" />
            <wire x2="2176" y1="560" y2="560" x1="1968" />
            <wire x2="2176" y1="560" y2="928" x1="2176" />
            <wire x2="2528" y1="560" y2="560" x1="2176" />
            <wire x2="2528" y1="560" y2="928" x1="2528" />
            <wire x2="3200" y1="560" y2="560" x1="2528" />
            <wire x2="3296" y1="560" y2="560" x1="3200" />
            <wire x2="3200" y1="560" y2="864" x1="3200" />
            <wire x2="528" y1="560" y2="896" x1="528" />
            <wire x2="3296" y1="896" y2="896" x1="528" />
            <wire x2="3296" y1="896" y2="1808" x1="3296" />
            <wire x2="160" y1="496" y2="560" x1="160" />
            <wire x2="3312" y1="496" y2="496" x1="160" />
            <wire x2="3312" y1="496" y2="1648" x1="3312" />
            <wire x2="208" y1="528" y2="560" x1="208" />
            <wire x2="3488" y1="528" y2="528" x1="208" />
            <wire x2="3488" y1="528" y2="1584" x1="3488" />
            <wire x2="3312" y1="1648" y2="1648" x1="272" />
            <wire x2="272" y1="1648" y2="1872" x1="272" />
            <wire x2="384" y1="144" y2="160" x1="384" />
            <wire x2="384" y1="160" y2="176" x1="384" />
            <wire x2="496" y1="160" y2="160" x1="384" />
            <wire x2="496" y1="160" y2="560" x1="496" />
            <wire x2="512" y1="1808" y2="1872" x1="512" />
            <wire x2="3296" y1="1808" y2="1808" x1="512" />
            <wire x2="3488" y1="1584" y2="1584" x1="1488" />
            <wire x2="1488" y1="1584" y2="1952" x1="1488" />
        </branch>
        <iomarker fontsize="28" x="384" y="144" name="D1" orien="R270" />
        <branch name="D2">
            <wire x2="192" y1="688" y2="688" x1="128" />
            <wire x2="224" y1="688" y2="688" x1="192" />
            <wire x2="400" y1="688" y2="688" x1="224" />
            <wire x2="736" y1="688" y2="688" x1="400" />
            <wire x2="768" y1="688" y2="688" x1="736" />
            <wire x2="848" y1="688" y2="688" x1="768" />
            <wire x2="848" y1="688" y2="928" x1="848" />
            <wire x2="1056" y1="688" y2="688" x1="848" />
            <wire x2="1056" y1="688" y2="928" x1="1056" />
            <wire x2="1408" y1="688" y2="688" x1="1056" />
            <wire x2="1408" y1="688" y2="928" x1="1408" />
            <wire x2="1504" y1="688" y2="688" x1="1408" />
            <wire x2="1504" y1="688" y2="928" x1="1504" />
            <wire x2="1888" y1="688" y2="688" x1="1504" />
            <wire x2="1888" y1="688" y2="928" x1="1888" />
            <wire x2="2032" y1="688" y2="688" x1="1888" />
            <wire x2="2032" y1="688" y2="928" x1="2032" />
            <wire x2="2240" y1="688" y2="688" x1="2032" />
            <wire x2="2240" y1="688" y2="928" x1="2240" />
            <wire x2="2800" y1="688" y2="688" x1="2240" />
            <wire x2="2800" y1="688" y2="928" x1="2800" />
            <wire x2="3168" y1="688" y2="688" x1="2800" />
            <wire x2="3296" y1="688" y2="688" x1="3168" />
            <wire x2="3168" y1="688" y2="880" x1="3168" />
            <wire x2="3200" y1="880" y2="880" x1="3168" />
            <wire x2="3200" y1="880" y2="928" x1="3200" />
            <wire x2="768" y1="688" y2="912" x1="768" />
            <wire x2="3392" y1="912" y2="912" x1="768" />
            <wire x2="3392" y1="912" y2="1824" x1="3392" />
            <wire x2="400" y1="688" y2="928" x1="400" />
            <wire x2="192" y1="592" y2="688" x1="192" />
            <wire x2="3456" y1="592" y2="592" x1="192" />
            <wire x2="3456" y1="592" y2="1728" x1="3456" />
            <wire x2="224" y1="640" y2="688" x1="224" />
            <wire x2="3440" y1="640" y2="640" x1="224" />
            <wire x2="3440" y1="640" y2="1712" x1="3440" />
            <wire x2="656" y1="144" y2="160" x1="656" />
            <wire x2="656" y1="160" y2="176" x1="656" />
            <wire x2="736" y1="160" y2="160" x1="656" />
            <wire x2="736" y1="160" y2="688" x1="736" />
            <wire x2="736" y1="1824" y2="1872" x1="736" />
            <wire x2="3392" y1="1824" y2="1824" x1="736" />
            <wire x2="3456" y1="1728" y2="1728" x1="1552" />
            <wire x2="1552" y1="1728" y2="1952" x1="1552" />
            <wire x2="3440" y1="1712" y2="1712" x1="1824" />
            <wire x2="1824" y1="1712" y2="1952" x1="1824" />
        </branch>
        <iomarker fontsize="28" x="656" y="144" name="D2" orien="R270" />
        <iomarker fontsize="28" x="880" y="144" name="D3" orien="R270" />
        <branch name="D0">
            <wire x2="80" y1="848" y2="848" x1="16" />
            <wire x2="16" y1="848" y2="1696" x1="16" />
            <wire x2="16" y1="1696" y2="1872" x1="16" />
            <wire x2="64" y1="1872" y2="1872" x1="16" />
            <wire x2="96" y1="1696" y2="1696" x1="16" />
            <wire x2="48" y1="448" y2="928" x1="48" />
            <wire x2="80" y1="448" y2="448" x1="48" />
            <wire x2="240" y1="448" y2="448" x1="80" />
            <wire x2="272" y1="448" y2="448" x1="240" />
            <wire x2="432" y1="448" y2="448" x1="272" />
            <wire x2="448" y1="448" y2="448" x1="432" />
            <wire x2="448" y1="448" y2="672" x1="448" />
            <wire x2="496" y1="672" y2="672" x1="448" />
            <wire x2="496" y1="672" y2="928" x1="496" />
            <wire x2="608" y1="448" y2="448" x1="448" />
            <wire x2="704" y1="448" y2="448" x1="608" />
            <wire x2="704" y1="448" y2="928" x1="704" />
            <wire x2="720" y1="928" y2="928" x1="704" />
            <wire x2="928" y1="448" y2="448" x1="704" />
            <wire x2="928" y1="448" y2="928" x1="928" />
            <wire x2="1136" y1="448" y2="448" x1="928" />
            <wire x2="1136" y1="448" y2="928" x1="1136" />
            <wire x2="2112" y1="448" y2="448" x1="1136" />
            <wire x2="2112" y1="448" y2="928" x1="2112" />
            <wire x2="2256" y1="448" y2="448" x1="2112" />
            <wire x2="2256" y1="448" y2="928" x1="2256" />
            <wire x2="2896" y1="448" y2="448" x1="2256" />
            <wire x2="2896" y1="448" y2="928" x1="2896" />
            <wire x2="2992" y1="448" y2="448" x1="2896" />
            <wire x2="3296" y1="448" y2="448" x1="2992" />
            <wire x2="2992" y1="448" y2="928" x1="2992" />
            <wire x2="608" y1="448" y2="480" x1="608" />
            <wire x2="1424" y1="480" y2="480" x1="608" />
            <wire x2="1424" y1="480" y2="1232" x1="1424" />
            <wire x2="432" y1="448" y2="464" x1="432" />
            <wire x2="80" y1="448" y2="848" x1="80" />
            <wire x2="128" y1="144" y2="160" x1="128" />
            <wire x2="128" y1="160" y2="176" x1="128" />
            <wire x2="240" y1="160" y2="160" x1="128" />
            <wire x2="240" y1="160" y2="448" x1="240" />
            <wire x2="432" y1="464" y2="464" x1="256" />
            <wire x2="256" y1="464" y2="1248" x1="256" />
            <wire x2="448" y1="1248" y2="1248" x1="256" />
            <wire x2="448" y1="1248" y2="1872" x1="448" />
            <wire x2="272" y1="416" y2="448" x1="272" />
            <wire x2="3504" y1="416" y2="416" x1="272" />
            <wire x2="3504" y1="416" y2="1568" x1="3504" />
            <wire x2="1424" y1="1232" y2="1232" x1="608" />
            <wire x2="608" y1="1232" y2="1872" x1="608" />
            <wire x2="3504" y1="1568" y2="1568" x1="1424" />
            <wire x2="1424" y1="1568" y2="1952" x1="1424" />
        </branch>
        <branch name="ND2">
            <wire x2="176" y1="736" y2="736" x1="128" />
            <wire x2="176" y1="736" y2="928" x1="176" />
            <wire x2="224" y1="736" y2="736" x1="176" />
            <wire x2="624" y1="736" y2="736" x1="224" />
            <wire x2="656" y1="736" y2="736" x1="624" />
            <wire x2="1728" y1="736" y2="736" x1="656" />
            <wire x2="1728" y1="736" y2="928" x1="1728" />
            <wire x2="2384" y1="736" y2="736" x1="1728" />
            <wire x2="2384" y1="736" y2="928" x1="2384" />
            <wire x2="2592" y1="736" y2="736" x1="2384" />
            <wire x2="2592" y1="736" y2="928" x1="2592" />
            <wire x2="3120" y1="736" y2="736" x1="2592" />
            <wire x2="3296" y1="736" y2="736" x1="3120" />
            <wire x2="3120" y1="736" y2="928" x1="3120" />
            <wire x2="624" y1="736" y2="928" x1="624" />
            <wire x2="128" y1="1744" y2="1872" x1="128" />
            <wire x2="336" y1="1744" y2="1744" x1="128" />
            <wire x2="1248" y1="1744" y2="1744" x1="336" />
            <wire x2="1248" y1="1744" y2="1952" x1="1248" />
            <wire x2="336" y1="1744" y2="1872" x1="336" />
            <wire x2="224" y1="720" y2="736" x1="224" />
            <wire x2="3360" y1="720" y2="720" x1="224" />
            <wire x2="3360" y1="720" y2="1216" x1="3360" />
            <wire x2="656" y1="400" y2="736" x1="656" />
            <wire x2="3360" y1="1216" y2="1216" x1="1248" />
            <wire x2="1248" y1="1216" y2="1744" x1="1248" />
        </branch>
        <branch name="D3">
            <wire x2="688" y1="800" y2="800" x1="128" />
            <wire x2="688" y1="800" y2="928" x1="688" />
            <wire x2="816" y1="800" y2="800" x1="688" />
            <wire x2="912" y1="800" y2="800" x1="816" />
            <wire x2="992" y1="800" y2="800" x1="912" />
            <wire x2="1264" y1="800" y2="800" x1="992" />
            <wire x2="1264" y1="800" y2="928" x1="1264" />
            <wire x2="1568" y1="800" y2="800" x1="1264" />
            <wire x2="1568" y1="800" y2="928" x1="1568" />
            <wire x2="1952" y1="800" y2="800" x1="1568" />
            <wire x2="1952" y1="800" y2="928" x1="1952" />
            <wire x2="2096" y1="800" y2="800" x1="1952" />
            <wire x2="2096" y1="800" y2="928" x1="2096" />
            <wire x2="2656" y1="800" y2="800" x1="2096" />
            <wire x2="3296" y1="800" y2="800" x1="2656" />
            <wire x2="2656" y1="800" y2="928" x1="2656" />
            <wire x2="912" y1="800" y2="928" x1="912" />
            <wire x2="1888" y1="1872" y2="1872" x1="800" />
            <wire x2="3408" y1="1872" y2="1872" x1="1888" />
            <wire x2="1888" y1="1872" y2="1952" x1="1888" />
            <wire x2="3408" y1="704" y2="704" x1="816" />
            <wire x2="3408" y1="704" y2="1872" x1="3408" />
            <wire x2="816" y1="704" y2="800" x1="816" />
            <wire x2="880" y1="144" y2="160" x1="880" />
            <wire x2="880" y1="160" y2="176" x1="880" />
            <wire x2="992" y1="160" y2="160" x1="880" />
            <wire x2="992" y1="160" y2="800" x1="992" />
        </branch>
        <instance x="-16" y="928" name="XLXI_5" orien="R90" />
        <instance x="208" y="928" name="XLXI_6" orien="R90" />
        <instance x="432" y="928" name="XLXI_7" orien="R90" />
        <instance x="656" y="928" name="XLXI_8" orien="R90" />
        <instance x="160" y="1344" name="XLXI_9" orien="R90" />
        <branch name="XLXN_16">
            <wire x2="144" y1="1184" y2="1344" x1="144" />
            <wire x2="224" y1="1344" y2="1344" x1="144" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="288" y1="1264" y2="1344" x1="288" />
            <wire x2="368" y1="1264" y2="1264" x1="288" />
            <wire x2="368" y1="1184" y2="1264" x1="368" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="352" y1="1280" y2="1344" x1="352" />
            <wire x2="592" y1="1280" y2="1280" x1="352" />
            <wire x2="592" y1="1184" y2="1280" x1="592" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="816" y1="1344" y2="1344" x1="416" />
            <wire x2="816" y1="1184" y2="1344" x1="816" />
        </branch>
        <instance x="864" y="928" name="XLXI_10" orien="R90" />
        <instance x="1072" y="928" name="XLXI_11" orien="R90" />
        <instance x="1216" y="928" name="XLXI_12" orien="R90" />
        <instance x="1376" y="928" name="XLXI_14" orien="R90" />
        <instance x="960" y="1328" name="XLXI_15" orien="R90" />
        <branch name="XLXN_21">
            <wire x2="1024" y1="1184" y2="1328" x1="1024" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="1088" y1="1248" y2="1328" x1="1088" />
            <wire x2="1200" y1="1248" y2="1248" x1="1088" />
            <wire x2="1200" y1="1184" y2="1248" x1="1200" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="1152" y1="1264" y2="1328" x1="1152" />
            <wire x2="1344" y1="1264" y2="1264" x1="1152" />
            <wire x2="1344" y1="1184" y2="1264" x1="1344" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="1504" y1="1328" y2="1328" x1="1216" />
            <wire x2="1504" y1="1184" y2="1328" x1="1504" />
        </branch>
        <instance x="1536" y="928" name="XLXI_16" orien="R90" />
        <instance x="1760" y="928" name="XLXI_17" orien="R90" />
        <instance x="1904" y="928" name="XLXI_18" orien="R90" />
        <instance x="1632" y="1280" name="XLXI_19" orien="R90" />
        <branch name="XLXN_26">
            <wire x2="1696" y1="1184" y2="1280" x1="1696" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="1760" y1="1232" y2="1280" x1="1760" />
            <wire x2="1888" y1="1232" y2="1232" x1="1760" />
            <wire x2="1888" y1="1184" y2="1232" x1="1888" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="2032" y1="1280" y2="1280" x1="1824" />
            <wire x2="2032" y1="1184" y2="1280" x1="2032" />
        </branch>
        <instance x="2048" y="928" name="XLXI_20" orien="R90" />
        <instance x="2192" y="928" name="XLXI_21" orien="R90" />
        <instance x="2400" y="928" name="XLXI_22" orien="R90" />
        <instance x="2608" y="928" name="XLXI_23" orien="R90" />
        <instance x="2144" y="1296" name="XLXI_24" orien="R90" />
        <branch name="XLXN_29">
            <wire x2="2176" y1="1184" y2="1296" x1="2176" />
            <wire x2="2208" y1="1296" y2="1296" x1="2176" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="2272" y1="1232" y2="1296" x1="2272" />
            <wire x2="2352" y1="1232" y2="1232" x1="2272" />
            <wire x2="2352" y1="1184" y2="1232" x1="2352" />
        </branch>
        <branch name="XLXN_31">
            <wire x2="2336" y1="1248" y2="1296" x1="2336" />
            <wire x2="2560" y1="1248" y2="1248" x1="2336" />
            <wire x2="2560" y1="1184" y2="1248" x1="2560" />
        </branch>
        <branch name="XLXN_32">
            <wire x2="2768" y1="1296" y2="1296" x1="2400" />
            <wire x2="2768" y1="1184" y2="1296" x1="2768" />
        </branch>
        <instance x="2832" y="928" name="XLXI_25" orien="R90" />
        <instance x="2928" y="928" name="XLXI_26" orien="R90" />
        <instance x="2896" y="1296" name="XLXI_28" orien="R90" />
        <branch name="XLXN_33">
            <wire x2="2928" y1="1184" y2="1296" x1="2928" />
            <wire x2="2960" y1="1296" y2="1296" x1="2928" />
        </branch>
        <branch name="XLXN_34">
            <wire x2="3024" y1="1232" y2="1296" x1="3024" />
            <wire x2="3056" y1="1232" y2="1232" x1="3024" />
            <wire x2="3056" y1="1184" y2="1232" x1="3056" />
        </branch>
        <branch name="XLXN_35">
            <wire x2="3200" y1="1296" y2="1296" x1="3088" />
            <wire x2="3200" y1="1184" y2="1296" x1="3200" />
        </branch>
        <instance x="384" y="1872" name="XLXI_31" orien="R90" />
        <instance x="544" y="1872" name="XLXI_32" orien="R90" />
        <branch name="ND0">
            <wire x2="128" y1="400" y2="512" x1="128" />
            <wire x2="272" y1="512" y2="512" x1="128" />
            <wire x2="272" y1="512" y2="928" x1="272" />
            <wire x2="1280" y1="512" y2="512" x1="272" />
            <wire x2="1280" y1="512" y2="928" x1="1280" />
            <wire x2="1440" y1="512" y2="512" x1="1280" />
            <wire x2="1440" y1="512" y2="928" x1="1440" />
            <wire x2="1600" y1="512" y2="512" x1="1440" />
            <wire x2="1600" y1="512" y2="928" x1="1600" />
            <wire x2="1824" y1="512" y2="512" x1="1600" />
            <wire x2="1824" y1="512" y2="928" x1="1824" />
            <wire x2="2464" y1="512" y2="512" x1="1824" />
            <wire x2="2464" y1="512" y2="928" x1="2464" />
            <wire x2="2672" y1="512" y2="512" x1="2464" />
            <wire x2="3296" y1="512" y2="512" x1="2672" />
            <wire x2="2672" y1="512" y2="928" x1="2672" />
        </branch>
        <branch name="ND3">
            <wire x2="240" y1="848" y2="848" x1="128" />
            <wire x2="240" y1="848" y2="928" x1="240" />
            <wire x2="288" y1="848" y2="848" x1="240" />
            <wire x2="288" y1="848" y2="864" x1="288" />
            <wire x2="480" y1="864" y2="864" x1="288" />
            <wire x2="480" y1="864" y2="1808" x1="480" />
            <wire x2="320" y1="848" y2="848" x1="288" />
            <wire x2="432" y1="848" y2="848" x1="320" />
            <wire x2="464" y1="848" y2="848" x1="432" />
            <wire x2="464" y1="848" y2="928" x1="464" />
            <wire x2="544" y1="848" y2="848" x1="464" />
            <wire x2="544" y1="848" y2="864" x1="544" />
            <wire x2="1808" y1="864" y2="864" x1="544" />
            <wire x2="1808" y1="864" y2="1200" x1="1808" />
            <wire x2="608" y1="848" y2="848" x1="544" />
            <wire x2="880" y1="848" y2="848" x1="608" />
            <wire x2="1120" y1="848" y2="848" x1="880" />
            <wire x2="1120" y1="848" y2="928" x1="1120" />
            <wire x2="1792" y1="848" y2="848" x1="1120" />
            <wire x2="1792" y1="848" y2="928" x1="1792" />
            <wire x2="2448" y1="848" y2="848" x1="1792" />
            <wire x2="2448" y1="848" y2="928" x1="2448" />
            <wire x2="2864" y1="848" y2="848" x1="2448" />
            <wire x2="2864" y1="848" y2="928" x1="2864" />
            <wire x2="2960" y1="848" y2="848" x1="2864" />
            <wire x2="2960" y1="848" y2="928" x1="2960" />
            <wire x2="3264" y1="848" y2="848" x1="2960" />
            <wire x2="3296" y1="848" y2="848" x1="3264" />
            <wire x2="3264" y1="848" y2="928" x1="3264" />
            <wire x2="432" y1="848" y2="880" x1="432" />
            <wire x2="1584" y1="880" y2="880" x1="432" />
            <wire x2="1584" y1="880" y2="1792" x1="1584" />
            <wire x2="192" y1="1808" y2="1872" x1="192" />
            <wire x2="480" y1="1808" y2="1808" x1="192" />
            <wire x2="320" y1="768" y2="848" x1="320" />
            <wire x2="3376" y1="768" y2="768" x1="320" />
            <wire x2="3376" y1="768" y2="1264" x1="3376" />
            <wire x2="400" y1="1792" y2="1872" x1="400" />
            <wire x2="1584" y1="1792" y2="1792" x1="400" />
            <wire x2="1808" y1="1200" y2="1200" x1="576" />
            <wire x2="576" y1="1200" y2="1872" x1="576" />
            <wire x2="608" y1="752" y2="848" x1="608" />
            <wire x2="3472" y1="752" y2="752" x1="608" />
            <wire x2="3472" y1="752" y2="1600" x1="3472" />
            <wire x2="880" y1="400" y2="848" x1="880" />
            <wire x2="3472" y1="1600" y2="1600" x1="1312" />
            <wire x2="1312" y1="1600" y2="1952" x1="1312" />
            <wire x2="3376" y1="1264" y2="1264" x1="1616" />
            <wire x2="1616" y1="1264" y2="1952" x1="1616" />
        </branch>
        <branch name="ND1">
            <wire x2="208" y1="864" y2="864" x1="32" />
            <wire x2="32" y1="864" y2="1296" x1="32" />
            <wire x2="112" y1="624" y2="928" x1="112" />
            <wire x2="208" y1="624" y2="624" x1="112" />
            <wire x2="208" y1="624" y2="864" x1="208" />
            <wire x2="288" y1="624" y2="624" x1="208" />
            <wire x2="336" y1="624" y2="624" x1="288" />
            <wire x2="384" y1="624" y2="624" x1="336" />
            <wire x2="608" y1="624" y2="624" x1="384" />
            <wire x2="688" y1="624" y2="624" x1="608" />
            <wire x2="784" y1="624" y2="624" x1="688" />
            <wire x2="784" y1="624" y2="928" x1="784" />
            <wire x2="848" y1="624" y2="624" x1="784" />
            <wire x2="960" y1="624" y2="624" x1="848" />
            <wire x2="960" y1="624" y2="816" x1="960" />
            <wire x2="992" y1="816" y2="816" x1="960" />
            <wire x2="992" y1="816" y2="928" x1="992" />
            <wire x2="2320" y1="624" y2="624" x1="960" />
            <wire x2="2320" y1="624" y2="928" x1="2320" />
            <wire x2="2736" y1="624" y2="624" x1="2320" />
            <wire x2="2736" y1="624" y2="928" x1="2736" />
            <wire x2="3056" y1="624" y2="624" x1="2736" />
            <wire x2="3056" y1="624" y2="928" x1="3056" />
            <wire x2="3136" y1="624" y2="624" x1="3056" />
            <wire x2="3296" y1="624" y2="624" x1="3136" />
            <wire x2="3136" y1="624" y2="928" x1="3136" />
            <wire x2="688" y1="624" y2="784" x1="688" />
            <wire x2="3280" y1="784" y2="784" x1="688" />
            <wire x2="3280" y1="784" y2="1856" x1="3280" />
            <wire x2="608" y1="624" y2="672" x1="608" />
            <wire x2="3344" y1="672" y2="672" x1="608" />
            <wire x2="3344" y1="672" y2="1632" x1="3344" />
            <wire x2="336" y1="624" y2="928" x1="336" />
            <wire x2="288" y1="576" y2="624" x1="288" />
            <wire x2="3328" y1="576" y2="576" x1="288" />
            <wire x2="3328" y1="576" y2="1664" x1="3328" />
            <wire x2="3328" y1="1664" y2="1664" x1="336" />
            <wire x2="384" y1="400" y2="624" x1="384" />
            <wire x2="672" y1="1856" y2="1872" x1="672" />
            <wire x2="3280" y1="1856" y2="1856" x1="672" />
            <wire x2="848" y1="608" y2="624" x1="848" />
            <wire x2="3424" y1="608" y2="608" x1="848" />
            <wire x2="3424" y1="608" y2="1616" x1="3424" />
            <wire x2="3344" y1="1632" y2="1632" x1="1184" />
            <wire x2="1184" y1="1632" y2="1952" x1="1184" />
            <wire x2="3424" y1="1616" y2="1616" x1="1760" />
            <wire x2="1760" y1="1616" y2="1952" x1="1760" />
        </branch>
        <instance x="144" y="2224" name="XLXI_33" orien="R90" />
        <branch name="XLXN_45">
            <wire x2="128" y1="2128" y2="2224" x1="128" />
            <wire x2="208" y1="2224" y2="2224" x1="128" />
        </branch>
        <branch name="XLXN_46">
            <wire x2="272" y1="2176" y2="2224" x1="272" />
            <wire x2="336" y1="2176" y2="2176" x1="272" />
            <wire x2="336" y1="2128" y2="2176" x1="336" />
        </branch>
        <branch name="XLXN_47">
            <wire x2="336" y1="2192" y2="2224" x1="336" />
            <wire x2="512" y1="2192" y2="2192" x1="336" />
            <wire x2="512" y1="2128" y2="2192" x1="512" />
        </branch>
        <branch name="XLXN_48">
            <wire x2="704" y1="2224" y2="2224" x1="400" />
            <wire x2="704" y1="2128" y2="2224" x1="704" />
        </branch>
        <instance x="1120" y="1952" name="XLXI_34" orien="R90" />
        <instance x="1360" y="1952" name="XLXI_35" orien="R90" />
        <instance x="1632" y="1952" name="XLXI_36" orien="R90" />
        <instance x="96" y="1728" name="XLXI_37" orien="R0" />
        <branch name="XLXN_53">
            <wire x2="1696" y1="1696" y2="1696" x1="320" />
            <wire x2="1696" y1="1696" y2="1952" x1="1696" />
        </branch>
        <instance x="1264" y="2272" name="XLXI_38" orien="R90" />
        <branch name="XLXN_54">
            <wire x2="1248" y1="2208" y2="2272" x1="1248" />
            <wire x2="1328" y1="2272" y2="2272" x1="1248" />
        </branch>
        <branch name="XLXN_55">
            <wire x2="1392" y1="2240" y2="2272" x1="1392" />
            <wire x2="1520" y1="2240" y2="2240" x1="1392" />
            <wire x2="1520" y1="2208" y2="2240" x1="1520" />
        </branch>
        <branch name="XLXN_56">
            <wire x2="1792" y1="2272" y2="2272" x1="1456" />
            <wire x2="1792" y1="2208" y2="2272" x1="1792" />
        </branch>
        <instance x="2192" y="2064" name="XLXI_39" orien="R0" />
        <instance x="2192" y="2192" name="XLXI_40" orien="R0" />
        <instance x="2192" y="2320" name="XLXI_41" orien="R0" />
        <instance x="2192" y="2448" name="XLXI_42" orien="R0" />
        <instance x="2192" y="2576" name="XLXI_43" orien="R0" />
        <instance x="2192" y="2704" name="XLXI_44" orien="R0" />
        <instance x="2800" y="2064" name="XLXI_45" orien="R0" />
        <branch name="LE">
            <wire x2="2112" y1="2656" y2="2656" x1="2016" />
            <wire x2="2112" y1="2656" y2="2704" x1="2112" />
            <wire x2="2496" y1="2704" y2="2704" x1="2112" />
            <wire x2="2192" y1="1936" y2="1936" x1="2112" />
            <wire x2="2112" y1="1936" y2="2064" x1="2112" />
            <wire x2="2192" y1="2064" y2="2064" x1="2112" />
            <wire x2="2112" y1="2064" y2="2192" x1="2112" />
            <wire x2="2192" y1="2192" y2="2192" x1="2112" />
            <wire x2="2112" y1="2192" y2="2320" x1="2112" />
            <wire x2="2192" y1="2320" y2="2320" x1="2112" />
            <wire x2="2112" y1="2320" y2="2448" x1="2112" />
            <wire x2="2192" y1="2448" y2="2448" x1="2112" />
            <wire x2="2112" y1="2448" y2="2576" x1="2112" />
            <wire x2="2192" y1="2576" y2="2576" x1="2112" />
            <wire x2="2112" y1="2576" y2="2656" x1="2112" />
            <wire x2="2496" y1="1936" y2="2704" x1="2496" />
            <wire x2="2800" y1="1936" y2="1936" x1="2496" />
        </branch>
        <iomarker fontsize="28" x="2016" y="2656" name="LE" orien="R180" />
        <branch name="XLXN_58">
            <wire x2="320" y1="1600" y2="1616" x1="320" />
            <wire x2="400" y1="1616" y2="1616" x1="320" />
            <wire x2="400" y1="1616" y2="1680" x1="400" />
            <wire x2="1952" y1="1680" y2="1680" x1="400" />
            <wire x2="1952" y1="1680" y2="2000" x1="1952" />
            <wire x2="2192" y1="2000" y2="2000" x1="1952" />
        </branch>
        <branch name="XLXN_59">
            <wire x2="1120" y1="1584" y2="1776" x1="1120" />
            <wire x2="1936" y1="1776" y2="1776" x1="1120" />
            <wire x2="1936" y1="1776" y2="2128" x1="1936" />
            <wire x2="2192" y1="2128" y2="2128" x1="1936" />
        </branch>
        <branch name="XLXN_60">
            <wire x2="1760" y1="1552" y2="1552" x1="1632" />
            <wire x2="1632" y1="1552" y2="2256" x1="1632" />
            <wire x2="2192" y1="2256" y2="2256" x1="1632" />
            <wire x2="1760" y1="1536" y2="1552" x1="1760" />
        </branch>
        <branch name="XLXN_61">
            <wire x2="2128" y1="1888" y2="2384" x1="2128" />
            <wire x2="2192" y1="2384" y2="2384" x1="2128" />
            <wire x2="2304" y1="1888" y2="1888" x1="2128" />
            <wire x2="2304" y1="1552" y2="1888" x1="2304" />
        </branch>
        <branch name="XLXN_63">
            <wire x2="2144" y1="1904" y2="2512" x1="2144" />
            <wire x2="2192" y1="2512" y2="2512" x1="2144" />
            <wire x2="3024" y1="1904" y2="1904" x1="2144" />
            <wire x2="3024" y1="1552" y2="1904" x1="3024" />
        </branch>
        <branch name="XLXN_65">
            <wire x2="304" y1="2480" y2="2544" x1="304" />
            <wire x2="2176" y1="2544" y2="2544" x1="304" />
            <wire x2="2176" y1="2544" y2="2640" x1="2176" />
            <wire x2="2192" y1="2640" y2="2640" x1="2176" />
        </branch>
        <branch name="XLXN_66">
            <wire x2="1104" y1="1840" y2="2608" x1="1104" />
            <wire x2="1392" y1="2608" y2="2608" x1="1104" />
            <wire x2="2512" y1="1840" y2="1840" x1="1104" />
            <wire x2="2512" y1="1840" y2="2000" x1="2512" />
            <wire x2="2800" y1="2000" y2="2000" x1="2512" />
            <wire x2="1392" y1="2528" y2="2608" x1="1392" />
        </branch>
        <branch name="a">
            <wire x2="2480" y1="1968" y2="1968" x1="2448" />
        </branch>
        <iomarker fontsize="28" x="2480" y="1968" name="a" orien="R0" />
        <branch name="b">
            <wire x2="2480" y1="2096" y2="2096" x1="2448" />
        </branch>
        <iomarker fontsize="28" x="2480" y="2096" name="b" orien="R0" />
        <branch name="c">
            <wire x2="2480" y1="2224" y2="2224" x1="2448" />
        </branch>
        <iomarker fontsize="28" x="2480" y="2224" name="c" orien="R0" />
        <branch name="d">
            <wire x2="2480" y1="2352" y2="2352" x1="2448" />
        </branch>
        <iomarker fontsize="28" x="2480" y="2352" name="d" orien="R0" />
        <branch name="e">
            <wire x2="2480" y1="2480" y2="2480" x1="2448" />
        </branch>
        <iomarker fontsize="28" x="2480" y="2480" name="e" orien="R0" />
        <branch name="f">
            <wire x2="2480" y1="2608" y2="2608" x1="2448" />
        </branch>
        <iomarker fontsize="28" x="2480" y="2608" name="f" orien="R0" />
        <branch name="g">
            <wire x2="3088" y1="1968" y2="1968" x1="3056" />
        </branch>
        <iomarker fontsize="28" x="3088" y="1968" name="g" orien="R0" />
        <instance x="2912" y="2352" name="XLXI_46" orien="R0" />
        <branch name="point">
            <wire x2="2912" y1="2320" y2="2320" x1="2880" />
        </branch>
        <iomarker fontsize="28" x="2880" y="2320" name="point" orien="R180" />
        <branch name="p">
            <wire x2="3168" y1="2320" y2="2320" x1="3136" />
        </branch>
        <iomarker fontsize="28" x="3168" y="2320" name="p" orien="R0" />
        <instance x="0" y="1872" name="XLXI_47" orien="R90" />
        <instance x="208" y="1872" name="XLXI_48" orien="R90" />
        <instance x="3072" y="928" name="XLXI_49" orien="R90" />
    </sheet>
</drawing>