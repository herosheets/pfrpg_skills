class PfrpgSkills::Skill::Linguistics
  def description
    'linguistics'
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
    Skill.stringify_skill("Linguistics", attribute, ac_penalty?)
  end
end

