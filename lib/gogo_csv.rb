require "gogo_csv/version"

module GogoCsv
  require 'csv'

  def read(path)
    CSV.read(
      File.expand_path(path)
    )
  end

  class ::Array
    def save!(path)
      raise 'should be array of array' unless arys?
      CSV.open(File.expand_path(path), "wb") do |csv|
        each { |ary| csv <<  ary }
      end
    end

    private
    
      def arys?
        all? { |item| item.is_a?(Array) }
      end
  end
end
