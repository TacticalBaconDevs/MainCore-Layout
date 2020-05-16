/*
    In Arma:
    Im Hauptmenü auf "Tutorials" klicken, dann "ACE-ARSENAL".
    Dort das Item/Waffe/Scope usw anklicken und per STRG+C den Klassennamen kopieren
    und hier einfügen.
    
    Diese Datei:
    !!!WICHTIG!!! - Sonst kommen Skriptfehler (lasst euch die anzeigen unter Launcherparams) mit der Zeilennummer wo der Fehler ist!
        - Die Einträge fangen an mit einem " (Anführungszeichen) und enden mit einem " (das nennt man STRING)
        - ALLE BIS auf den letzten Eintrag enden auf , (Komma)
        - am Ende müsste es ohne Zeilenumbrüche so aussehen ["Classe1", "Classe2"]
        - siehe allgemeine Items als Beispiel
        
    Leere Rollen werden deaktiviert!
*/
TBMod_arsenal_fnc_arsenalSpezial = {
    private _items = [
        // ALLGEMEINE GEGENSTÄNDE DIE ALLE HABEN SOLLTEN - ANFANG
        
        // Karte
        "ItemMap",

        // Terminal
        "ItemGPS",

        // Kommunikation
        "TFAR_anprc152",

        // Navigation
        "ItemCompass",
        "ACE_microDAGR",

        // Uhr
        "ItemWatch",
        "ACE_Altimeter"
        
        // ALLGEMEINE GEGENSTÄNDE DIE ALLE HABEN SOLLTEN - ENDE - letzter Eintrag hier drüber hat KEIN Komma
    ];

    private rollenItems = switch (ACE_player getVariable ["TB_rolle", ""]) do
    {
        case "lead":
        {
            [
                // Truppführer GEGENSTÄNDE - ANFANG
                
                // Truppführer GEGENSTÄNDE - ENDE - letzter Eintrag hier drüber hat KEIN Komma
            ]
        };

        case "sani":
        {
            [
                // REMINDER: Diese Rolle kriegt alle Sanisachen automatisch, sowie die Fähigkeiten
                // Sanitäter GEGENSTÄNDE - ANFANG
                
                // Sanitäter GEGENSTÄNDE - ENDE - letzter Eintrag hier drüber hat KEIN Komma
            ]
        };

        case "arzt":
        {
            [
                // REMINDER: Diese Rolle kriegt alle Sanisachen automatisch, sowie die Fähigkeiten
                // Arzt GEGENSTÄNDE - ANFANG
                
                // Arzt GEGENSTÄNDE - ENDE - letzter Eintrag hier drüber hat KEIN Komma
            ]
        };

        case "grena":
        {
            [
                // Grenadier GEGENSTÄNDE - ANFANG
                
                // Grenadier GEGENSTÄNDE - ENDE - letzter Eintrag hier drüber hat KEIN Komma
            ]
        };

        case "dmr": {
            [
                // Gruppenscharfschütze GEGENSTÄNDE - ANFANG
                
                // Gruppenscharfschütze GEGENSTÄNDE - ENDE - letzter Eintrag hier drüber hat KEIN Komma
            ]
        };

        case "mg":
        {
            [
                // REMINDER: Diese Rolle kriegt automatisch weniger Verwackeln
                // Unterstützungsschütze GEGENSTÄNDE - ANFANG
                
                // Unterstützungsschütze GEGENSTÄNDE - ENDE - letzter Eintrag hier drüber hat KEIN Komma
            ]
        };

        case "trag":
        {
            [
                // REMINDER: Wenn der Munitionsträger alle Magazine der anderen tragen können soll, müssen alle hier angegeben werden!!!
                // REMINDER2: Diese Rolle kriegt automatisch weniger Verwackeln, kann schwere Kisten tragen und mehr Gewicht tragen
                // Munitionsträger GEGENSTÄNDE - ANFANG
                
                // Munitionsträger GEGENSTÄNDE - ENDE - letzter Eintrag hier drüber hat KEIN Komma
            ]
        };

        case "pilot":
        {
            [
                // REMINDER: Diese Rolle kriegt automatisch die Fähikeit zu Entschärfen, Reparieren, schwere Kisten zu tragen und hat viel mehr Leben
                // Pilot GEGENSTÄNDE - ANFANG
                
                // Pilot GEGENSTÄNDE - ENDE - letzter Eintrag hier drüber hat KEIN Komma
            ]
        };

        case "rifle":
        {
            [
                // Waffenspeziallist GEGENSTÄNDE - ANFANG
                
                // Waffenspeziallist GEGENSTÄNDE - ENDE - letzter Eintrag hier drüber hat KEIN Komma
            ]
        };

        case "sniper":
        {
            [
                // REMINDER: Diese Rolle kriegt automatisch weniger Verwackeln
                // Scharfschütze GEGENSTÄNDE - ANFANG
                
                // Scharfschütze GEGENSTÄNDE - ENDE - letzter Eintrag hier drüber hat KEIN Komma
            ]
        };

        case "spotter":
        {
            [
                // Spotter GEGENSTÄNDE - ANFANG
                
                // Spotter GEGENSTÄNDE - ENDE - letzter Eintrag hier drüber hat KEIN Komma
            ]
        };

        case "spreng":
        {
            [
                // REMINDER: Diese Rolle kriegt automatisch die Fähikeit zu Entschärfen und zu Reparieren
                // Sprengstoffmeister GEGENSTÄNDE - ANFANG
                
                // Sprengstoffmeister GEGENSTÄNDE - ENDE - letzter Eintrag hier drüber hat KEIN Komma
            ]
        };

        case "aaat":
        {
            [
                // REMINDER: Diese Rolle kriegt automatisch weniger Verwackeln und kann mehr tragen
                // Antifahrzeug GEGENSTÄNDE - ANFANG
                
                // Antifahrzeug GEGENSTÄNDE - ENDE - letzter Eintrag hier drüber hat KEIN Komma
            ]
        };

        case "jtac":
        {
            [
                // REMINDER: Diese Rolle kriegt automatisch die Fähikeit zu Entschärfen und zu Reparieren
                // Drohnentyp GEGENSTÄNDE - ANFANG
                
                // Drohnentyp GEGENSTÄNDE - ENDE - letzter Eintrag hier drüber hat KEIN Komma
            ]
        };

        case "pionier":
        {
            [
                // REMINDER: Diese Rolle kriegt automatisch die Fähikeit zu Entschärfen, zu Reparieren, verwackelt weniger, kann bauen, mehr Tragen und schwere Kisten tragen
                // Pionier GEGENSTÄNDE - ANFANG
                
                // Pionier GEGENSTÄNDE - ENDE - letzter Eintrag hier drüber hat KEIN Komma
            ]
        };

        default {hint "Schwerer Fehler #100"};
    };
    
    // Leere Rollen deaktivieren
    if (isNil "TB_blacklistRollen_spezial") then {TB_blacklistRollen_spezial = []};
    if (_rollenItems isEqualTo []) then {TB_blacklistRollen_spezial pushBackUnique (ACE_player getVariable ["TB_rolle", ""])};

    _items append _rollenItems;
    _items arrayIntersect _items
};
