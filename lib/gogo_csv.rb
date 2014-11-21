require "gogo_csv/version"
require "gogo_csv/matrix"
require "gogo_csv/array"

module GogoCsv
  require 'csv'
  require 'matrix'

  def open(path, format=:matrix)
    $path = path
    arys = CSV.read(
      File.expand_path(path)
    )

    case format
    when :matrix
      Matrix[*arys]
    when :arys
      arys
    end
  end
  module_function :open
end

include GogoCsv
