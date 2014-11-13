class PfrpgSkills::Skill::Climb
  def description
    'climb'
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
    PfrpgSkills::Skill.stringify_skill("Climb", attribute, ac_penalty?)
  end
end
