#################### ROMAN NUMERAL CONVERTER ####################



#################### SOLUTION ####################

require "test/unit/assertions"
include Test::Unit::Assertions

def roman_numeral_converter(num, result = "")
    arr = num.to_s.split(//)
    roman_numerals = {
        1000 => "M",
        900 => "CM",
        500 => "D",
        400 => "CD",
        100 => "C",
        90 => "XC",
        50 => "L",
        40 => "XL",
        10 => "X",
        9 => "IX",
        5 => "V",
        4 => "IV",
        1 => "I",
    }

    #p num
    roman_numerals.keys.each do |divisor|
        quotient, mod = num.divmod(divisor)
        result << roman_numerals[divisor] * quotient
        return roman_numeral_converter(mod, result) if quotient > 0
    end
    result
end


assert_equal("M", roman_numeral_converter(1000), "wrong")
assert_equal("MMCM", roman_numeral_converter(2900), "wrong")
