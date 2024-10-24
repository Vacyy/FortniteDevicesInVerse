
using { /Verse.org/Verse }
using { /Fortnite.com/Devices }
using { /Verse.org/Simulation }
using { /Verse.org/Colors }
using { /Verse.org/Random}
using { /UnrealEngine.com/Temporary/Diagnostics }

#for ui messages

using { /UnrealEngine.com/Temporary/UI }
using { /Fortnite.com/UI }
using { /UnrealEngine.com/Temporary/SpatialMath}


celebrity_tycoon_main_device := class(creative_device):
        @editable var OdnisienieDoGracza : player_reference_device = player_reference_device{}
        #ui z goldem
        @editable var BillboardKaska : billboard_device = billboard_device{}
        @editable var TriggerCashOut : trigger_device = trigger_device{}
        #buying first dropper
        @editable var TriggerBuyFirstDropper : trigger_device = trigger_device{}
        @editable var PropManipulatorFirstDropper : prop_manipulator_device = prop_manipulator_device{}
        @editable var FirstDroppedThing : cinematic_sequence_device = cinematic_sequence_device{}
        #buying second dropper
        @editable var TriggerBuy2ndDropper : trigger_device = trigger_device{}
        @editable var PropManipulator2ndDropper : prop_manipulator_device = prop_manipulator_device{}
        @editable var Dropped2ndThing : cinematic_sequence_device = cinematic_sequence_device{}
        #buying third dropper
        @editable var TriggerBuy3rdDropper : trigger_device = trigger_device{}
        @editable var PropManipulator3rdDropper : prop_manipulator_device = prop_manipulator_device{}
        @editable var Dropped3rdThing : cinematic_sequence_device = cinematic_sequence_device{}
        #buying 4th dropper
        @editable var TriggerBuy4thDropper : trigger_device = trigger_device{}
        @editable var PropManipulator4thDropper : prop_manipulator_device = prop_manipulator_device{}
        @editable var Dropped4thThing : cinematic_sequence_device = cinematic_sequence_device{}
        @editable var GoldPerToy: int = 5
        #przy kamerce followki
        @editable var KamerkaMutatorZone : mutator_zone_device = mutator_zone_device{}
        @editable var ZegarekOdKamerki : timer_device = timer_device{}
        #dzwieki wiadomosci
        @editable var ConfirmSound : audio_player_device = audio_player_device{}
        @editable var ErrorSound : audio_player_device = audio_player_device{}
        @editable var HudConfirmMessage : hud_message_device = hud_message_device{}
        @editable var HudErrorMessage : hud_message_device = hud_message_device{}
        #Selfie
        @editable var SignalMenager : signal_remote_manager_device = signal_remote_manager_device{}
        @editable var HudSelfieMessage : hud_message_device = hud_message_device{}
        @editable var ProcentFollow : float = 0.05
        ###########################################################################################
        #####################             KUPOWANE PRZEDMIOTY             #########################
        ###########################################################################################
        @editable var TriggerUnlock1 : trigger_device = trigger_device{}
        @editable var PropManipulatorUnlock1 : prop_manipulator_device = prop_manipulator_device{}
        @editable var ButtonHiderUnlock1 : prop_manipulator_device = prop_manipulator_device{}
        @editable var MoneyToUnlock1 : int = 4
        @editable var TriggerUnlock2 : trigger_device = trigger_device{}
        @editable var PropManipulatorUnlock2 : prop_manipulator_device = prop_manipulator_device{}
        @editable var ButtonHiderUnlock2 : prop_manipulator_device = prop_manipulator_device{}
        @editable var MoneyToUnlock2 : int = 4
        @editable var TriggerUnlock3 : trigger_device = trigger_device{}
        @editable var PropManipulatorUnlock3 : prop_manipulator_device = prop_manipulator_device{}
        @editable var ButtonHiderUnlock3 : prop_manipulator_device = prop_manipulator_device{}
        @editable var MoneyToUnlock3 : int = 4
        @editable var TriggerUnlock4 : trigger_device = trigger_device{}
        @editable var PropManipulatorUnlock4 : prop_manipulator_device = prop_manipulator_device{}
        @editable var ButtonHiderUnlock4 : prop_manipulator_device = prop_manipulator_device{}
        @editable var MoneyToUnlock4 : int = 4
        @editable var TriggerUnlock5 : trigger_device = trigger_device{}
        @editable var PropManipulatorUnlock5 : prop_manipulator_device = prop_manipulator_device{}
        @editable var ButtonHiderUnlock5 : prop_manipulator_device = prop_manipulator_device{}
        @editable var MoneyToUnlock5 : int = 4
        @editable var TriggerUnlock6 : trigger_device = trigger_device{}
        @editable var PropManipulatorUnlock6 : prop_manipulator_device = prop_manipulator_device{}
        @editable var ButtonHiderUnlock6 : prop_manipulator_device = prop_manipulator_device{}
        @editable var MoneyToUnlock6 : int = 4
        @editable var TriggerUnlock7 : trigger_device = trigger_device{}
        @editable var PropManipulatorUnlock7 : prop_manipulator_device = prop_manipulator_device{}
        @editable var ButtonHiderUnlock7 : prop_manipulator_device = prop_manipulator_device{}
        @editable var MoneyToUnlock7 : int = 4
        @editable var TriggerUnlock8 : trigger_device = trigger_device{}
        @editable var PropManipulatorUnlock8 : prop_manipulator_device = prop_manipulator_device{}
        @editable var ButtonHiderUnlock8 : prop_manipulator_device = prop_manipulator_device{}
        @editable var MoneyToUnlock8 : int = 4
        @editable var TriggerUnlock9 : trigger_device = trigger_device{}
        @editable var PropManipulatorUnlock9 : prop_manipulator_device = prop_manipulator_device{}
        @editable var ButtonHiderUnlock9 : prop_manipulator_device = prop_manipulator_device{}
        @editable var MoneyToUnlock9 : int = 4
        @editable var TriggerUnlock10 : trigger_device = trigger_device{}
        @editable var PropManipulatorUnlock10 : prop_manipulator_device = prop_manipulator_device{}
        @editable var ButtonHiderUnlock10 : prop_manipulator_device = prop_manipulator_device{}
        @editable var MoneyToUnlock10 : int = 4
        @editable var TriggerUnlock11 : trigger_device = trigger_device{}
        @editable var PropManipulatorUnlock11 : prop_manipulator_device = prop_manipulator_device{}
        @editable var ButtonHiderUnlock11 : prop_manipulator_device = prop_manipulator_device{}
        @editable var MoneyToUnlock11 : int = 4
        @editable var TriggerUnlock12 : trigger_device = trigger_device{}
        @editable var PropManipulatorUnlock12 : prop_manipulator_device = prop_manipulator_device{}
        @editable var ButtonHiderUnlock12 : prop_manipulator_device = prop_manipulator_device{}
        @editable var MoneyToUnlock12 : int = 4
        @editable var TriggerUnlock13 : trigger_device = trigger_device{}
        @editable var PropManipulatorUnlock13 : prop_manipulator_device = prop_manipulator_device{}
        @editable var ButtonHiderUnlock13 : prop_manipulator_device = prop_manipulator_device{}
        @editable var MoneyToUnlock13 : int = 4
        @editable var TriggerUnlock14 : trigger_device = trigger_device{}
        @editable var PropManipulatorUnlock14 : prop_manipulator_device = prop_manipulator_device{}
        @editable var ButtonHiderUnlock14 : prop_manipulator_device = prop_manipulator_device{}
        @editable var MoneyToUnlock14 : int = 4
        @editable var TriggerUnlock15 : trigger_device = trigger_device{}
        @editable var PropManipulatorUnlock15 : prop_manipulator_device = prop_manipulator_device{}
        @editable var ButtonHiderUnlock15 : prop_manipulator_device = prop_manipulator_device{}
        @editable var MoneyToUnlock15 : int = 4
        @editable var TriggerUnlock16 : trigger_device = trigger_device{}
        @editable var PropManipulatorUnlock16 : prop_manipulator_device = prop_manipulator_device{}
        @editable var ButtonHiderUnlock16 : prop_manipulator_device = prop_manipulator_device{}
        @editable var MoneyToUnlock16 : int = 4
        @editable var TriggerUnlock17 : trigger_device = trigger_device{}
        @editable var PropManipulatorUnlock17 : prop_manipulator_device = prop_manipulator_device{}
        @editable var ButtonHiderUnlock17 : prop_manipulator_device = prop_manipulator_device{}
        @editable var MoneyToUnlock17 : int = 4
        @editable var TriggerUnlock18 : trigger_device = trigger_device{}
        @editable var PropManipulatorUnlock18 : prop_manipulator_device = prop_manipulator_device{}
        @editable var ButtonHiderUnlock18 : prop_manipulator_device = prop_manipulator_device{}
        @editable var MoneyToUnlock18 : int = 4
        @editable var TriggerUnlock19 : trigger_device = trigger_device{}
        @editable var PropManipulatorUnlock19 : prop_manipulator_device = prop_manipulator_device{}
        @editable var ButtonHiderUnlock19 : prop_manipulator_device = prop_manipulator_device{}
        @editable var MoneyToUnlock19 : int = 4
        @editable var TriggerUnlock20 : trigger_device = trigger_device{}
        @editable var PropManipulatorUnlock20 : prop_manipulator_device = prop_manipulator_device{}
        @editable var ButtonHiderUnlock20 : prop_manipulator_device = prop_manipulator_device{}
        @editable var MoneyToUnlock20 : int = 4
        @editable var TriggerUnlock21 : trigger_device = trigger_device{}
        @editable var PropManipulatorUnlock21 : prop_manipulator_device = prop_manipulator_device{}
        @editable var ButtonHiderUnlock21 : prop_manipulator_device = prop_manipulator_device{}
        @editable var MoneyToUnlock21 : int = 4
        @editable var TriggerUnlock22 : trigger_device = trigger_device{}
        @editable var PropManipulatorUnlock22 : prop_manipulator_device = prop_manipulator_device{}
        @editable var ButtonHiderUnlock22 : prop_manipulator_device = prop_manipulator_device{}
        @editable var MoneyToUnlock22 : int = 4
        @editable var TriggerUnlock23 : trigger_device = trigger_device{}
        @editable var PropManipulatorUnlock23 : prop_manipulator_device = prop_manipulator_device{}
        @editable var ButtonHiderUnlock23 : prop_manipulator_device = prop_manipulator_device{}
        @editable var MoneyToUnlock23 : int = 4
        @editable var TriggerUnlock24 : trigger_device = trigger_device{}
        @editable var PropManipulatorUnlock24 : prop_manipulator_device = prop_manipulator_device{}
        @editable var ButtonHiderUnlock24 : prop_manipulator_device = prop_manipulator_device{}
        @editable var MoneyToUnlock24 : int = 4
        @editable var TriggerUnlock25 : trigger_device = trigger_device{}
        @editable var PropManipulatorUnlock25 : prop_manipulator_device = prop_manipulator_device{}
        @editable var ButtonHiderUnlock25 : prop_manipulator_device = prop_manipulator_device{}
        @editable var MoneyToUnlock25 : int = 4
        @editable var TriggerUnlock26 : trigger_device = trigger_device{}
        @editable var PropManipulatorUnlock26 : prop_manipulator_device = prop_manipulator_device{}
        @editable var ButtonHiderUnlock26 : prop_manipulator_device = prop_manipulator_device{}
        @editable var MoneyToUnlock26 : int = 4
        @editable var TriggerUnlock27 : trigger_device = trigger_device{}
        @editable var PropManipulatorUnlock27 : prop_manipulator_device = prop_manipulator_device{}
        @editable var ButtonHiderUnlock27 : prop_manipulator_device = prop_manipulator_device{}
        @editable var MoneyToUnlock27 : int = 4
        @editable var TriggerUnlock28 : trigger_device = trigger_device{}
        @editable var PropManipulatorUnlock28 : prop_manipulator_device = prop_manipulator_device{}
        @editable var ButtonHiderUnlock28 : prop_manipulator_device = prop_manipulator_device{}
        @editable var MoneyToUnlock28 : int = 4
        @editable var TriggerUnlock29 : trigger_device = trigger_device{}
        @editable var PropManipulatorUnlock29 : prop_manipulator_device = prop_manipulator_device{}
        @editable var ButtonHiderUnlock29 : prop_manipulator_device = prop_manipulator_device{}
        @editable var MoneyToUnlock29 : int = 4
        @editable var TriggerUnlock30 : trigger_device = trigger_device{}
        @editable var PropManipulatorUnlock30 : prop_manipulator_device = prop_manipulator_device{}
        @editable var ButtonHiderUnlock30 : prop_manipulator_device = prop_manipulator_device{}
        @editable var MoneyToUnlock30 : int = 4
        @editable var TriggerUnlock31 : trigger_device = trigger_device{}
        @editable var PropManipulatorUnlock31 : prop_manipulator_device = prop_manipulator_device{}
        @editable var ButtonHiderUnlock31 : prop_manipulator_device = prop_manipulator_device{}
        @editable var MoneyToUnlock31 : int = 4
        @editable var TriggerUnlock32 : trigger_device = trigger_device{}
        @editable var PropManipulatorUnlock32 : prop_manipulator_device = prop_manipulator_device{}
        @editable var ButtonHiderUnlock32 : prop_manipulator_device = prop_manipulator_device{}
        @editable var MoneyToUnlock32 : int = 4
        @editable var TriggerUnlock33 : trigger_device = trigger_device{}
        @editable var PropManipulatorUnlock33 : prop_manipulator_device = prop_manipulator_device{}
        @editable var ButtonHiderUnlock33 : prop_manipulator_device = prop_manipulator_device{}
        @editable var MoneyToUnlock33 : int = 4
        @editable var TriggerUnlock34 : trigger_device = trigger_device{}
        @editable var PropManipulatorUnlock34 : prop_manipulator_device = prop_manipulator_device{}
        @editable var ButtonHiderUnlock34 : prop_manipulator_device = prop_manipulator_device{}
        @editable var MoneyToUnlock34 : int = 4
        @editable var TriggerUnlock35 : trigger_device = trigger_device{}
        @editable var PropManipulatorUnlock35 : prop_manipulator_device = prop_manipulator_device{}
        @editable var ButtonHiderUnlock35 : prop_manipulator_device = prop_manipulator_device{}
        @editable var MoneyToUnlock35 : int = 4
        @editable var TriggerUnlock36 : trigger_device = trigger_device{}
        @editable var PropManipulatorUnlock36 : prop_manipulator_device = prop_manipulator_device{}
        @editable var ButtonHiderUnlock36 : prop_manipulator_device = prop_manipulator_device{}
        @editable var MoneyToUnlock36 : int = 4
        @editable var TriggerUnlock37 : trigger_device = trigger_device{}
        @editable var PropManipulatorUnlock37 : prop_manipulator_device = prop_manipulator_device{}
        @editable var ButtonHiderUnlock37 : prop_manipulator_device = prop_manipulator_device{}
        @editable var MoneyToUnlock37 : int = 4
        @editable var TriggerUnlock38 : trigger_device = trigger_device{}
        @editable var PropManipulatorUnlock38 : prop_manipulator_device = prop_manipulator_device{}
        @editable var ButtonHiderUnlock38 : prop_manipulator_device = prop_manipulator_device{}
        @editable var MoneyToUnlock38 : int = 4
        @editable var TriggerUnlock39 : trigger_device = trigger_device{}
        @editable var PropManipulatorUnlock39 : prop_manipulator_device = prop_manipulator_device{}
        @editable var ButtonHiderUnlock39 : prop_manipulator_device = prop_manipulator_device{}
        @editable var MoneyToUnlock39 : int = 4
        @editable var TriggerUnlock40 : trigger_device = trigger_device{}
        @editable var PropManipulatorUnlock40 : prop_manipulator_device = prop_manipulator_device{}
        @editable var ButtonHiderUnlock40 : prop_manipulator_device = prop_manipulator_device{}
        @editable var MoneyToUnlock40 : int = 4
        @editable var TriggerUnlock41 : trigger_device = trigger_device{}
        @editable var PropManipulatorUnlock41 : prop_manipulator_device = prop_manipulator_device{}
        @editable var ButtonHiderUnlock41 : prop_manipulator_device = prop_manipulator_device{}
        @editable var MoneyToUnlock41 : int = 4
        @editable var TriggerUnlock42 : trigger_device = trigger_device{}
        @editable var PropManipulatorUnlock42 : prop_manipulator_device = prop_manipulator_device{}
        @editable var ButtonHiderUnlock42 : prop_manipulator_device = prop_manipulator_device{}
        @editable var MoneyToUnlock42 : int = 4

    var FollowersPerSecond : int =1
    var ZegarekAlreadyStarted : logic = false
    var MaybeMyUIPerPlayer : [player]?canvas = map{}
    var bank : int= 0 
    var PlayerGold: int = 0
    var PlayerFollowers:int = 0
    var MoneyPerSecond: int =0
    #first dropper
    var MaybeTriggerBuyFirstDropperActivated : logic = false
    var MaybeTriggerBuy2ndDropperActivated : logic = false
    var MaybeTriggerBuy3rdDropperActivated : logic = false
    var MaybeTriggerBuy4thDropperActivated : logic = false
    var ToysUnlocked : int = 0
    
    #bilbordy
    BankStatus<localizes>(ileGolda : int) : message = "$ {ileGolda}"
    GoldInUIText<localizes>(ileMamGolda:int) : message = "Money: $ {ileMamGolda}"
    FollowersInUIText<localizes>(ileMamfollow:int) : message = "Followers: {ileMamfollow}"
    GoldPerSecText<localizes>(ileMamGoldaNaSekunde:int) : message = "$ {ileMamGoldaNaSekunde} /s"
    FollowersPerSecText<localizes>(followperS:int) : message = "{followperS} /s"
    SelfieTakenText<localizes>(SelfieAmount:int) : message = " SELFIE! You've gained {SelfieAmount} followers!"
    OnBegin<override>()<suspends>:void=
        
        loop:
            
            var MaybeGracz : ?agent = GetMotherAgent()
            TriggerBuyFirstDropper.TriggeredEvent.Subscribe(HandleTriggerBuyFirstDropperActivation)
            if(Gracz : agent = MaybeGracz?):
                HandleTriggerInteractionToUI(Gracz)
            TriggerBuy2ndDropper.TriggeredEvent.Subscribe(HandleTriggerBuy2ndDropperActivation)
            TriggerBuy3rdDropper.TriggeredEvent.Subscribe(HandleTriggerBuy3rdDropperActivation)
            TriggerBuy4thDropper.TriggeredEvent.Subscribe(HandleTriggerBuy4thDropperActivation)
            TriggerCashOut.TriggeredEvent.Subscribe(HandleTriggerCashOut)
            set bank = MoneyGenerator(bank, ToysUnlocked, GoldPerToy)
            PlushiesAnimations()
            KamerkaMutatorZone.AgentBeginsEmotingEvent.Subscribe(FollowersClockStart)
            KamerkaMutatorZone.AgentEndsEmotingEvent.Subscribe(FollowersClockStop)
            ZegarekOdKamerki.SuccessEvent.Subscribe(HandleZegarekOdKamerkiSuccess)
            if(Gracz : agent = MaybeGracz?):
                FollowersIncreased(Gracz, PlayerFollowers, FollowersPerSecond)
            SignalMenager.PrimarySignalEvent.Subscribe(SelfieTaken)
            #####################################################
            TriggerUnlock1.TriggeredEvent.Subscribe(Unlock1)
            TriggerUnlock2.TriggeredEvent.Subscribe(Unlock2)
            TriggerUnlock3.TriggeredEvent.Subscribe(Unlock3)
            TriggerUnlock4.TriggeredEvent.Subscribe(Unlock4)
            TriggerUnlock5.TriggeredEvent.Subscribe(Unlock5)
            TriggerUnlock6.TriggeredEvent.Subscribe(Unlock6)
            TriggerUnlock7.TriggeredEvent.Subscribe(Unlock7)
            TriggerUnlock8.TriggeredEvent.Subscribe(Unlock8)
            TriggerUnlock9.TriggeredEvent.Subscribe(Unlock9) #### budynki drugie piętro
            TriggerUnlock10.TriggeredEvent.Subscribe(Unlock10)
            TriggerUnlock11.TriggeredEvent.Subscribe(Unlock11)
            TriggerUnlock12.TriggeredEvent.Subscribe(Unlock12)
            TriggerUnlock13.TriggeredEvent.Subscribe(Unlock13)
            TriggerUnlock14.TriggeredEvent.Subscribe(Unlock14)
            TriggerUnlock15.TriggeredEvent.Subscribe(Unlock15)
            TriggerUnlock16.TriggeredEvent.Subscribe(Unlock16)
            TriggerUnlock17.TriggeredEvent.Subscribe(Unlock17)
            TriggerUnlock18.TriggeredEvent.Subscribe(Unlock18)
            TriggerUnlock19.TriggeredEvent.Subscribe(Unlock19)
            TriggerUnlock20.TriggeredEvent.Subscribe(Unlock20)
            TriggerUnlock21.TriggeredEvent.Subscribe(Unlock21)
            TriggerUnlock22.TriggeredEvent.Subscribe(Unlock22)
            TriggerUnlock23.TriggeredEvent.Subscribe(Unlock23)
            TriggerUnlock24.TriggeredEvent.Subscribe(Unlock24)
            TriggerUnlock25.TriggeredEvent.Subscribe(Unlock25)
            TriggerUnlock26.TriggeredEvent.Subscribe(Unlock26) #### anteny
            TriggerUnlock27.TriggeredEvent.Subscribe(Unlock27)
            TriggerUnlock28.TriggeredEvent.Subscribe(Unlock28)
            TriggerUnlock29.TriggeredEvent.Subscribe(Unlock29)
            TriggerUnlock30.TriggeredEvent.Subscribe(Unlock30) ##### Puchar
            TriggerUnlock31.TriggeredEvent.Subscribe(Unlock31)
            TriggerUnlock32.TriggeredEvent.Subscribe(Unlock32)
            TriggerUnlock33.TriggeredEvent.Subscribe(Unlock33)
            TriggerUnlock34.TriggeredEvent.Subscribe(Unlock34)
            TriggerUnlock35.TriggeredEvent.Subscribe(Unlock35)
            TriggerUnlock36.TriggeredEvent.Subscribe(Unlock36)
            TriggerUnlock37.TriggeredEvent.Subscribe(Unlock37)
            TriggerUnlock38.TriggeredEvent.Subscribe(Unlock38)
            TriggerUnlock39.TriggeredEvent.Subscribe(Unlock39)
            TriggerUnlock40.TriggeredEvent.Subscribe(Unlock40)
            TriggerUnlock41.TriggeredEvent.Subscribe(Unlock41)
            TriggerUnlock42.TriggeredEvent.Subscribe(Unlock42)
            #####################################################
            Sleep(1.0)
            
            
    GetMotherAgent() : ?agent =
        var MaybeIGotAgent: ?agent = OdnisienieDoGracza.GetAgent()
        return MaybeIGotAgent

    MoneyGenerator<public>(kaskawbanku: int, ZabawkiQ:int, ToyPrice:int) : int =
        var money : int= 0
        set money = (ZabawkiQ * ToyPrice) + kaskawbanku
        set MoneyPerSecond =ZabawkiQ * ToyPrice
        BillboardKaska.SetText(BankStatus(money))
        return money
        
    HandleTriggerBuyFirstDropperActivation(MaybeAgent : ?agent) :void =

        if (Agent := MaybeAgent?):
            set MaybeTriggerBuyFirstDropperActivated = true
            set ToysUnlocked = 1
            TriggerBuyFirstDropper.Disable()
            ConfirmSound.Play(Agent)
            HudConfirmMessage.Show(Agent)

    HandleTriggerBuy2ndDropperActivation(MaybeAgent : ?agent) : void =

        if (Agent := MaybeAgent?):
            if(PlayerGold >= 20):
                
                set PlayerGold = PlayerGold-20
                set MaybeTriggerBuy2ndDropperActivated = true
                HandleTriggerInteractionToUI(Agent)
                set ToysUnlocked = 2
                TriggerBuy2ndDropper.Disable()
                ConfirmSound.Play(Agent)
                HudConfirmMessage.Show(Agent)
            else:
                ErrorSound.Play(Agent)
                HudErrorMessage.Show(Agent)    
    HandleTriggerBuy3rdDropperActivation(MaybeAgent : ?agent) : void =

        if (Agent := MaybeAgent?):
            if(PlayerGold >=100):
                set PlayerGold = PlayerGold-100
                set MaybeTriggerBuy3rdDropperActivated = true
                HandleTriggerInteractionToUI(Agent)
                set ToysUnlocked = 3
                TriggerBuy3rdDropper.Disable()
                ConfirmSound.Play(Agent)
                HudConfirmMessage.Show(Agent)
            else:
                ErrorSound.Play(Agent)
                HudErrorMessage.Show(Agent)

    HandleTriggerBuy4thDropperActivation(MaybeAgent : ?agent) : void =

        if (Agent := MaybeAgent?):
            if(PlayerGold >= 200):
                set PlayerGold = PlayerGold-200
                set MaybeTriggerBuy4thDropperActivated = true
                HandleTriggerInteractionToUI(Agent)   
                set ToysUnlocked = 4 
                TriggerBuy4thDropper.Disable()
                ConfirmSound.Play(Agent)
                HudConfirmMessage.Show(Agent)
            else:
                ErrorSound.Play(Agent)
                HudErrorMessage.Show(Agent)            
    
    
    HandleTriggerCashOut(MaybeAgent : ?agent) : void =
        if(Agent:=MaybeAgent?):
            CashOut(Agent)

    CashOut(Agent : agent) :void =

        set PlayerGold = PlayerGold + bank
        set bank = 0
        BillboardKaska.SetText(BankStatus(bank))
        HandleTriggerInteractionToUI(Agent)

    PlushiesAnimations():void =
        
        if(MaybeTriggerBuyFirstDropperActivated = true):



            if(MaybeTriggerBuy2ndDropperActivated = true):


                if(MaybeTriggerBuy3rdDropperActivated = true):



                    if(MaybeTriggerBuy4thDropperActivated = true):
                        Dropped4thThing.Play()
                    else:
                        Dropped3rdThing.Play()
                else:
                    Dropped2ndThing.Play()
            else:
                FirstDroppedThing.Play()
    
    FollowersClockStart(Agent: agent): void =
        if(ZegarekAlreadyStarted?):
            ZegarekOdKamerki.Resume(Agent)
        else:
            ZegarekOdKamerki.Start(Agent)
            set ZegarekAlreadyStarted = true
        
        
    FollowersClockStop(Agent: agent) : void =

        ZegarekOdKamerki.Pause(Agent)
            
    HandleZegarekOdKamerkiSuccess(MaybeAgent: ?agent) : void =
        if (Agent := MaybeAgent?):
            set FollowersPerSecond = FollowersUpgrade(Agent, FollowersPerSecond)

    FollowersUpgrade(Agent: agent, FPS : int) : int =
        var FollowersPS :int = FPS +1
        return FollowersPS
    FollowersIncreased <public> (Agent: agent, Followers :int, FPS : int) : void =
        set PlayerFollowers= Followers + FollowersPerSecond
        HandleTriggerInteractionToUI(Agent)

    SelfieTaken (Agent : agent) : void =
        var fNewFollowers : float = PlayerFollowers * ProcentFollow
        var NewFollowers : int =  Int[fNewFollowers] or 0
        HudSelfieMessage.SetText(SelfieTakenText(NewFollowers))
        HudSelfieMessage.Show(Agent)
        set PlayerFollowers = PlayerFollowers + NewFollowers

    HandleTriggerInteractionToUI(Agent : agent) : void =
        
        if (InPlayer := player[Agent], PlayerUI := GetPlayerUI[InPlayer]):
            if (MyUI := MaybeMyUIPerPlayer[InPlayer]?):
                PlayerUI.RemoveWidget(MyUI)
                NewUI := CreateMyGoldUI()
                PlayerUI.AddWidget(NewUI)
                if (set MaybeMyUIPerPlayer[InPlayer] = option{NewUI})  {}
            else:
                NewUI := CreateMyGoldUI()
                PlayerUI.AddWidget(NewUI)
                if (set MaybeMyUIPerPlayer[InPlayer] = option{NewUI}) {}

    CreateWidgetFollowers(): text_block =

        TextWidget := text_block:
            DefaultText := FollowersInUIText(PlayerFollowers)
            DefaultTextColor := NamedColors.Magenta
            DefaultShadowColor := NamedColors.Black
            DefaultShadowOffset:= option{vector2{ X:= 1.0 , Y := 1.0}}
        TextWidget.SetShadowOpacity(1.0)
        return TextWidget

    CreateWidgetFollowersPerSecond(): text_block =

        TextWidget := text_block:
            DefaultText := FollowersPerSecText(FollowersPerSecond)
            DefaultTextColor := NamedColors.Magenta
            DefaultShadowColor := NamedColors.Black
            DefaultShadowOffset:= option{vector2{ X:= 1.0 , Y := 1.0}}
        TextWidget.SetShadowOpacity(1.0)
        return TextWidget

    CreateWidgetGold(): text_block =

        TextWidget := text_block:
            DefaultText := GoldInUIText(PlayerGold)
            DefaultTextColor := NamedColors.SpringGreen
            DefaultShadowColor := NamedColors.Black
            DefaultShadowOffset:= option{vector2{ X:= 1.0 , Y := 1.0}}
        TextWidget.SetShadowOpacity(1.0)
        return TextWidget

    CreateWidgetGoldPerSecond(): text_block =

        TextWidget := text_block:
            DefaultText := GoldPerSecText(MoneyPerSecond)
            DefaultTextColor := NamedColors.SpringGreen
            DefaultShadowColor := NamedColors.Black
            DefaultShadowOffset:= option{vector2{ X:= 1.0 , Y := 1.0}}
        TextWidget.SetShadowOpacity(1.0)
        return TextWidget


    CreateMyGoldUI() : canvas =
        MyCanvas : canvas = canvas:
            Slots := array:
                            
                canvas_slot:
                    Anchors := anchors{ Minimum := vector2{X := 0.03, Y := 0.6}, Maximum := vector2{X := 0.03, Y := 0.6}}
                    Offsets := margin{Top := 0.0, Left := 0.0, Right := 0.0, Bottom := 0.0}
                    Alignment := vector2{X := 0.0, Y := 0.5}
                    SizeToContent := true
                    Widget := CreateWidgetGold()
                canvas_slot:
                    Anchors := anchors{ Minimum := vector2{X := 0.03, Y := 0.65}, Maximum := vector2{X := 0.03, Y := 0.65}}
                    Offsets := margin{Top := 0.0, Left := 0.0, Right := 0.0, Bottom := 0.0}
                    Alignment := vector2{X := 0.0, Y := 0.5}
                    SizeToContent := true     
                    Widget := CreateWidgetGoldPerSecond()
                canvas_slot:
                    Anchors := anchors{ Minimum := vector2{X := 0.03, Y := 0.7}, Maximum := vector2{X := 0.03, Y := 0.7}}
                    Offsets := margin{Top := 0.0, Left := 0.0, Right := 0.0, Bottom := 0.0}
                    Alignment := vector2{X := 0.0, Y := 0.5}
                    SizeToContent := true
                    Widget := CreateWidgetFollowers()
                canvas_slot:
                    Anchors := anchors{ Minimum := vector2{X := 0.03, Y := 0.75}, Maximum := vector2{X := 0.03, Y := 0.75}}
                    Offsets := margin{Top := 0.0, Left := 0.0, Right := 0.0, Bottom := 0.0}
                    Alignment := vector2{X := 0.0, Y := 0.5}
                    SizeToContent := true
                    Widget := CreateWidgetFollowersPerSecond()    
        return MyCanvas               
    

fun Unlock(MaybeAgent: ?agent, unlockNumber: int, moneyToUnlock: int, propManipulator: function(), buttonHider: function(), triggerUnlock: function()) : void =
    if (Agent := MaybeAgent?):
        if (PlayerGold >= moneyToUnlock):
            set PlayerGold = PlayerGold - moneyToUnlock
            triggerUnlock.Disable()
            HandleTriggerInteractionToUI(Agent)
            ConfirmSound.Play(Agent)
            HudConfirmMessage.Show(Agent)
            propManipulator.ShowProps()
            buttonHider.HideProps()
        else:
            ErrorSound.Play(Agent)
            HudErrorMessage.Show(Agent)
			
Unlock(MaybeAgent, 1, MoneyToUnlock1, PropManipulatorUnlock1, ButtonHiderUnlock1, TriggerUnlock1)
Unlock(MaybeAgent, 2, MoneyToUnlock2, PropManipulatorUnlock2, ButtonHiderUnlock2, TriggerUnlock2)
Unlock(MaybeAgent, 3, MoneyToUnlock3, PropManipulatorUnlock3, ButtonHiderUnlock3, TriggerUnlock3)
Unlock(MaybeAgent, 4, MoneyToUnlock4, PropManipulatorUnlock4, ButtonHiderUnlock4, TriggerUnlock4)
Unlock(MaybeAgent, 5, MoneyToUnlock5, PropManipulatorUnlock5, ButtonHiderUnlock5, TriggerUnlock5)
Unlock(MaybeAgent, 6, MoneyToUnlock6, PropManipulatorUnlock6, ButtonHiderUnlock6, TriggerUnlock6)
Unlock(MaybeAgent, 7, MoneyToUnlock7, PropManipulatorUnlock7, ButtonHiderUnlock7, TriggerUnlock7)
Unlock(MaybeAgent, 8, MoneyToUnlock8, PropManipulatorUnlock8, ButtonHiderUnlock8, TriggerUnlock8)
Unlock(MaybeAgent, 9, MoneyToUnlock9, PropManipulatorUnlock9, ButtonHiderUnlock9, TriggerUnlock9)
Unlock(MaybeAgent, 10, MoneyToUnlock10, PropManipulatorUnlock10, ButtonHiderUnlock10, TriggerUnlock10)
Unlock(MaybeAgent, 11, MoneyToUnlock11, PropManipulatorUnlock11, ButtonHiderUnlock11, TriggerUnlock11)
Unlock(MaybeAgent, 12, MoneyToUnlock12, PropManipulatorUnlock12, ButtonHiderUnlock12, TriggerUnlock12)
Unlock(MaybeAgent, 13, MoneyToUnlock13, PropManipulatorUnlock13, ButtonHiderUnlock13, TriggerUnlock13)
Unlock(MaybeAgent, 14, MoneyToUnlock14, PropManipulatorUnlock14, ButtonHiderUnlock14, TriggerUnlock14)
Unlock(MaybeAgent, 15, MoneyToUnlock15, PropManipulatorUnlock15, ButtonHiderUnlock15, TriggerUnlock15)
Unlock(MaybeAgent, 16, MoneyToUnlock16, PropManipulatorUnlock16, ButtonHiderUnlock16, TriggerUnlock16)
Unlock(MaybeAgent, 17, MoneyToUnlock17, PropManipulatorUnlock17, ButtonHiderUnlock17, TriggerUnlock17)
Unlock(MaybeAgent, 18, MoneyToUnlock18, PropManipulatorUnlock18, ButtonHiderUnlock18, TriggerUnlock18)
Unlock(MaybeAgent, 19, MoneyToUnlock19, PropManipulatorUnlock19, ButtonHiderUnlock19, TriggerUnlock19)
Unlock(MaybeAgent, 20, MoneyToUnlock20, PropManipulatorUnlock20, ButtonHiderUnlock20, TriggerUnlock20)
Unlock(MaybeAgent, 21, MoneyToUnlock21, PropManipulatorUnlock21, ButtonHiderUnlock21, TriggerUnlock21)
Unlock(MaybeAgent, 22, MoneyToUnlock22, PropManipulatorUnlock22, ButtonHiderUnlock22, TriggerUnlock22)
Unlock(MaybeAgent, 23, MoneyToUnlock23, PropManipulatorUnlock23, ButtonHiderUnlock23, TriggerUnlock23)
Unlock(MaybeAgent, 24, MoneyToUnlock24, PropManipulatorUnlock24, ButtonHiderUnlock24, TriggerUnlock24)
Unlock(MaybeAgent, 25, MoneyToUnlock25, PropManipulatorUnlock25, ButtonHiderUnlock25, TriggerUnlock25)
Unlock(MaybeAgent, 26, MoneyToUnlock26, PropManipulatorUnlock26, ButtonHiderUnlock26, TriggerUnlock26)
Unlock(MaybeAgent, 27, MoneyToUnlock27, PropManipulatorUnlock27, ButtonHiderUnlock27, TriggerUnlock27)
Unlock(MaybeAgent, 28, MoneyToUnlock28, PropManipulatorUnlock28, ButtonHiderUnlock28, TriggerUnlock28)
Unlock(MaybeAgent, 29, MoneyToUnlock29, PropManipulatorUnlock29, ButtonHiderUnlock29, TriggerUnlock29)
Unlock(MaybeAgent, 30, MoneyToUnlock30, PropManipulatorUnlock30, ButtonHiderUnlock30, TriggerUnlock30)
Unlock(MaybeAgent, 31, MoneyToUnlock31, PropManipulatorUnlock31, ButtonHiderUnlock31, TriggerUnlock31)
Unlock(MaybeAgent, 32, MoneyToUnlock32, PropManipulatorUnlock32, ButtonHiderUnlock32, TriggerUnlock32)
Unlock(MaybeAgent, 33, MoneyToUnlock33, PropManipulatorUnlock33, ButtonHiderUnlock33, TriggerUnlock33)
Unlock(MaybeAgent, 34, MoneyToUnlock34, PropManipulatorUnlock34, ButtonHiderUnlock34, TriggerUnlock34)
Unlock(MaybeAgent, 35, MoneyToUnlock35, PropManipulatorUnlock35, ButtonHiderUnlock35, TriggerUnlock35)
Unlock(MaybeAgent, 36, MoneyToUnlock36, PropManipulatorUnlock36, ButtonHiderUnlock36, TriggerUnlock36)
Unlock(MaybeAgent, 37, MoneyToUnlock37, PropManipulatorUnlock37, ButtonHiderUnlock37, TriggerUnlock37)
Unlock(MaybeAgent, 38, MoneyToUnlock38, PropManipulatorUnlock38, ButtonHiderUnlock38, TriggerUnlock38)
Unlock(MaybeAgent, 39, MoneyToUnlock39, PropManipulatorUnlock39, ButtonHiderUnlock39, TriggerUnlock39)
Unlock(MaybeAgent, 40, MoneyToUnlock40, PropManipulatorUnlock40, ButtonHiderUnlock40, TriggerUnlock40)
Unlock(MaybeAgent, 41, MoneyToUnlock41, PropManipulatorUnlock41, ButtonHiderUnlock41, TriggerUnlock41)
Unlock(MaybeAgent, 42, MoneyToUnlock42, PropManipulatorUnlock42, ButtonHiderUnlock42, TriggerUnlock42)
