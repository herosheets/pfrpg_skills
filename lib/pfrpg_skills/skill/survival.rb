class PfrpgSkills::Skill::Survival
  def description
    'survival'
  end

  def attribute
    'wis'
  end

  def untrained?
    true
  end

  def ac_penalty?
    false
  end

  def to_s
    PfrpgSkills::Skill.stringify_skill("Survival", attribute, ac_penalty?)
  end
end

