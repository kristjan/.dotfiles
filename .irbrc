require 'irb/ext/save-history'
IRB.conf[:SAVE_HISTORY] = 100
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history"
IRB.conf[:AUTO_INDENT] = true

require 'rubygems'

# Needs to come first
require 'wirble'
Wirble::Colorize.colors.merge!({
  :comma => :gray,
  :number => :purple,
  :open_array => :gray, :close_array => :gray,
  :open_hash => :gray, :close_hash => :gray,
  :open_string => :green, :close_string => :green,
  :range => :gray,
  :refers => :gray,
  :string => :green,
  :symbol_prefix => :cyan, :symbol => :cyan
})
Wirble.init
Wirble.colorize

require 'bond'
Bond.start

require 'boson'
Boson.start

require 'hirb'
Hirb::View.enable
extend Hirb::Console

require 'sketches'
Sketches.config :editor => 'vim'
alias vim sketch
