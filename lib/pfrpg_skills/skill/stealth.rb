class PfrpgSkills::Skill::Stealth
  def description
    'stealth'
  end

  def attribute
    'dex'
  end

  def untrained?
    true
  end

  def ac_penalty?
    true
  end

  def to_s
    PfrpgSkills::Skill.stringify_skill("Stealth", attribute, ac_penalty?)
  end
end
