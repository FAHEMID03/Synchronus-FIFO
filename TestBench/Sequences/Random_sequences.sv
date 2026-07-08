class fifo_random_seq extends fifo_base_seq;

task body();

repeat(500)
begin

req=fifo_transaction::type_id::create("req");

start_item(req);

assert(req.randomize());

finish_item(req);

end

endtask

endclass
