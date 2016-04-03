pry_dir = File.dirname(__FILE__)
irb_path = File.join(pry_dir, '.irbrc')
load irb_path if File.exists?(irb_path)
Pry.config.prompt_name = File.basename(Dir.pwd)
Pry.config.prompt = [
  proc { |_obj, nest_level, pry| "#{pry.config.prompt_name}> " },
  proc { |_obj, nest_level, pry| "#{pry.config.prompt_name}* " },
]
AwesomePrint.pry! if defined?(AwesomePrint)
