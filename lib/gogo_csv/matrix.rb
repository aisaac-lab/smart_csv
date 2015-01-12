module GogoCsv
  class ::Matrix
    def save!(path='./output.csv')
      raise 'Should supply file path' unless path ||= $current_path
      CSV.open(File.expand_path(path), "wb") do |csv|
        row_vectors.each { |v| csv << v.to_a }
      end
    end
  end
end
