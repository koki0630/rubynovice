def greeting(name)
  return "Hello, #{name}."
end

if $0 == __FILE__ 
  puts greeting('bob')
end
