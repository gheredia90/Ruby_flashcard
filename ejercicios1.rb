require 'prime'

def power(base, exponent)

  resultado = 1
  (exponent).times do 
  	resultado *= base
  end
  resultado
end

puts power(3,4)
puts power(3,3)

def reverse(string)
	String revertida = ""
	elements = string.split ""
	elements.reverse_each do |letra|	
		revertida += letra
	end	
	revertida
end	

puts reverse("HOla qué tal amigos")


def factorial(number)
   if(number == 0)
 	  return 1
   else
 	  return ((number) * (factorial (number - 1)))
   end	
end

puts factorial(5)

def time_conversion(minutes)
	numero_horas = minutes / 60
	numero_minutos = minutes % 60
	
    puts "#{numero_horas}:#{numero_minutos}"
	    	
end

time_conversion(500)

def count_vowels(string)
  string.scan(/[aeiouAEIOU]/).count
end


puts count_vowels("aeiouJJEIJ")


def uniqueness(array)
	array & array
end	

puts (uniqueness([1,5,"frog", 2,1,3,"frog"] ))

def is_prime?(number)
	array_primes = Prime.first(number)
	array_primes.include?(number)
end	

puts is_prime?(47)

def palindrome?(string)
	revertida = reverse(string)
	revertida == string
end	

puts palindrome?("bear")

def capitalize_words(string)
	words = string.split(' ')
	capitalized_array = []
	for i in words
		capitalized_array <<  i.capitalize
	end	
	capitalized_array.join(" ")

end	

puts capitalize_words("how is the capital today?")

def two_sum(array)
	for i in array
		for j in array
			if (i + j) == 0
				return [array.index(i), array.index(j)]
			end
		end		
	end
	nil	
end

puts two_sum([2, 3, -2, 3])


def greatest_common_factor(a, b)
	maximo_comun_divisor = 0
	menor = [a, b].min
	
	for i in 1..menor
		resto1 = a % i
		resto2 = b % i
		if (resto1 == 0) && (resto2 == 0)
			maximo_comun_divisor = i
		end
	end	
	maximo_comun_divisor
end	

puts greatest_common_factor(12, 16)

def polynomial (polinomio)

	for coefficient in polinomio
		res = ""
		if coefficient 

end	