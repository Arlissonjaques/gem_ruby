# TODO: melhorar alguns aspectos de logica em alguns ponto
# não está totalmente funcional ainda

def minProductSubset(arr, n)

	return arr[0] if n == 1
	
	m_negativo = 0
	minimo_positivo = 0
	negativo = 0
	contador_zero = 0
	final = 1

	for i in 0..n-1 do
		
		if (arr[i] == 0) 	
		  contador_zero = contador_zero + 1
		  continue
        end
		
		if (arr[i] < 0) 	
			negativo = negativo + 1
			m_negativo = [m_negativo, arr[i]].max
        end
		
		if (arr[i] > 0)
			minimo_positivo = [minimo_positivo, arr[i]].max
        end
		final = final * arr[i]
     end

	return 0 if contador_zero == n || negativo == 0 && contador_zero > 0

	return minimo_positivo if negativo == 0

	if negativo == 0 and negativo != 0
		final = int(final / m_negativo)
    end

	return final
end

arr = [-7, -3, -9, 4, 8]
n = arr.length()
puts (minProductSubset(arr, n))