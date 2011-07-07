# encoding: utf-8
begin require 'rspec/expectations'; rescue LoadError; require 'spec/expectations'; end
require 'cucumber/formatter/unicode'
$:.unshift(File.dirname(__FILE__) + '/../../lib')

require 'rubygems'
require 'net/ssh'
require 'net/scp'
require 'fileutils'


if ENV['FIREWATIR']
  require 'firewatir'
  Browser = FireWatir::Firefox
  case RUBY_PLATFORM
  when /darwin/
    $file_cache = %x[echo $HOME/Library/Caches/Firefox/Profiles/egwx4v7t.default/Cache/.].chomp
    $file_cookie = %x[echo $HOME/Library/Cookies/Cookies.plist].chomp
  when /linux/
    $file_cache = %x[echo $HOME/.mozilla/firefox/default/Cache/.].chomp
    $file_cookie = %x[echo $HOME/.mozilla/firefox/default/cookies.sqlite*].chomp
end
else
  case RUBY_PLATFORM
  when /linux/
    require 'firewatir'
    Browser = FireWatir::Firefox
    $file_cache = %x[echo $HOME/.mozilla/firefox/default/Cache/.].chomp
    $file_cookie = %x[echo $HOME/.mozilla/firefox/default/cookies.sqlite*].chomp
  when /darwin/
    require 'safariwatir'
    Browser = Watir::Safari
    $file_cache = %x[echo $HOME/Library/Caches/Safari/.].chomp
    $file_cookie = %x[echo $HOME/Library/Cookies/Cookies.plist].chomp
  when /win32|mingw/
    require 'watir'
    Browser = Watir::IE
  when /java/
    require 'celerity'
    Browser = Celerity::Browser
  else
    raise "This platform is not supported (#{PLATFORM})"
  end
end

def limpacache_browser
  if File.directory?($file_cache)
    FileUtils.rm_rf($file_cache)
    else
    end
  if File.exist?($file_cookie)
    FileUtils.rm_rf($file_cookie)
    else
    end
end

# "before all"

limpacache_browser()

browser = Browser.new

Before do
  @browser = browser  
end

# "after all"
at_exit do
  browser.close
end
