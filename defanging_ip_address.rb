#################### DEFANGING AN IP ADDRESS ####################

# Given a valid (IPv4) IP address, return a defanged version of that IP address.

# A *defanged IP address* replaces every period "." with "[.]".

# **Example 1:**
# ```
# Input: address = "1.1.1.1"
# Output: "1[.]1[.]1[.]1"
# ```

# **Example 2:**
# ```
# Input: address = "255.100.50.0"
# Output: "255[.]100[.]50[.]0"
# ```

# **Constraints:**
# - The given address is a valid IPv4 address.

#################### SOLUTION ####################
# @param {String} address
# @return {String}
require 'rspec/autorun'

# Brute Force
# TIME: O(n) -- SPACE: O(1)
# def defang_i_paddr(address)
#   idx = 0
#   while idx <= address.length
#     idx += 1
#     if address[idx] == "."
#       address.insert(idx, "[")
#       address.insert(idx+2, "]")
#       idx += 2
#     end
#   end
#   address
# end

def defang_i_paddr(address)
  address.gsub('.', '[.]')
end



address1 = "1.1.1.1"
address2 = "255.100.50.0"
address3 = "255..100...50..0"


describe "method" do
  it "defangs the IP address" do
    expect(defang_i_paddr(address1)).to eq("1[.]1[.]1[.]1")
  end
  it "defangs the IP address" do
    expect(defang_i_paddr(address2)).to eq("255[.]100[.]50[.]0")
  end
  it "defangs the IP address" do
    expect(defang_i_paddr(address3)).to eq("255[.][.]100[.][.][.]50[.][.]0")
  end
end