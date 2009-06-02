require "rubygems"
require "treetop"

Treetop.load 'gramm'

parser = GrammTestParser.new
parser.root = :other
#puts parser.methods
tree = parser.parse('ops hello there')

puts tree
puts tree.test