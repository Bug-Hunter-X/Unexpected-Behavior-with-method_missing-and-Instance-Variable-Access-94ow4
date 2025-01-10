```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def method_missing(method_name, *args, &block)
    # Handle method calls dynamically
    puts "Method '#{method_name}' called with arguments: #{args.inspect}"
    if method_name == :value
      return @value # Explicitly handle value access
    else
      super # Let other methods raise NoMethodError
    end
  end

end

obj = MyClass.new(10)
obj.non_existent_method(1, 2, 3) # Executes method_missing
puts obj.value # Now correctly returns 10
```