#!/usr/bin/env ruby

# This little script calculates the Rapid Shallow Breathing Index (RSBI)
# commonly used in the ICU setting as a parameter and predictor for successful extubation.

require 'colorize'

puts "What is the respiratory rate?"
RR = Integer(gets.chomp)

puts "What is the tidal volume (in mL)?"
TV = gets.to_f / 1000

RSBI = (RR / TV).to_i

puts ""
puts "The RSBI is #{RSBI}"

if RSBI < 105
  puts "Your patient will likely have a positive extubation.".colorize(:green)
else
  puts "Your patient will likely fail extubation.".colorize(:red)
end

puts ""
