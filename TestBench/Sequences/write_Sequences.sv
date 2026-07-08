class fifo_write_seq extends fifo_base_seq;

   `uvm_object_utils(fifo_write_seq)

   task body();

      repeat(20)
      begin

         req=fifo_transaction::type_id::create("req");

         start_item(req);

         assert(req.randomize() with
         {
            wr_en==1;
            rd_en==0;
         });

         finish_item(req);

      end

   endtask

endclass
