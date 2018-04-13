library verilog;
use verilog.vl_types.all;
entity Pratica2 is
    port(
        SW              : in     vl_logic_vector(17 downto 0);
        LEDG            : out    vl_logic_vector(8 downto 0)
    );
end Pratica2;
