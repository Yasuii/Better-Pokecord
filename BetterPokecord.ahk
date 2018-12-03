#NoEnv
#SingleInstance
SetTitleMatchMode, 2
SetWorkingDir %A_ScriptDir%
IniRead, vPrefix, Settings.ini, System, Prefix
IniRead, MinInterval, Settings.ini, System, Spam_Msg_Interval_Min
IniRead, MaxInterval, Settings.ini, System, Spam_Msg_Interval_Max
IniRead, BootCount, Settings.ini, Stats, Boot_Count
IniRead, TotalMessagesSent, Settings.ini, Stats, Total_Messages_Sent
IniRead, PokemonCaught, Settings.ini, Stats, Pokemon_Caught
IniRead, LastPokemonCaught, Settings.ini, Stats, Last_Pokemon_Caught
BootCount += 1
MessagesSent := 0
vPokemon := LastPokemonCaught
vPokemonList := "Bulbasaur,Ivysaur,Venusaur,Charmander,Charmeleon,Charizard,Squirtle,Wartortle,Blastoise,Caterpie,Metapod,Butterfree,Weedle,Kakuna,Beedrill,Pidgey,Pidgeotto,Pidgeot,Rattata,Raticate,Spearow,Fearow,Ekans,Arbok,Pikachu,Raichu,Sandshrew,Sandslash,Nidoran,Nidorina,Nidoqueen,Nidoran,Nidorino,Nidoking,Clefairy,Clefable,Vulpix,Ninetales,Jigglypuff,Wigglytuff,Zubat,Golbat,Oddish,Gloom,Vileplume,Paras,Parasect,Venonat,Venomoth,Diglett,Dugtrio,Meowth,Persian,Psyduck,Golduck,Mankey,Primeape,Growlithe,Arcanine,Poliwag,Poliwhirl,Poliwrath,Abra,Kadabra,Alakazam,Machop,Machoke,Machamp,Bellsprout,Weepinbell,Victreebel,Tentacool,Tentacruel,Geodude,Graveler,Golem,Ponyta,Rapidash,Slowpoke,Slowbro,Magnemite,Magneton,Farfetchd,Doduo,Dodrio,Seel,Dewgong,Grimer,Muk,Shellder,Cloyster,Gastly,Haunter,Gengar,Onix,Drowzee,Hypno,Krabby,Kingler,Voltorb,Electrode,Exeggcute,Exeggutor,Cubone,Marowak,Hitmonlee,Hitmonchan,Lickitung,Koffing,Weezing,Rhyhorn,Rhydon,Chansey,Tangela,Kangaskhan,Horsea,Seadra,Goldeen,Seaking,Staryu,Starmie,Mr. Mime,Scyther,Jynx,Electabuzz,Magmar,Pinsir,Tauros,Magikarp,Gyarados,Lapras,Ditto,Eevee,Vaporeon,Jolteon,Flareon,Porygon,Omanyte,Omastar,Kabutops,Aerodactyl,Snorlax,Articuno,Zapdos,Moltres,Dratini,Dragonair,Dragonite,Mewtwo,Chikorita,Bayleef,Meganium,Cyndaquil,Quilava,Typhlosion,Totodile,Croconaw,Feraligatr,Sentret,Furret,Hoothoot,Noctowl,Ledyba,Ledian,Spinarak,Ariados,Crobat,Chinchou,Lanturn,Pichu,Cleffa,Igglybuff,Togepi,Togetic,Natu,Xatu,Mareep,Flaaffy,Ampharos,Bellossom,Marill,Azumarill,Sudowoodo,Politoed,Hoppip,Skiploom,Jumpluff,Aipom,Sunkern,Sunflora,Yanma,Wooper,Quagsire,Espeon,Umbreon,Murkrow,Slowking,Misdreavus,Unown,Wobbuffet,Girafarig,Pineco,Forretress,Dunsparce,Gligar,Steelix,Snubbull,Granbull,Qwilfish,Scizor,Shuckle,Heracross,Sneasel,Teddiursa,Ursaring,Slugma,Magcargo,Swinub,Piloswine,Corsola,Remoraid,Octillery,Delibird,Mantine,Skarmory,Houndour,Houndoom,Kingdra,Phanpy,Donphan,Porygon2,Stantler,Smeargle,Tyrogue,Hitmontop,Smoochum,Elekid,Magby,Miltank,Blissey,Raikou,Entei,Suicune,Larvitar,Pupitar,Tyranitar,Lugia,Ho-Oh,Celebi,Treecko,Grovyle,Sceptile,Torchic,Combusken,Blaziken,Mudkip,Marshtomp,Swampert,Poochyena,Mightyena,Zigzagoon,Linoone,Wurmple,Silcoon,Beautifly,Cascoon,Dustox,Lotad,Lombre,Ludicolo,Seedot,Nuzleaf,Shiftry,Taillow,Swellow,Wingull,Pelipper,Ralts,Kirlia,Gardevoir,Surskit,Masquerain,Shroomish,Breloom,Slakoth,Vigoroth,Slaking,Nincada,Ninjask,Shedinja,Whismur,Loudred,Exploud,Makuhita,Hariyama,Azurill,Nosepass,Skitty,Delcatty,Sableye,Mawile,Aron,Lairon,Aggron,Meditite,Medicham,Electrike,Manectric,Plusle,Minun,Volbeat,Illumise,Roselia,Gulpin,Swalot,Carvanha,Sharpedo,Wailmer,Wailord,Numel,Camerupt,Torkoal,Spoink,Grumpig,Spinda,Trapinch,Vibrava,Flygon,Cacnea,Cacturne,Swablu,Altaria,Zangoose,Seviper,Lunatone,Solrock,Barboach,Whiscash,Corphish,Crawdaunt,Baltoy,Claydol,Lileep,Cradily,Anorith,Armaldo,Feebas,Milotic,Castform,Kecleon,Shuppet,Banette,Duskull,Dusclops,Tropius,Chimecho,Absol,Wynaut,Snorunt,Glalie,Spheal,Sealeo,Walrein,Clamperl,Huntail,Gorebyss,Relicanth,Luvdisc,Bagon,Shelgon,Salamence,Beldum,Metang,Metagross,Regirock,Regice,Registeel,Latias,Latios,Kyogre,Groudon,Rayquaza,Jirachi,Deoxys,Turtwig,Grotle,Torterra,Chimchar,Monferno,Infernape,Piplup,Prinplup,Empoleon,Starly,Staravia,Staraptor,Bidoof,Bibarel,Kricketot,Kricketune,Shinx,Luxio,Luxray,Budew,Roserade,Cranidos,Rampardos,Shieldon,Bastiodon,Burmy,Wormadam,Mothim,Combee,Vespiquen,Pachirisu,Buizel,Floatzel,Cherubi,Cherrim,Shellos,Gastrodon,Ambipom,Drifloon,Drifblim,Buneary,Lopunny,Mismagius,Honchkrow,Glameow,Purugly,Chingling,Stunky,Skuntank,Bronzor,Bronzong,Bonsly,Mime Jr.,Happiny,Chatot,Spiritomb,Gible,Gabite,Garchomp,Munchlax,Riolu,Lucario,Hippopotas,Hippowdon,Skorupi,Drapion,Croagunk,Toxicroak,Carnivine,Finneon,Lumineon,Mantyke,Snover,Abomasnow,Weavile,Magnezone,Lickilicky,Rhyperior,Tangrowth,Electivire,Magmortar,Togekiss,Yanmega,Leafeon,Glaceon,Gliscor,Mamoswine,Porygon-Z,Gallade,Probopass,Dusknoir,Froslass,Rotom,Uxie,Mesprit,Azelf,Dialga,Palkia,Heatran,Regigigas,Giratina,Cresselia,Phione,Manaphy,Darkrai,Shaymin,Arceus,Victini,Snivy,Servine,Serperior,Tepig,Pignite,Emboar,Oshawott,Dewott,Samurott,Patrat,Watchog,Lillipup,Herdier,Stoutland,Purrloin,Liepard,Pansage,Simisage,Pansear,Simisear,Panpour,Simipour,Munna,Musharna,Pidove,Tranquill,Unfezant,Blitzle,Zebstrika,Roggenrola,Boldore,Gigalith,Woobat,Swoobat,Drilbur,Excadrill,Audino,Timburr,Gurdurr,Conkeldurr,Tympole,Palpitoad,Seismitoad,Throh,Sawk,Sewaddle,Swadloon,Leavanny,Venipede,Whirlipede,Scolipede,Cottonee,Whimsicott,Petilil,Lilligant,Basculin,Sandile,Krokorok,Krookodile,Darumaka,Darmanitan,Maractus,Dwebble,Crustle,Scraggy,Scrafty,Sigilyph,Yamask,Cofagrigus,Tirtouga,Carracosta,Archen,Archeops,Trubbish,Garbodor,Zorua,Zoroark,Minccino,Cinccino,Gothita,Gothorita,Gothitelle,Solosis,Duosion,Reuniclus,Ducklett,Swanna,Vanillite,Vanillish,Vanilluxe,Deerling,Sawsbuck,Emolga,Karrablast,Escavalier,Foongus,Amoonguss,Frillish,Jellicent,Alomomola,Joltik,Galvantula,Ferroseed,Ferrothorn,Klink,Klang,Klinklang,Tynamo,Eelektrik,Eelektross,Elgyem,Beheeyem,Litwick,Lanturn,Chandelure,Axew,Fraxure,Haxorus,Cubchoo,Beartic,Cryogonal,Shelmet,Accelgor,Stunfisk,Mienfoo,Mienshao,Druddigon,Golett,Golurk,Pawniard,Bisharp,Bouffalant,Rufflet,Braviary,Vullaby,Mandibuzz,Heatmor,Durant,Deino,Zweilous,Hydreigon,Larvesta,Volcarona,Cobalion,Terrakion,Virizion,Tornadus,Thundurus,Reshiram,Zekrom,Landorus,Kyurem,Keldeo,Meloetta,Genesect,Chespin,Quilladin,Chesnaught,Fennekin,Braixen,Delphox,Froakie,Frogadier,Greninja,Bunnelby,Diggersby,Fletchling,Fletchinder,Talonflame,Scatterbug,Spewpa,Vivillon,Litleo,Pyroar,Flabebe,Floette,Florges,Skiddo,Gogoat,Pancham,Pangoro,Furfrou,Espurr,Meowstic,Honedge,Doublade,Aegislash,Spritzee,Aromatisse,Swirlix,Slurpuff,Inkay,Malamar,Binacle,Barbaracle,Skrelp,Dragalge,Clauncher,Clawitzer,Helioptile,Heliolisk,Tyrunt,Tyrantrum,Amaura,Aurorus,Sylveon,Hawlucha,Dedenne,Carbink,Goomy,Sliggoo,Goodra,Klefki,Phantump,Trevenant,Pumpkaboo,Gourgeist,Bergmite,Avalugg,Noibat,Noivern,Xerneas,Yveltal,Zygarde,Diancie,Hoopa,Volcanion,Rowlet,Dartrix,Decidueye,Litten,Torracat,Incineroar,Popplio,Brionne,Primarina,Pikipek,Trumbeak,Toucannon,Yungoos,Gumshoos,Grubbin,Charjabug,Vikavolt,Crabrawler,Crabominable,Oricorio,Cutiefly,Ribombee,Rockruff,Lycanroc,Wishiwashi,Mareanie,Toxapex,Mudbray,Mudsdale,Dewpider,Araquanid,Fomantis,Lurantis,Morelull,Shiinotic,Salandit,Salazzle,Stufful,Bewear,Bounsweet,Steenee,Tsareena,Comfey,Oranguru,Passimian,Wimpod,Golisopod,Sandygast,Palossand,Pyukumuku,Type: Null,Silvally,Minior,Komala,Turtonator,Togedemaru,Mimikyu,Bruxish,Drampa,Dhelmise,Jangmo-o,Hakamo-o,Kommo-o,Tapu Koko,Tapu Lele,Tapu Bulu,Tapu Fini,Cosmog,Cosmoem,Solgaleo,Lunala,Nihilego,Buzzwole,Pheromosa,Xurkitree,Celesteela,Kartana,Guzzlord,Necrozma,Magearna,Marshadow,Poipole,Naganadel,Stakataka,Blacephalon,Zeraora"
OnExit, saveandexit
+End::
    Gosub, UpdateIni
    Reload
^End::Exit
End::Suspend
!s::Gosub, showstats
[::Pause
![::Gosub, spam
+Enter::Gosub, catchpokemon
+\::Gosub, setpokemon
NumLock::Gosub, latestcatch
Home::Gosub, checkspecies
NumpadDiv::Gosub, searchiv
NumpadMult::Gosub, searchprice
NumpadSub::Gosub, marketsell
NumpadAdd::Gosub, marketbuy
catchpokemon:
    SetKeyDelay, 1
    WinActivate, Discord
    Send, %vPrefix%catch{Space}
    Input, vPokemon, i v t20, {Enter}, %vPokemonList%
    if (ErrorLevel = "match") {
        Send, {Enter}
        TotalMessagesSent += 1
        MessagesSent += 1
        PokemonCaught += 1
        LastPokemonCaught := vPokemon
    }
    if (ErrorLevel = "EndKey:Enter") {
        TotalMessagesSent += 1
        MessagesSent += 1
        PokemonCaught += 1
        LastPokemonCaught := vPokemon
    }
    if (ErrorLevel = "timeout") {
        Send, {Ctrl Down}a{Ctrl Up}{BackSpace}
        vPokemon := LastPokemonCaught
    }
    Return
setpokemon:
    SetKeyDelay, 30
    WinActivate, Discord
    Send, waiting{Ctrl Down}a{Ctrl Up}{BackSpace}
    Input, vPokemon, i v t20,{Space}, %vPokemonList%
    if (ErrorLevel = "match") {
        Send, {Ctrl Down}a{Ctrl Up}{BackSpace}
    }
    if (ErrorLevel = "EndKey:Space") {
        Send, {Ctrl Down}a{Ctrl Up}{BackSpace}
    }
    if (ErrorLevel = "timeout") {
        SetKeyDelay, 10
        Send, {Ctrl Down}a{Ctrl Up}{BackSpace}
        vPokemon := LastPokemonCaught
    }
    Return
latestcatch:
    SetKeyDelay, 100
    WinActivate, Discord
    Send, %vPrefix%info latest{Enter}
    TotalMessagesSent += 1
    MessagesSent += 1
    Return
checkspecies:
    SetKeyDelay, 100
    WinActivate, Discord
    Send, %vPrefix%pokemon --name %vPokemon%{Enter}
    TotalMessagesSent += 1
    MessagesSent += 1
    Return
searchiv:
    SetKeyDelay, 60
    WinActivate, Discord
    Send, %vPrefix%market search --name %vPokemon% --order iv descending --showiv{Enter}
    TotalMessagesSent += 1
    MessagesSent += 1
    Return
searchprice:
    SetKeyDelay, 60
    WinActivate, Discord
    Send, %vPrefix%market search --name %vPokemon% --order price ascending --showiv{Enter}
    TotalMessagesSent += 1
    MessagesSent += 1    
    Return
marketsell:
    SetKeyDelay, 120
    Send, {CtrlDown}c{CtrlUp}
    InputBox, sellprice, How Much To List Each For?
    If (ErrorLevel = 1) {
        Return
    }
    WinActivate, Discord
    Loop, Parse, Clipboard, `n
    {
        selllarray := StrSplit(A_LoopField, A_Space)
        sellpokemon := selllarray[7]
        Send, %vPrefix%market list %sellpokemon% %sellprice%{Enter}
        TotalMessagesSent += 1
        MessagesSent += 1
    }
    Send, %vPrefix%confirmlist{Enter}
    TotalMessagesSent += 1
    MessagesSent += 1    
    Return
marketbuy:
    SetKeyDelay, 120
    Send, {CtrlDown}c{CtrlUp}
    WinActivate, Discord
    Loop, Parse, Clipboard, `n
    {
        buyarray := StrSplit(A_LoopField, A_Space)
        buypokemon := buyarray[6]
        Send, %vPrefix%market buy %buypokemon%{Enter}
        TotalMessagesSent += 1
        MessagesSent += 1
    }
    Send, %vPrefix%confirmbuy{Enter}
    TotalMessagesSent += 1
    MessagesSent += 1    
    Return
spam:
    SetKeyDelay, 80
    InputBox, totalmessages, How Many Messages to Send?
    If (ErrorLevel = 1) {
        Return
    }
    Loop {
        vmessagecounter += 1
        spammsg := Commify(vmessagecounter)
        WinActivate, Discord
        Send, ``%spammsg%``{Enter}
        TotalMessagesSent += 1
        MessagesSent += 1
        If (A_Index >= totalmessages) {
            vmessagecounter = 0
            Break
        }
        Sleep, fRandom(MinInterval, MaxInterval)
    }
    Return
showstats:
    cBootCount := Commify(BootCount)
    cMessagesSent := Commify(MessagesSent)
    cTotalMessagesSent := Commify(TotalMessagesSent)
    cPokemonCaught := Commify(PokemonCaught)
    MsgBox,
    (Ltrim
        Total Boots: %cBootCount%
        Messages Sent: %cMessagesSent%
        Total Messages Sent: %cTotalMessagesSent%

        Pokemon Caught: %cPokemonCaught%
        Most Recent Catch: %LastPokemonCaught%
    )
    Return
UpdateIni:
    IniWrite, %BootCount%, Settings.ini, Stats, Boot_Count
    IniWrite, %TotalMessagesSent%, Settings.ini, Stats, Total_Messages_Sent
    IniWrite, %PokemonCaught%, Settings.ini, Stats, Pokemon_Caught
    IniWrite, %LastPokemonCaught%, Settings.ini, Stats, Last_Pokemon_Caught
    Return
saveandexit:
    Gosub, UpdateIni
    ExitApp
fRandom(x, y) {
    Random, vfRandom, x, y
    Return vfRandom
}
Commify(n) {
    If (n <= 99) {
        Return n
    }
    s = ,
    d = 3
    Loop, % (l := StrLen(n)) // d {
        i := SubStr(n, 1 - d * A_Index, d) . s . i
    }
    i := (j := SubStr(n, 1, Mod(l, d))) . (j ? s : "") . SubStr(i, 1, -1)
    Return i
}