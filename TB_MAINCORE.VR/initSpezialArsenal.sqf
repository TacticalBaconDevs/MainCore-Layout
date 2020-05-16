/*
    In Arma:
    Im Hauptmen� auf "Tutorials" klicken, dann "ACE-ARSENAL".
    Dort das Item/Waffe/Scope usw anklicken und per STRG+C den Klassennamen kopieren
    und hier einf�gen.
    
    Diese Datei:
    !!!WICHTIG!!! - Sonst kommen Skriptfehler (lasst euch die anzeigen unter Launcherparams) mit der Zeilennummer wo der Fehler ist!
        - Die Eintr�ge fangen an mit einem " (Anf�hrungszeichen) und enden mit einem " (das nennt man STRING)
        - ALLE BIS auf den letzten Eintrag enden auf , (Komma)
        - am Ende m�sste es ohne Zeilenumbr�che so aussehen ["Classe1", "Classe2"]
        - siehe allgemeine Items als Beispiel
        
    Leere Rollen werden deaktiviert!
*/
TBMod_arsenal_fnc_arsenalSpezial = {
    private _items = [
        // ALLGEMEINE GEGENST�NDE DIE ALLE HABEN SOLLTEN - ANFANG
        
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
        
        // ALLGEMEINE GEGENST�NDE DIE ALLE HABEN SOLLTEN - ENDE - letzter Eintrag hier dr�ber hat KEIN Komma
    ];

    private rollenItems = switch (ACE_player getVariable ["TB_rolle", ""]) do
    {
        case "lead":
        {
            [
                // Truppf�hrer GEGENST�NDE - ANFANG
                
                // Truppf�hrer GEGENST�NDE - ENDE - letzter Eintrag hier dr�ber hat KEIN Komma
            ]
        };

        case "sani":
        {
            [
                // REMINDER: Diese Rolle kriegt alle Sanisachen automatisch, sowie die F�higkeiten
                // Sanit�ter GEGENST�NDE - ANFANG
                
                // Sanit�ter GEGENST�NDE - ENDE - letzter Eintrag hier dr�ber hat KEIN Komma
            ]
        };

        case "arzt":
        {
            [
                // REMINDER: Diese Rolle kriegt alle Sanisachen automatisch, sowie die F�higkeiten
                // Arzt GEGENST�NDE - ANFANG
                
                // Arzt GEGENST�NDE - ENDE - letzter Eintrag hier dr�ber hat KEIN Komma
            ]
        };

        case "grena":
        {
            [
                // Grenadier GEGENST�NDE - ANFANG
                
                // Grenadier GEGENST�NDE - ENDE - letzter Eintrag hier dr�ber hat KEIN Komma
            ]
        };

        case "dmr": {
            [
                // Gruppenscharfsch�tze GEGENST�NDE - ANFANG
                
                // Gruppenscharfsch�tze GEGENST�NDE - ENDE - letzter Eintrag hier dr�ber hat KEIN Komma
            ]
        };

        case "mg":
        {
            [
                // REMINDER: Diese Rolle kriegt automatisch weniger Verwackeln
                // Unterst�tzungssch�tze GEGENST�NDE - ANFANG
                
                // Unterst�tzungssch�tze GEGENST�NDE - ENDE - letzter Eintrag hier dr�ber hat KEIN Komma
            ]
        };

        case "trag":
        {
            [
                // REMINDER: Wenn der Munitionstr�ger alle Magazine der anderen tragen k�nnen soll, m�ssen alle hier angegeben werden!!!
                // REMINDER2: Diese Rolle kriegt automatisch weniger Verwackeln, kann schwere Kisten tragen und mehr Gewicht tragen
                // Munitionstr�ger GEGENST�NDE - ANFANG
                
                // Munitionstr�ger GEGENST�NDE - ENDE - letzter Eintrag hier dr�ber hat KEIN Komma
            ]
        };

        case "pilot":
        {
            [
                // REMINDER: Diese Rolle kriegt automatisch die F�hikeit zu Entsch�rfen, Reparieren, schwere Kisten zu tragen und hat viel mehr Leben
                // Pilot GEGENST�NDE - ANFANG
                
                // Pilot GEGENST�NDE - ENDE - letzter Eintrag hier dr�ber hat KEIN Komma
            ]
        };

        case "rifle":
        {
            [
                // Waffenspeziallist GEGENST�NDE - ANFANG
                
                // Waffenspeziallist GEGENST�NDE - ENDE - letzter Eintrag hier dr�ber hat KEIN Komma
            ]
        };

        case "sniper":
        {
            [
                // REMINDER: Diese Rolle kriegt automatisch weniger Verwackeln
                // Scharfsch�tze GEGENST�NDE - ANFANG
                
                // Scharfsch�tze GEGENST�NDE - ENDE - letzter Eintrag hier dr�ber hat KEIN Komma
            ]
        };

        case "spotter":
        {
            [
                // Spotter GEGENST�NDE - ANFANG
                
                // Spotter GEGENST�NDE - ENDE - letzter Eintrag hier dr�ber hat KEIN Komma
            ]
        };

        case "spreng":
        {
            [
                // REMINDER: Diese Rolle kriegt automatisch die F�hikeit zu Entsch�rfen und zu Reparieren
                // Sprengstoffmeister GEGENST�NDE - ANFANG
                
                // Sprengstoffmeister GEGENST�NDE - ENDE - letzter Eintrag hier dr�ber hat KEIN Komma
            ]
        };

        case "aaat":
        {
            [
                // REMINDER: Diese Rolle kriegt automatisch weniger Verwackeln und kann mehr tragen
                // Antifahrzeug GEGENST�NDE - ANFANG
                
                // Antifahrzeug GEGENST�NDE - ENDE - letzter Eintrag hier dr�ber hat KEIN Komma
            ]
        };

        case "jtac":
        {
            [
                // REMINDER: Diese Rolle kriegt automatisch die F�hikeit zu Entsch�rfen und zu Reparieren
                // Drohnentyp GEGENST�NDE - ANFANG
                
                // Drohnentyp GEGENST�NDE - ENDE - letzter Eintrag hier dr�ber hat KEIN Komma
            ]
        };

        case "pionier":
        {
            [
                // REMINDER: Diese Rolle kriegt automatisch die F�hikeit zu Entsch�rfen, zu Reparieren, verwackelt weniger, kann bauen, mehr Tragen und schwere Kisten tragen
                // Pionier GEGENST�NDE - ANFANG
                
                // Pionier GEGENST�NDE - ENDE - letzter Eintrag hier dr�ber hat KEIN Komma
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
