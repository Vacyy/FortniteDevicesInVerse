using { /Verse.org/Verse }
using { /Fortnite.com/Devices }
using { /Verse.org/Simulation }
using { /UnrealEngine.com/Temporary/Diagnostics }
using { /Fortnite.com/Game }
using { /Fortnite.com/Characters }

bomba_device := class(creative_device):

    @editable
    SignalRemoteManager : signal_remote_manager_device = signal_remote_manager_device{}
    @editable
    Bomba : explosive_device = explosive_device{}

    TeleportBombaToPlayerAfterDelay<public>(InPlayer:player, Agent:agent):void =

        if:
            FortCharacter:=InPlayer.GetFortCharacter[]

            Transform:= FortCharacter.GetTransform()
            Bomba.TeleportTo[Transform.Translation, Transform.Rotation]
        then:
            Bomba.Explode(Agent)
            Bomba.Reset()




    OnBegin<override>()<suspends>:void=
        SignalRemoteManager.PrimarySignalEvent.Subscribe(SignalRemotePrimarySignalEvent)

    SignalRemotePrimarySignalEvent<private>(Agent:agent):void=     
            if(TargetedPlayer := player[Agent]):
                TeleportBombaToPlayerAfterDelay(TargetedPlayer, Agent)
