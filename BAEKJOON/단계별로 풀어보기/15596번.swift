func generate (_ inputNum:Int) -> Int {
	var sum = inputNum
	var num = inputNum
	while num != 0 {
		sum += num % 10
		num /= 10
	}
	return sum
}
var result: Set<Int> = []
for i in 1...10000 {
	result.insert(generate(i))
}
for i in 1...10000 {
	if !result.contains(i) {
		print(i)
	}
}
