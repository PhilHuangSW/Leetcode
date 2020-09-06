# @param {Integer[][]} a
# @param {Integer[][]} b
# @return {Integer}
def largest_overlap(a, b)
    
end

def right_shift(a)
    rows = a.length
    columns = a[0].length
    b = Array.new(rows){Array.new(columns)}
    for i in 0...a.length
        for j in 0...a[i].length
            right_j = (j-1)%a[i].length
            b[i][j] = a[i][right_j]
        end
    end
    b
end

def left_shift(a)
    rows = a.length
    columns = a[0].length
    b = Array.new(rows){Array.new(columns)}
    for i in 0...a.length
        for j in 0...a[i].length
            right_j = (j+1)%a[i].length
            b[i][j] = a[i][right_j]
        end
    end
    b
end

def up_shift(a)
    rows = a.length
    columns = a[0].length
    b = Array.new(rows){Array.new(columns)}
    for i in 0...a.length
        for j in 0...a[i].length
            right_i = (i+1)%a.length
            b[i][j] = a[right_i][j]
        end
    end
    b
end

def down_shift(a)
    rows = a.length
    columns = a[0].length
    b = Array.new(rows){Array.new(columns)}
    for i in 0...a.length
        for j in 0...a[i].length
            right_i = (i-1)%a.length
            b[i][j] = a[right_i][j]
        end
    end
    b
end