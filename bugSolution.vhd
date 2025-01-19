process (clk, rst) begin -- Added rst to sensitivity list
  if rst = '1' then
    count <= 0; -- Reset takes priority
  elsif rising_edge(clk) then
    count <= count + 1;
  end if;
end process;