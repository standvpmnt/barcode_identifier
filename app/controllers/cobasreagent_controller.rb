class CobasreagentController < ApplicationController

	def search
		params_breakup
		@reagent = Cobasreagent.last
	end


	private
	
	def params_breakup
		@reagent = Cobasreagent.new
		@reagent.test_code = params[:bcode][5...8]
		@reagent.reagent_bottle = params[:bcode][8].to_i
		@reagent.test_short_name = params[:bcode][9...14]
		@reagent.reagent_name = params[:bcode][52...82].rstrip
		@reagent.test_nos = params[:bcode][43...46].to_i
		@reagent.expiry_month = params[:bcode][14...16].to_i
		@reagent.expiry_year = ('20'+params[:bcode][16...18]).to_i
		@reagent.lot_no = params[:bcode][28...36]
		@reagent.unique_identifier = params[:bcode][82...98]
		@reagent.save
	end

	def scan_params
		params.require(:cobasreagent).permit(:bcode)
	end
end