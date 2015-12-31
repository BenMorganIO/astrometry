%w(version image).each do |file|
  require "astrometry/#{file}"
end

module Astrometry
end
