using { /Verse.org/Verse }
using { /Fortnite.com/Devices }
using { /Verse.org/Simulation }
using { /UnrealEngine.com/Temporary/Diagnostics }
using { /Fortnite.com/Game }
using { /Fortnite.com/Characters }



healingInBase_device := class(creative_device):

    @editable
    Base : mutator_zone_device = mutator_zone_device{}
    var Players : []player = array{}
    
    OnBegin<override>()<suspends>:void=

        loop:
            set Players = GetPlayspace().GetPlayers()  
            for(Player : Players, FortCharacter := Player.GetFortCharacter[]):
               if(Agent := FortCharacter.GetAgent[]):
                    Leczenie(Agent)
            Sleep(1.0)

    Leczenie(Agent:agent) : void =
        if(Base.IsInVolume[Agent]):
            if(FortCharacter := Agent.GetFortCharacter[]):
                FortCharacter.Heal(10.0)
