using { /Fortnite.com/Game }
using { /Fortnite.com/Devices }
using { /Verse.org/Simulation }
using { /UnrealEngine.com/Temporary/Diagnostics }
using { /Fortnite.com/Characters}
spy_pilot_function_device := class(creative_device):

    @editable
    SignalPilot : signal_remote_manager_device = signal_remote_manager_device{}
    @editable
    Timer : timer_device = timer_device{}

    var Players : []player = array{}

    GoInvisible (FortniteCharacter : fort_character) : void =
        FortniteCharacter.Hide()

    GoVisible( FortniteCharacter : fort_character) : void =
        FortniteCharacter.Show()

    HandleSignalEvent(Agent : agent) : void =
        if (FortCharacter := Agent.GetFortCharacter[]):
            Timer.Start(Agent)
            GoInvisible(FortCharacter)

    HandleTimerEvent(MaybeAgent : ?agent) : void =
        if(Agent := MaybeAgent?):
            if (FortCharacter := Agent.GetFortCharacter[]):
                GoVisible(FortCharacter)    
        
    HandlePlayerHit(DamageResult : damage_result): void =

        if (Instigator:= DamageResult.Instigator?, Agent:=Instigator.GetInstigatorAgent[], fortCharacterInstigator :=Agent.GetFortCharacter[]): 
                GoVisible(fortCharacterInstigator)

    OnBegin<override>()<suspends>:void=

        SignalPilot.PrimarySignalEvent.Subscribe(HandleSignalEvent)

        Timer.SuccessEvent.Subscribe(HandleTimerEvent)
        set Players = GetPlayspace().GetPlayers() 
        for(Player : Players, FortCharacter := Player.GetFortCharacter[]):
            FortCharacter.DamagedEvent().Subscribe(HandlePlayerHit)
