class PfrpgSkills::Skill::Diplomacy
  def description
    'diplomacy'
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
    PfrpgSkills::Skill.stringify_skill("Diplomacy", attribute, ac_penalty?)
  end
end

