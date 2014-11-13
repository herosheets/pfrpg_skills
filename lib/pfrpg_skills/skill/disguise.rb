class PfrpgSkills::Skill::Disguise
  def description
    'disguise'
  end

  def attribute
    'cha'
  end

  def untrained?
    true
  end

  def ac_penalty?
    false
  end

  def to_s
    PfrpgSkills::Skill.stringify_skill("Disguise", attribute, ac_penalty?)
  end
end

