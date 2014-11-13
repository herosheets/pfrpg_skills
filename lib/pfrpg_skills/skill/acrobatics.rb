class PfrpgSkills::Skill::Acrobatics
  def description
    'acrobatics'
  end

  def attribute
    'dex'
  end

  def ac_penalty?
    true
  end

  def to_s
    PfrpgSkills::Skill.stringify_skill("Acrobatics", attribute, ac_penalty?)
  end
end
