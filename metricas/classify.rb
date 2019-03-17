require 'csv'

klasses = {}

file_name = ARGV[0].chomp

CSV.foreach(file_name) do |row|
    klasses[row[0]] ||= {}
    klasses[row[0]][row[1]] = row[2] unless row[2].nil?
end

peer_time = {}
types = []
klasses.each do |klass, data|
    data.each do |time, value|
        peer_time[time] ||= {}
        peer_time[time][klass] = value.to_f
        types << klass
    end
end

types.uniq!

File.open("#{file_name}.data", 'w') do |file|
    file.puts types.join(' ')
    peer_time.keys.sort.each do |time|
        data = peer_time[time]
        file.puts(([time.to_s.gsub('2019', '19').to_s.gsub('-', '/')] + types.map { |type| data[type] || -100 }).join(' '))
    end
end