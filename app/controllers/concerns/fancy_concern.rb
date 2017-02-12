module FancyConcern
  def self.included(base)
    # http://www.railstips.org/blog/archives/2009/05/15/include-vs-extend-in-ruby/
    base.helper FancyConcernViewHelper
    base.before_action :set_my_instance_variable
  end
  
  def set_my_instance_variable
    @my_instance_variable = "_instance variable value_"
  end  
end
