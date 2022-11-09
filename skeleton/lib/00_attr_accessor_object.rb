class AttrAccessorObject
  def self.my_attr_accessor(*names)
    # ...
    names.each do |el|
      define_method("#{el}=".to_sym) do |new_value|
        instance_variable_set("@#{el}", new_value)
      end
      define_method("#{el}".to_sym) {instance_variable_get("@#{el}")}
    end

    # names.each do |el|
      
    # end
  end
end
