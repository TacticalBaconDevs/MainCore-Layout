/*
    ###################################################################################
    Missionbauer Settings
    ###################################################################################
*/
// Dies erlaub bestimmte Rollen zu sperren
// verfügbar: lead, grena, sani, mg, spreng, aaat, trag, dmr, pilot, sniper, spotter, jtac, arzt, rifle, pionier
TB_blacklistRollen = [];

// Mit dieser Variable kannst du Rollen aus dem normalen Arsenal umbennen
TB_customName = [
    "Truppführer",              // lead
    "Grenadier",                // grena
    "Kampfsanitäter",           // sani -> feste Sanifähigkeiten
    "Unterstützungsschütze",    // mg
    "Sprengmeister",            // spreng -> feste Pionierfähigkeit
    "Anti-Fahrzeug",            // aaat -> feste höhere Inventartragefähigkeit
    "Munitionsträger",          // trag -> feste hohe Kistentragekraft, höhere Inventartragefähigkeit
    "Gruppenaufklärer",         // dmr
    "Pilot",                    // pilot -> feste Sanifähigkeiten, Pionierfähigkeit, hohe Kistentragekraft
    "AufklärerSniper",          // sniper
    "AufklärerSpotter",         // spotter
    "DrohnenOP",                // jtac
    "Arzt",                     // arzt -> feste Sanifähigkeiten
    "Waffenspezialist",         // rifle
    "Pionier"                   // pionier -> feste Pionierfähigkeit, hohe Kistentragekraft, höhere Inventartragefähigkeit
];

/*
    ###################################################################################
    CUSTOM ARSENALE
    ###################################################################################

    In Arma:
    Im Hauptmenü auf "Tutorials" klicken, dann "ACE-ARSENAL" nun alles ausrüsten.
    Wenn du alles ausgerüstet hast, unten auf "EXPORTIEREN" klicken.
    
    Diese Datei:
    Nun beim jeweiligen CASE der Rolle zB lead (Truppführer usw.) die leeren >>> [] <<<
    markieren und STRG+V drücken.
    Sollten die leeren eckingen Klammern stehen bleiben wird diese Rolle nicht angeboten.
    Die Spalte in der DEFAULT steht DARF NICHT ANGEFASST WERDEN. Diese einfach lassen
    auch die [].
    Layouts sind über die Kiste im Reiter Arsenal "Vordefiniert Custom" erreichbar!
*/
TB_fnc_customLayout = {
    params ["_rolle"];
    
    switch (_rolle) do
    {
        // ÄNDERUNGEN HIER DRUNTER
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
        // ÄNDERUNGEN ENDE
        
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
    /* Eigene Namen für die Rollen, einfach den Namen zwischen den "" ändern, beachte,
        einige Rollen haben festgeschriebene Fähigkeiten!    
    */
    TB_customName_custom = [
        "Truppführer",              // lead
        "Grenadier",                // grena
        "Kampfsanitäter",           // sani -> feste Sanifähigkeiten
        "Unterstützungsschütze",    // mg
        "Sprengmeister",            // spreng -> feste Pionierfähigkeit
        "Anti-Fahrzeug",            // aaat -> feste höhere Inventartragefähigkeit
        "Munitionsträger",          // trag -> feste hohe Kistentragekraft, höhere Inventartragefähigkeit
        "Gruppenaufklärer",         // dmr
        "Pilot",                    // pilot -> feste Sanifähigkeiten, Pionierfähigkeit, hohe Kistentragekraft
        "AufklärerSniper",          // sniper
        "AufklärerSpotter",         // spotter
        "DrohnenOP",                // jtac
        "Arzt",                     // arzt -> feste Sanifähigkeiten
        "Waffenspezialist",         // rifle
        "Pionier"                   // pionier -> feste Pionierfähigkeit, hohe Kistentragekraft, höhere Inventartragefähigkeit
    ];
};
