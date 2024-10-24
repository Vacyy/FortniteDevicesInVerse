using { /Verse.org/Verse }
using { /Fortnite.com/Devices }
using { /Verse.org/Simulation }
using { /UnrealEngine.com/Temporary/Diagnostics }
using { /Fortnite.com/Game }
using { /Fortnite.com/Characters }

beast_device := class(creative_device):

    @editable
    spawner : wildlife_spawner_device = wildlife_spawner_device{}
    @editable
    remote : signal_remote_manager_device = signal_remote_manager_device{}
    TeleportSpawnerToPlayer<public>(InPlayer:player, Agent:agent):void =

        if:
            FortCharacter:=InPlayer.GetFortCharacter[]

            Transform:= FortCharacter.GetTransform()
            spawner.TeleportTo[Transform.Translation, Transform.Rotation]
        then:
            spawner.Spawn()
            
    SignalRemotePrimarySignalEvent<public>(Agent:agent):void=     
            if(TargetedPlayer := player[Agent]):
       
                TeleportSpawnerToPlayer(TargetedPlayer, Agent)
    OnBegin<override>()<suspends>:void=

        remote.PrimarySignalEvent.Subscribe(SignalRemotePrimarySignalEvent)
    

