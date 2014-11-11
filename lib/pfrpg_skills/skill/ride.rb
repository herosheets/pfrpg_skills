class PfrpgSkills::Skill::Ride
  def description
    'ride'
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
    Skill.stringify_skill("Ride", attribute, ac_penalty?)
  end
end

