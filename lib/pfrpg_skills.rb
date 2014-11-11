Dir[File.expand_path(File.join(File.dirname(File.absolute_path(__FILE__)), 'pfrpg_core/')) + "/**/*.rb"].each do |file|
  require file
end

module PfrpgSkills
end
