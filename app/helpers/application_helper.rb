module ApplicationHelper
	def current_order
		if Orrder.find_by_id(session[:order_id]).nil?
			Orrder.new
		else
			Orrder.find_by_id(session[:order_id])
			
		end
		
	end
end
