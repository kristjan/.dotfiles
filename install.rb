#!/usr/bin/env ruby

require "fileutils"

IGNORED = %w[. .. .git]
SOURCE_DIR = File.expand_path(File.dirname(__FILE__))
HOME_DIR = File.expand_path("~")
BACKUP_DIR = File.expand_path("~/dotfile_backup")

Dir[File.join(SOURCE_DIR, ".*")].each do |source|
  file = source.split(File::SEPARATOR).last
  next if IGNORED.include?(file)

  link = File.join(HOME_DIR, file)

  if File.exist?(link)
    backup = File.join(BACKUP_DIR, file)
    puts "#{link} exists. Backing up to #{backup}"
    FileUtils.mkdir_p(BACKUP_DIR) unless File.exist?(BACKUP_DIR)
    FileUtils.cp(link, backup)
    FileUtils.rm_f(link)
  end

	FileUtils.ln_s(source, link)
end
