class PfrpgSkills::Skill::Heal
  def description
    'heal'
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
    Skill.stringify_skill("Heal", attribute, ac_penalty?)
  end
end
