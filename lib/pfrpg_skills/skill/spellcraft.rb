class PfrpgSkills::Skill::Spellcraft
  def description
    'spellcraft'
  end

  def attribute
    'int'
  end

  def untrained?
    false
  end

  def ac_penalty?
    false
  end

  def to_s
    Skill.stringify_skill("Spellcraft", attribute, ac_penalty?)
  end
end

