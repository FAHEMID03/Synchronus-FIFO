forever

begin

   seq_item_port.get_next_item(req);

   vif.wr_en<=req.wr_en;

   vif.rd_en<=req.rd_en;

   vif.wr_data<=req.wr_data;

   @(posedge vif.clk);

   seq_item_port.item_done();

end
