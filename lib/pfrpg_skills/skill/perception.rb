class PfrpgSkills::Skill::Perception
  def description
    'perception'
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
    Skill.stringify_skill("Perception", attribute, ac_penalty?)
  end
end

