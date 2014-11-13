class PfrpgSkills::Skill::EscapeArtist
  def description
    'escape_artist'
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
    PfrpgSkills::Skill.stringify_skill("Escape Artist", attribute, ac_penalty?)
  end
end

