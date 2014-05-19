class Software < ActiveRecord::Base
	serialize :softwarename, Array
end
