require 'csv'

klasses = {}

file_name = gets.chomp

CSV.foreach(file_name) do |row|
    klasses[row[0]] ||= {}
    klasses[row[0]][row[1]] = row[2] unless row[2].nil?
end

klasses.each do |klass, data|
    CSV.open("#{klass}.#{file_name}", 'wb') do |csv|
        csv << ['time', 'value']
        data.each do |time, value|
            csv << [time, value]
        end
    end
end