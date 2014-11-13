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
        skill = classname.constantize.new(type)
        return skill if skill.supported_types.include?(type)
      rescue NameError => e
      end
      return false
    end

    def self.typeless_class(name)
      begin
        classname = class_from_name(name)
        skill = classname.constantize.new
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
      "PfrpgSkills::Skill::#{name.split(':')[0].gsub(/\s+/, "").camelize}"
    end

    def self.class_from_name(name)
      "PfrpgSkills::Skill::#{name.gsub(/\s+/, "").camelize}"
    end

  end
end
