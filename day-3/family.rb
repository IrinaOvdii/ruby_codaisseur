family = {
  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank","rob","david"],
  aunts: ["mary","sally","susan"]
}

im_family = family.select do |key, value|
  key == :sisters || key == :brothers
end

array = im_family.values.flatten
puts array
