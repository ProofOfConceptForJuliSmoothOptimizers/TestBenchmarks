function selection_sort!(v::Vector{T}) where T <: Real
    for i in 1:(length(v)-1)
        for j in i:length(v)
            (v[i] <= v[j]) && continue
            v[i] += v[j]
            v[j]  = v[i] - v[j]
            v[i] -= v[j]
        end
    end
end

function insertion_sort!(v::Vector{T}) where T <: Real
    for i in 2:length(v)
        j = i
        while j > 1 && v[j] < v[j-1]
            v[j-1] += v[j]
            v[j] = v[j-1] - v[j]
            v[j-1] -= v[j]
            j -= 1 
        end
    end
end