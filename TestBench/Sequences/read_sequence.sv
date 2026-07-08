class fifo_read_seq extends fifo_base_seq;

   `uvm_object_utils(fifo_read_seq)

   task body();

      repeat(20)
      begin

         req=fifo_transaction::type_id::create("req");

         start_item(req);

         assert(req.randomize() with
         {
            wr_en==0;
            rd_en==1;
         });

         finish_item(req);

      end

   endtask

endclass
