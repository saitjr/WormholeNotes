ENV.keys.each do |key|
  puts "#{key}=#{ENV[key]}"
end
