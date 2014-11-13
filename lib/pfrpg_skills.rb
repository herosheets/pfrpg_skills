module PfrpgSkills
end

require 'pfrpg_skills/skill'

Dir[File.expand_path(File.join(File.dirname(File.absolute_path(__FILE__)), 'pfrpg_skills/')) + "/**/*.rb"].each do |file|
  require file
end