module ApplicationHelper
	# BootStrap Flash Messages
	def flash_class(level)
    	case level
        	when :info then "alert alert-info"
        	when :success then "alert alert-success"
        	when :warning then "alert alert-warning"
        	when :danger then "alert alert-danger"
        	when :notice then "alert alert-info"
        	when :alert then "alert alert-info"
    	end
	end
end