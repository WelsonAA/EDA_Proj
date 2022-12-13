module design_tb();
reg i_lang_tb,i_dep_tb,i_with_tb,i_bal_tb,i_transfer_tb,//takes you to transaction menu
i_depConf_tb,i_withConf_tb,i_transferConf_tb,i_chooseBal_tb,i_addVal_tb,
i_balNotEnough_tb,i_balEnq_tb;
reg[3:0] i_passwd_tb;
reg[2:0] i_transactionMenu_tb; //options for transaction
wire o_transferConf_tb,o_depConf_tb,o_withConf_tb,
o_balEnq_tb,o_balNotEnough_tb,o_pin_tb;
reg clk_tb;
initial 
	begin
		$dumpfile("design.vcd");
		$dumpvars;
			//Initial Values
		i_lang_tb=1'b1;
		i_pin_tb=1'b1;
			$display("Deposit Case");	//Deposit Case
		i_transactionMenu_tb=3'b001;
		i_depConf_tb=1'b1;
		if(o_depConf_tb==1'b1)
			$display("Deposit is Successful");
		else 
			$display("Deposit Failed");
		#5 i_lang_tb=1'b1;
		i_pin_tb=1'b1; 
			$display("Deposit Case");	//Withdraw Case
		i_transactionMenu_tb=3'b010;
		if(o_withConf_tb==1'b1)
			$display("Withdraw is Successful");
		else 
			$display("Withdraw Failed");
			$display("Transfer Case"); //Transfer Case
		i_transactionMenu_tb=3'b100;
		if(o_transferConf_tb==1'b1)
			$display("Transfer is Successful");
		else 
			$display("Transfer Failed");
		
	end
	always #5 clk_tb = !clk_tb;// Clock Generator  