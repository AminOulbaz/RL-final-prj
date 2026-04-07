library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity project_reti_logiche is 
    port ( 
    -- Segnali globali
    i_clk   : in std_logic; 
    i_rst   : in std_logic;
    
    -- PROTOCOLLO START-DONE 
    i_start : in std_logic;
    o_done     : out std_logic;    
    
    -- Per l'operazione 10
    i_task_id : in std_logic_vector(5 downto 0);
    i_task_priority : in std_logic_vector(1 downto 0); 
    i_op            : in std_logic_vector(1 downto 0); 
     
    -- Per l'operazione 01 
    o_task_id  : out std_logic_vector(5 downto 0); 
    
    -- GESTIONE DELLA MEMORIA 
    o_mem_addr : out std_logic_vector(15 downto 0); 
    i_mem_data : in std_logic_vector(7 downto 0); 
    o_mem_data : out std_logic_vector(7 downto 0); 
    o_mem_we   : out std_logic; 
    o_mem_en   : out std_logic 
    ); 
end project_reti_logiche;
