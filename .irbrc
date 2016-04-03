require 'irb/ext/save-history'
require 'irb/completion'
IRB.conf[:SAVE_HISTORY] = 100
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history"
IRB.conf[:AUTO_INDENT] = true

pwd = Dir.pwd
git = File.exists?(File.join(pwd, '.git'))
prompt = git ? File.basename(pwd) : ''
IRB.conf[:PROMPT][:MINIMAL_GIT] = {
  PROMPT_I: "#{prompt}> ",
  PROMPT_N: "#{prompt}> ",
  PROMPT_S: "#{' ' * (prompt.length + 1)}%l ",
  PROMPT_C: "#{' ' * prompt.length}* ",
  RETURN:   "# %s\n"
}
IRB.conf[:PROMPT_MODE] = :MINIMAL_GIT

require 'json'
require 'csv'

def unbundled_require(gem)
  loaded = false

  if defined?(::Bundler)
    Gem.path.each do |gems_path|
      gem_path = Dir.glob("#{gems_path}/gems/#{gem}*").last
      unless gem_path.nil?
        $LOAD_PATH << "#{gem_path}/lib"
        require gem
        loaded = true
      end
    end
  else
    require gem
    loaded = true
  end

  raise(LoadError, "couldn't find #{gem}") unless loaded

  loaded
end

def load_gem(gem, &block)
  begin
    if unbundled_require gem
      yield if block_given?
    end
  rescue Exception => err
    warn "Couldn't load #{gem}: #{err}"
  end
end

load_gem 'awesome_print' do
  AwesomePrint.irb!
end

load_gem 'clipboard'

load_gem 'hirb' do
  Hirb::View.enable
  extend Hirb::Console
end

load_gem 'paint' # Dependency of fancy_irb
load_gem 'fancy_irb' do
  FancyIrb.start(
    result_prompt: '#=> ',
    colorize: {
      input_prompt: [:yellow]
    }
  )
end

load_gem 'interactive_editor'
