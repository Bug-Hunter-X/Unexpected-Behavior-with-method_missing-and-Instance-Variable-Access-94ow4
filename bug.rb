```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def method_missing(method_name, *args, &block)
    # Handle method calls dynamically
    puts "Method '#{method_name}' called with arguments: #{args.inspect}"
  end

end

obj = MyClass.new(10)
obj.non_existent_method(1, 2, 3) # This will execute the method_missing method
obj.value # This will raise a NoMethodError because @value is not accessible directly
```