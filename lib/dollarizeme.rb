module Dollarizeme
	def self.included(base)
		base.extend ClassMethods
	end

	module ClassMethods

	  def dollarizeme(*names)
	  	names.each do |name|
	  		define_method "#{name}_to_dollar_oficial" do
	  			read_attribute(name).to_f * Dollar.find(:first, :params => {:dollar_type => 1}).buyer
	  		end

	  		define_method "#{name}_to_dollar_blue" do
	  			read_attribute(name).to_f * Dollar.find(:first, :params => {:dollar_type => 2}).buyer
	  		end

	  		define_method "#{name}_to_dollar_green" do
	  			read_attribute(name).to_f * Dollar.find(:first, :params => {:dollar_type => 3}).buyer
	  		end

	  		define_method "#{name}_to_dollar_gold" do
	  			read_attribute(name).to_f * Dollar.find(:first, :params => {:dollar_type => 4}).buyer
	  		end

	  		define_method "#{name}_to_dollar_colonia" do
	  			read_attribute(name).to_f * Dollar.find(:first, :params => {:dollar_type => 5}).buyer
	  		end

	  		define_method "#{name}_to_dollar_miami" do
	  			read_attribute(name).to_f * Dollar.find(:first, :params => {:dollar_type => 6}).buyer
	  		end
	  	end
	  end

  end

end

class ActiveRecord::Base
	include Dollarizeme
end