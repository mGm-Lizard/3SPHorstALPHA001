/*******************************************************************************
 * DamType_LinkPlasma generated by Eliot.UELib using UE Explorer.
 * Eliot.UELib � 2009-2015 Eliot van Uytfanghe. All rights reserved.
 * http://eliotvu.com
 *
 * All rights belong to their respective owners.
 *******************************************************************************/
class DamType_LinkPlasma extends DamTypeLinkPlasma;

static function IncrementKills(Controller Killer)
{
    class'DamType_LinkShaft'.static.IncrementKills(Killer);
    //return;    
}

defaultproperties
{
     DeathString="%k ???| ?Link Gun ???| %o"
     FemaleSuicide="%o ?Suicide Link Gun"
     MaleSuicide="%o ?Suicide Link Gun"
}
