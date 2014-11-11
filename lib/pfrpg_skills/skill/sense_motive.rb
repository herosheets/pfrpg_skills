class PfrpgSkills::Skill::SenseMotive
  def description
    'sense_motive'
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
    Skill.stringify_skill("Sense Motive", attribute, ac_penalty?)
  end
end

