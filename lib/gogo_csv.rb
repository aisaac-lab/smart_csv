require "gogo_csv/version"
require "gogo_csv/matrix"
require "gogo_csv/array"

module GogoCsv
  require 'csv'
  require 'matrix'

  def _(path='./input.csv', format=:arys)
    $current_path = path
    arys = CSV.read(
      File.expand_path(path)
    )

    $original_csv = case format
    when :matrix then Matrix[*arys]
    when :arys   then arys
    end
  end
end

@arys = _

include GogoCsv
