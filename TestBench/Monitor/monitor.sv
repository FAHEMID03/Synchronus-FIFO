if(vif.wr_en)

begin

   tr.wr_data=vif.wr_data;

   analysis_port.write(tr);

end
