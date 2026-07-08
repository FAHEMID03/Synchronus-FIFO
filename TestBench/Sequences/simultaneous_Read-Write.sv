class fifo_simultaneous_seq extends fifo_base_seq;

task body();

repeat(50)
begin

req=fifo_transaction::type_id::create("req");

start_item(req);

assert(req.randomize() with
{
wr_en==1;
rd_en==1;
});

finish_item(req);

end

endtask

endclass
