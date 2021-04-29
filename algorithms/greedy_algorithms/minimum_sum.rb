# Funciona parcialmente, porém não está retornando
# o resultado correto

def minproduct(a,b,n,k)

	diff = 0
	res = 0

	(0..n-1).each do |i|

		pro = a[i] * b[i]
		res = res + pro
		
		if pro < 0 and b[i] < 0
			temp = (a[i] + 2 * k) * b[i]
        elsif pro < 0 and a[i] < 0
			temp = (a[i] - 2 * k) * b[i]
		elsif pro > 0 and a[i] < 0
			temp = (a[i] + 2 * k) * b[i]
        else pro > 0 and a[i] > 0
			temp = (a[i] - 2 * k) * b[i]
        end
		
		d = -1 * (pro - temp)

		if (d > diff)
			diff = d
        end
    end

	return res - diff
end

a = [ 2, 3, 4, 5, 4 ]
b = [ 3, 4, 2, 3, 2 ]
n = 5
k = 3

print minproduct(a, b, n, k)
