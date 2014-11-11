class PfrpgSkills::Skill::DisableDevice
  def description
    'disable_device'
  end

  def attribute
    'dex'
  end

  def untrained?
    false
  end

  def ac_penalty?
    true
  end

  def to_s
    Skill.stringify_skill("Disable Device", attribute, ac_penalty?)
  end
end

