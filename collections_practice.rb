def begins_with_r(array)
  array.all? { |element| element.start_with? 'r'}
end

def contain_a(array)
  new_array = []
  array.each do |element|
    if element.include? 'a'
      new_array.push(element)
    end
  end
  new_array
end

def first_wa(array)
  array.detect { |x|
    if x.is_a?(String)
      x.start_with?('wa') end
    }
end

def remove_non_strings(array)
  new_array = []
  array.each { |x|
    if x.is_a?(String)
      new_array.push(x)
    end
    }
    new_array
end

def count_elements(array) #This one stumped me hard!
  counts = Hash.new 0
  array.each do |k|
    counts[k[:name]] += 1
  end
  return_array = []
  counts.each do |k, v|
    formatted_counts = Hash.new 0
    formatted_counts[:count] = v
    formatted_counts[:name] = k
    return_array.push(formatted_counts)
  end
  return_array
end

def merge_data(keys, data)

  new_hash = Hash.new
  new_array = Array.new

  data.each do |element|
    element.each do |key, value|
      element[key] = {key => value}
      new_array.push(element[key][value])

    end
    new_array
  end

  data
end
