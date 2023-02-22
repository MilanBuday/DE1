----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.02.2023 16:53:29
-- Design Name: 
-- Module Name: tb_mux_3bit_4to1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_mux_3bit_4to1 is
    
end entity tb_mux_3bit_4to1;

architecture testbench of tb_mux_3bit_4to1 is
signal sig_a   :  STD_LOGIC_VECTOR (2 downto 0);
signal sig_b   :  STD_LOGIC_VECTOR (2 downto 0);
signal sig_c   :  STD_LOGIC_VECTOR (2 downto 0);
signal sig_d   :  STD_LOGIC_VECTOR (2 downto 0);
signal sig_sel :  STD_LOGIC_VECTOR (1 downto 0);
signal sig_f   :  STD_LOGIC_vector (2 downto 0);

begin

  -- Connecting testbench signals with comparator_4bit
  -- entity (Unit Under Test)
  uut_mux_3bit_4to1 : entity work.mux_3bit_4to1
    port map (
      a_i           => sig_a,
      b_i           => sig_b,
      c_i           => sig_c,
      d_i           => sig_d,
      sel_i         => sig_sel,
      f_o           => sig_f
    );

  --------------------------------------------------------
  -- Data generation process
  --------------------------------------------------------
  p_stimulus : process is
  begin

    -- Report a note at the beginning of stimulus process
    report "Stimulus process started";

    sig_a <= "001";
    sig_b <= "010";
    sig_c <= "011";
    sig_d <= "100";
    sig_sel <= "00";
    wait for 100 ns;
    sig_sel <= "01";
    wait for 100 ns;
    sig_sel <= "10";
    wait for 100 ns;
    sig_sel <= "11";
    wait for 100 ns;
    

    -- Report a note at the end of stimulus process
    report "Stimulus process finished";

    wait; -- Data generation process is suspended forever

  end process p_stimulus;

end architecture testbench;
