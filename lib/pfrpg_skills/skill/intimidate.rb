class PfrpgSkills::Skill::Intimidate
  def description
    'intimidate'
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
    PfrpgSkills::Skill.stringify_skill("Intimidate", attribute, ac_penalty?)
  end
end

