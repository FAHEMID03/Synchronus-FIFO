class fifo_env extends uvm_env;

   fifo_agent         wr_agent;

   fifo_agent         rd_agent;

   fifo_scoreboard    sb;

   fifo_coverage      cov;

   fifo_virtual_seqr  vseqr;

   function void build_phase(...);

      wr_agent=create();

      rd_agent=create();

      sb=create();

      cov=create();

      vseqr=create();

   endfunction

endclass
