### Editor Inventar Fahrzeuge
Normaler weise werden alle Inventare gelöscht zum Anfang der Mission, aber das kann umgangen werden.
1. Eden Attribute des Fahrzeuges öffnen
2. Unter Lagerraum/Inventar die Option "Inventar nicht löschen" ankreuzen


### HeadlessClient Blacklist
NUR WENN DER HEADLESS CLIENT AKTIVIERT WIRD...
Alle Einheiten, die still rumstehen sollen, sollten auf die HC Blacklist, dies kann per Eden Attribut auf dem Objekt,
oder der Gruppe gemacht werden. ABER es ist zu empfehlen alle patroullierenden Einheiten dem HC zu überlassen.
Der HC übernimmt die KI vom Server und macht diese so flüssiger und besser, zudem nimmt er dem Server dadurch extrem Arbeit ab.


### SafeStart
SafeStart verhindert das am Start geschossen werden kann
1. öffne init.sqf gehe zu TB_safeStart
2. setze den Wert auf true (an) oder false (aus)
3. wenn an hiermit beenden und wieder anmachen
	beenden mit '[false] call TB_fnc_safe' in der Debugconsole, GLOBAL ausführen
	erneut wieder starten zB für Debriefing '[true] call TB_fnc_safe' in der Debugconsole, GLOBAL ausführen
	
