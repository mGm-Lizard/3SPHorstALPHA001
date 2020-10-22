//================================================================================
// Message_Lms.
//================================================================================

class Message_Lms extends LocalMessage;

#exec AUDIO IMPORT FILE=Sounds\last_man_standing.wav GROUP=Sounds

var Sound finishmcsound;

var localized string LmsString;

static simulated function ClientReceive(
    PlayerController P,
    optional int SwitchNum,
    optional PlayerReplicationInfo RelatedPRI_1, 
    optional PlayerReplicationInfo RelatedPRI_2,
    optional Object OptionalObject
    )
{
    Super.ClientReceive(P, SwitchNum, RelatedPRI_1, RelatedPRI_2, OptionalObject);
    
    if(SwitchNum==1)
        P.ClientPlaySound(default.finishmcsound);
}

static function string GetString (optional int Switch, optional PlayerReplicationInfo RelatedPRI_1, optional PlayerReplicationInfo RelatedPRI_2, optional Object OptionalObject)
{

  if ( Switch == 0 )
  {
    return Default.LmsString;
	
  }
}

defaultproperties
{
     finishmcsound=Sound'3SPHorstALPHA001.Sounds.last_man_standing'
     LmsString="Last Man Standing - Do it!!"
     bIsUnique=True
     bFadeMessage=True
     DrawColor=(B=243,G=246,R=165)
     PosY=0.120000
     FontSize=1
}
