class Design < ActiveRecord::Base
        validates :design_name, :email, :post, :presence => true, :allow_nil => true, :allow_blank => true
        validates :design_name, :length => { :maximum => 20 }, :allow_nil => true, :allow_blank => true
        validates :email, :length => { :maximum => 20 }, :allow_nil => true, :allow_blank => true
        validates :post, :length => { :maximum => 120 }, :allow_nil => true, :allow_blank => true
end

