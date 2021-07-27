dizhi = ["子", "丑", "寅", "卯", "辰", "巳", "午", "未", "申", "酉", "戌", "亥"]
yunmu = ["东", "冬", "江", "支", "微", "鱼", "虞", "齐", "佳", "灰", "真", "文", "元", "寒", "删", "铣", "篠", "巧", "皓", "哿", "马", "养", "梗", "迥", "有", "宥", "沁", "勘", "艳", "卅", "引"]
shichen = []

dizhi.each do |e|
	if e != "子"
	  shichen << e << e
	else
		shichen << e
	end
end
shichen << "子"

# p shichen

# full_date = "2021-07-23 01:23:01"
full_date = Time.now.to_s
p full_date

date = full_date.split(" ")[0]
time = full_date.split(" ")[1]
# puts shichen[time.split(":")[0].to_i]

result = "#{dizhi[date.split("-")[1].to_i-1]}#{yunmu[date.split("-")[2].to_i-1]}#{shichen[time.split(":")[0].to_i]}"

puts result

result = "子养"

def find_index(array,elem)
	array.each_with_index do |e,i|
		if e == elem
			return i+1
		end
	end	
end

puts "#{find_index(dizhi,result.split("")[0])}-#{find_index(yunmu,result.split("")[1])}"





