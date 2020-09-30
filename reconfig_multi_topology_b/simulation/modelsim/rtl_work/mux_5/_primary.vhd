library verilog;
use verilog.vl_types.all;
entity mux_5 is
    port(
        din_1           : in     vl_logic;
        din_2           : in     vl_logic;
        din_3           : in     vl_logic;
        din_4           : in     vl_logic;
        din_5           : in     vl_logic;
        sel             : in     vl_logic_vector(2 downto 0);
        dout            : out    vl_logic
    );
end mux_5;
