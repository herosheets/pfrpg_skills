class PfrpgSkills::Skill::Profession
  def initialize(subject='Butcher')
    @subject = subject
  end

  def bonus_str
    "profession-#{@subject}"
  end

  def description
    "profession : #{@subject}"
  end

  def attribute
    'wis'
  end

  def untrained?
    false
  end

  def ac_penalty?
    false
  end

  def to_s
    PfrpgSkills::Skill.stringify_skill("Profession - #{@subject}", attribute, ac_penalty?)
  end

  def supported_types
    [
      'Architect',
      'Baker',
      'Barrister',
      'Brewer',
      'Butcher',
      'Clerk',
      'Cook',
      'Courtesan',
      'Driver',
      'Engineer',
      'Farmer',
      'Fisherman',
      'Gambler',
      'Gardener',
      'Herbalist',
      'Innkeeper',
      'Librarian',
      'Merchant',
      'Midwife',
      'Miller',
      'Miner',
      'Porter',
      'Sailor',
      'Scribe',
      'Shepherd',
      'Stable master',
      'Soldier',
      'Tanner',
      'Trapper',
      'Woodcutter',
    ]
  end

  def subtype
    @subject
  end
end
