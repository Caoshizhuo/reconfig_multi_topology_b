library verilog;
use verilog.vl_types.all;
entity reconfig_multi_topology_b is
    port(
        a1              : in     vl_logic_vector(7 downto 0);
        a2              : in     vl_logic_vector(7 downto 0);
        b               : in     vl_logic_vector(7 downto 0);
        s0              : in     vl_logic;
        s1              : in     vl_logic;
        y               : out    vl_logic_vector(8 downto 0)
    );
end reconfig_multi_topology_b;
