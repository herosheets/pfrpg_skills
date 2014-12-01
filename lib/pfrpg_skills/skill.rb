module PfrpgSkills
  class Skill

    def self.skill_list
      skills = [
        Skill::Acrobatics.new,
        Skill::Appraise.new,
        Skill::Bluff.new,
        Skill::Climb.new,
        Skill::Diplomacy.new,
        Skill::DisableDevice.new,
        Skill::Disguise.new,
        Skill::EscapeArtist.new,
        Skill::Fly.new,
        Skill::HandleAnimal.new,
        Skill::Heal.new,
        Skill::Intimidate.new,
        Skill::Knowledge.new('Arcana'),
        Skill::Knowledge.new('Dungeoneering'),
        Skill::Knowledge.new('Engineering'),
        Skill::Knowledge.new('Geography'),
        Skill::Knowledge.new('History'),
        Skill::Knowledge.new('Local'),
        Skill::Knowledge.new('Nature'),
        Skill::Knowledge.new('Nobility'),
        Skill::Knowledge.new('Planes'),
        Skill::Knowledge.new('Religion'),
        Skill::Linguistics.new,
        Skill::Perception.new,
        Skill::Ride.new,
        Skill::SenseMotive.new,
        Skill::SleightOfHand.new,
        Skill::Spellcraft.new,
        Skill::Stealth.new,
        Skill::Survival.new,
        Skill::Swim.new,
        Skill::UseMagicDevice.new
      ]
      [Skill::Craft,Skill::Profession, Skill::Perform].each do |skil|
        s = skil.new('NONE')
        s.supported_types.each do |stype|
          skills << skil.new(stype)
        end
      end
      return skills
    end

    def self.stringify_skill(name, attribute, ac_penalty)
      ac_penalty_str = ac_penalty ? "*" : ""
      return "#{name} (#{attribute})#{ac_penalty_str}"
    end

    # TODO : raise a smarter error /w invalid type
    def self.fetch_by_name(name)
      return class_with_type(name) if contains_type?(name)
      return typeless_class(name)
    end

    def self.class_with_type(name)
      begin
        type = type_from_name(name)
        classname = class_from_name_with_type(name)
        skill = self.constantize(classname).new(type)

        return skill if skill.supported_types.include?(type)
      rescue NameError => e
      end
      return false
    end

    def self.typeless_class(name)
      begin
        classname = class_from_name(name)
        skill = self.constantize(classname).new
        return skill
      rescue NameError => e
      end
      return false
    end

    def self.contains_type?(name)
      name[':']
    end

    def self.type_from_name(name)
      name.split(':')[1].strip.capitalize
    end

    def self.class_from_name_with_type(name)
      "PfrpgSkills::Skill::#{self.camelize(name.split(':')[0].gsub(/\s+/, ""))}"
    end

    def self.class_from_name(name)
      "PfrpgSkills::Skill::#{self.camelize(name.gsub(/\s+/, ""))}"
    end

    # By default, +camelize+ converts strings to UpperCamelCase. If the argument
    # to +camelize+ is set to <tt>:lower</tt> then +camelize+ produces
    # lowerCamelCase.
    #
    # +camelize+ will also convert '/' to '::' which is useful for converting
    # paths to namespaces.
    #
    #   'active_model'.camelize                # => "ActiveModel"
    #   'active_model'.camelize(:lower)        # => "activeModel"
    #   'active_model/errors'.camelize         # => "ActiveModel::Errors"
    #   'active_model/errors'.camelize(:lower) # => "activeModel::Errors"
    #
    # As a rule of thumb you can think of +camelize+ as the inverse of
    # +underscore+, though there are cases where that does not hold:
    #
    #   'SSLError'.underscore.camelize # => "SslError"
    def self.camelize(term, uppercase_first_letter = true)
      string = term.to_s
      string = string.sub(/^[a-z\d]*/) { $&.capitalize }
      string.gsub(/(?:_|(\/))([a-z\d]*)/i) { "#{$1}#{$2.capitalize}" }.gsub('/', '::')
    end

    def self.constantize(term) #:nodoc:
      names = term.split('::')
      names.shift if names.empty? || names.first.empty?

      constant = Object
      names.each do |name|
        constant = constant.const_defined?(name, false) ? constant.const_get(name) : constant.const_missing(name)
      end
      constant
    end

  end
end
