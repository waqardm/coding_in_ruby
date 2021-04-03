dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

#First attempt entailed breaking arrays till discovery of scan

# def substrings (substring, dictionary)
#     result = Hash.new 0
#     # converting substring to array
#     substring = substring.split(/\W+/)
#     # iterating through substring array
#     substring.each do |x|
#         x = x.downcase
#         # iterating through dictionary array and comparing word against word from substring array
#         dictionary.each do |y|
#             y = y.downcase
#             # if word matches, then add to result Hash
#             if x == y
#                 result[y] +=1
#             end
#         end
#     end
#     p result
# end 

# Second attempt after finding I could use scan

def substrings (string, dictionary)
    result = {}
    dictionary.each do |key| 
        word = string.downcase.scan(key).count
        result[key] = word
    end
    p result
end
substrings("today i Went down Below, real down below", dictionary)