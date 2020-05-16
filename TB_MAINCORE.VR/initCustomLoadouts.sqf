/*
    In Arma:
    Im Hauptmen� auf "Tutorials" klicken, dann "ACE-ARSENAL" nun alles ausr�sten.
    Wenn du alles ausger�stet hast, unten auf "EXPORTIEREN" klicken.
    
    Diese Datei:
    Nun beim jeweiligen CASE der Rolle zB lead (Truppf�hrer usw.) die leeren >>> [] <<<
    markieren und STRG+V dr�cken.
    Sollten die leeren eckingen Klammern stehen bleiben wird diese Rolle nicht angeboten.
    Die Spalte in der DEFAULT steht DARF NICHT ANGEFASST WERDEN. Diese einfach lassen
    auch die [].
    Layouts sind �ber die Kiste im Reiter Arsenal "Vordefiniert Custom" erreichbar!
*/
TB_fnc_customLayout = {
    params ["_rolle"];
    
    switch (_rolle) do
    {
        // �NDERUNGEN HIER DRUNTER
        case "lead": {[]};
        case "grena": {[]};
        case "sani": {[]};
        case "mg": {[]};
        case "spreng": {[]};
        case "aaat": {[]};
        case "trag": {[]};
        case "dmr": {[]};
        case "pilot": {[]};
        case "sniper": {[]};
        case "spotter": {[]};
        case "jtac": {[]};
        case "arzt": {[]};
        case "rifle" : {[]};
        case "pionier" : {[]};
        // �NDERUNGEN ENDE
        
        default {[]};
    };
};

TB_blacklistRollen_custom = [];
{
    if (([_x] call TB_fnc_customLayout) isEqualTo []) then {TB_blacklistRollen_custom pushBackUnique _x};
}
forEach ["lead","grena","sani","mg","spreng","aaat","trag","dmr","pilot","sniper","spotter","jtac","arzt","rifle","pionier"];

// Customsystem aktiviert
if (count TB_blacklistRollen_custom != 15) then
{
    /* Eigene Namen f�r die Rollen, einfach den Namen zwischen den "" �ndern, beachte,
        einige Rollen haben festgeschriebene F�higkeiten!    
    */
    TB_customName = [
        "Truppf�hrer",              // lead
        "Grenadier",                // grena
        "Kampfsanit�ter",           // sani -> feste Sanif�higkeiten
        "Unterst�tzungssch�tze",    // mg
        "Sprengmeister",            // spreng -> feste Pionierf�higkeit
        "Anti-Fahrzeug",            // aaat -> feste h�here Inventartragef�higkeit
        "Munitionstr�ger",          // trag -> feste hohe Kistentragekraft, h�here Inventartragef�higkeit
        "Gruppenaufkl�rer",         // dmr
        "Pilot",                    // pilot -> feste Sanif�higkeiten, Pionierf�higkeit, hohe Kistentragekraft
        "Aufkl�rerSniper",          // sniper
        "Aufkl�rerSpotter",         // spotter
        "DrohnenOP",                // jtac
        "Arzt",                     // arzt -> feste Sanif�higkeiten
        "Sch�tze",                  // rifle
        "Pionier"                   // pionier -> feste Pionierf�higkeit, hohe Kistentragekraft, h�here Inventartragef�higkeit
    ];
};
