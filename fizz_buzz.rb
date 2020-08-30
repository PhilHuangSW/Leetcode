#################### FIZZ BUZZ ####################

# Write a program that outputs the string representation of numbers from 1 to n.

# But for multiples of three it should output “Fizz” instead of the number and for the multiples of five output “Buzz”. For numbers which are multiples of both three and five output “FizzBuzz”.

# Example:
# n = 15,
# Return:
# [
#     "1",
#     "2",
#     "Fizz",
#     "4",
#     "Buzz",
#     "Fizz",
#     "7",
#     "8",
#     "Fizz",
#     "Buzz",
#     "11",
#     "Fizz",
#     "13",
#     "14",
#     "FizzBuzz"
# ]


#################### SOLUTION ####################
# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
	ans = []
	for i in 1..n
		# must put this case first otherwise if 15 came up and either
		# i%3 or i%5 were in front, they would push "Fizz" or "Buzz" respectively
		if (i%3 == 0 && i%5 == 0)
				ans << "FizzBuzz"
		elsif i%3 == 0
				ans << "Fizz"
		elsif i%5 == 0
				ans << "Buzz"
		else
				ans << "#{i}"
		end
	end
	ans
end

p fizz_buzz(25)