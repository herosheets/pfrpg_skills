class PfrpgSkills::Skill::Fly
  def description
    'fly'
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
    Skill.stringify_skill("Fly", attribute, ac_penalty?)
  end
end

