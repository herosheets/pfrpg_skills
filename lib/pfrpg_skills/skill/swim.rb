class PfrpgSkills::Skill::Swim
  def description
    'swim'
  end

  def attribute
    'str'
  end

  def untrained?
    true
  end

  def ac_penalty?
    true
  end

  def to_s
    Skill.stringify_skill("Swim", attribute, ac_penalty?)
  end
end

