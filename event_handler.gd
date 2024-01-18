extends Node
#partyInfo should be the players party, as well as the Enemy party info. We should use both parties to set up combat.
signal battle_started(partyInfo, enemyPartyInfo, IsPartyPriority)
signal battle_ended(partyInfo, enemyPartyInfo)
	
