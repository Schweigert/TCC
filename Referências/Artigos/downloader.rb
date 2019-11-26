numbers = []

numbers = File.read('font').split("\n").map! { |line| line.split('/').last }

def wget_pdf(number)
	system "wget 'http://ieeexplore.ieee.org/stampPDF/getPDF.jsp?tp=&isnumber=&arnumber=#{number}' -O #{number}.pdf"
end

numbers.each { |number| wget_pdf(number) }
