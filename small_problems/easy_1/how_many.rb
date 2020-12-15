def count_occurrences(collection)
  occurrences = {}
  collection.each do |value|
    if occurrences.has_key?(value)
      occurrences[value] = occurrences[value] + 1
    else
      occurrences[value] = 1
    end
  end
  occurrences. each do |key, value|
    puts "#{key} => #{value}"
  end
end


vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)