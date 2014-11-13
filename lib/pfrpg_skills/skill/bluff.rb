class PfrpgSkills::Skill::Bluff
  def description
    'bluff'
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
    PfrpgSkills::Skill.stringify_skill("Bluff", attribute, ac_penalty?)
  end
end
