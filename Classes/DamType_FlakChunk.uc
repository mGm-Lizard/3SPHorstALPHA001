class DamType_FlakChunk extends DamTypeFlakChunk;
var int AwardLevel;

static function IncrementKills(Controller Killer)
{
	local xPlayerReplicationInfo xPRI;

	xPRI = xPlayerReplicationInfo(Killer.PlayerReplicationInfo);
	if ( xPRI != None )
	{
		xPRI.flakcount++;
		if ( (xPRI.flakcount == Default.AwardLevel) && (Misc_Player(Killer) != None) )
			Misc_Player(Killer).BroadcastAnnouncement(Class'Message_FlakMan');
	}
}

defaultproperties
{
     AwardLevel=7
     DeathString="%k ???| ??Flak Cannon ???| %o"
     FemaleSuicide="%o ??Suicide Flak Cannon"
     MaleSuicide="%o ??Suicide Flak Cannon"
}
