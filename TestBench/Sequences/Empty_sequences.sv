class fifo_empty_seq extends fifo_base_seq;

task body();

repeat(16)
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
