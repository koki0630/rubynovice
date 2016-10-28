def greeting(name)
  return "Hello, #{name}."
end
def good_bye(name)
    return "good bye,#{name}"
end

if $0 == __FILE__ 
  puts greeting('bob')
  puts good_bye('bob')
end
