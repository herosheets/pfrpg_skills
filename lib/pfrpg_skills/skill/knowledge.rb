class PfrpgSkills::Skill::Knowledge

  def initialize(subject)
    @subject = subject
  end

  def bonus_str
    "knowledge-#{@subject}"
  end

  def description
    "knowledge : #{@subject}"
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
    Skill.stringify_skill("Knowledge - #{@subject}", attribute, ac_penalty?)
  end

  def supported_types
    [ 'Arcana',
      'Dungeoneering',
      'Engineering',
      'Geography',
      'History',
      'Local',
      'Nature',
      'Nobility',
      'Planes',
      'Religion'
    ]
  end

  def subtype
    @subject
  end
end
