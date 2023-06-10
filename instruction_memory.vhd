library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity instruction_memory is
    port (
        address : in std_logic_vector(63 downto 0);
        instruction : out std_logic_vector(31 downto 0)
    );
end instruction_memory ;

architecture Behavioral of instruction_memory  is

    type memory_array is array (0 to 1023) of std_logic_vector(7 downto 0);
    signal mem : memory_array := (
         x"83", x"10", x"10", x"00",
         x"03", x"31", x"90", x"00",
            x"83", x"31", x"10", x"01",
         x"03", x"32", x"90", x"01",
            x"B3", x"82", x"12", x"00",
            x"B3", x"82", x"22", x"00",
            x"B3", x"82", x"32", x"00",
            x"B3", x"82", x"42", x"00",
            x"A3", x"30", x"50", x"00",
          others => (others => '0'));


              signal add : integer := 0;


begin


                add <= to_integer(unsigned(address));

            instruction <= mem(add+3)&mem(add+2)&mem(add+1)&mem(add);
 

end architecture Behavioral;