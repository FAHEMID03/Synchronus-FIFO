class fifo_transaction extends uvm_sequence_item;

   rand bit        wr_en;
   rand bit        rd_en;
   rand bit [31:0] wr_data;

        bit [31:0] rd_data;

   `uvm_object_utils(fifo_transaction)

   function new(string name="fifo_transaction");
      super.new(name);
   endfunction

endclass
