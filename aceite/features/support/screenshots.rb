
module Screenshots
  if Cucumber::OS_X
    def embed_screenshot(id)
      `screencapture -t png #{id}.png`
      embed("#{id}.png", "image/png")
    end
  elsif Cucumber::WINDOWS
    # http://wtr.rubyforge.org/rdoc/classes/Watir/ScreenCapture.html
    require 'watir/screen_capture'
    include Watir::ScreenCapture
    def embed_screenshot(id)
      screen_capture("#{id}.jpg", true)
      embed("#{id}.jpg", "image/jpeg")
    end
  else
    # Other platforms...
    def embed_screenshot(id)
      STDERR.puts "Sorry - no screenshots on your platform yet."
      #window = `xwininfo -tree -root |grep -i firefox |awk '{print $1}'`
      #`import -window "#{window}" "#{id}".jpg`
      #embed("#{id}.jpg", "image/jpeg")
    end
  end
end
World(Screenshots)

After do |scenario|
 embed_screenshot("screenshot-#{Time.new.to_i}") if scenario.failed?
end



# Other variants:
#
# Only take screenshot on failures
#
#After do
#  embed_screenshot("screenshot-#{Time.new.to_i}")
#end
#
# Only take screenshot for scenarios or features tagged @screenshot
#
#   After(@screenshot) do
#     embed_screenshot("screenshot-#{Time.new.to_i}")
#   end
