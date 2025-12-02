@echo off
chcp 65001 >nul
color B
cls
echo Vitej na začátku vědomostního kvízu. Za každou správnou odpověď se ti budou připočítávat body, a za každou špatnou        odpověď se tvůj počet bodů nezmění. Pokud nedosáhneš 12 bodů tak si prohrál. Nezapomeň na háčky, čárky, velké a malé  písmena. Doufám, že se ti bude dařit. Vyber následující krok.

set /a body=0

echo 1 = začni hru
echo 2 = exit

choice /C 12
 if errorlevel 2 (
   cls
   exit
) else if errorlevel 1 (
   cls
    Goto :first
   pause
)

:first
echo První otázka
echo Jak se jmenuje hora, která nejvyšší v Evropě? 
set /p odpoved=Zadej odpověď: 
if /i "%odpoved%"=="Elbrus" (
    cls
    set /a body+=2
    echo správně, dostáváš 2 body.
    pause
    Goto :second
) else (
    echo špatně
    echo bohužel nedostaneš ani jeden bod.
    pause
    Goto :second
)

:second
cls
echo Druhá otázka 
echo Který evropský stát nemá žádné řeky?

echo 1 = Portugalsko
echo 2 = San Marino
echo 3 = Vatikán

choice /C 123
if errorlevel 3 (
   cls
   set /a body+=2
   echo správně, dostáváš 2 body.
   pause 
   Goto :third
) else if errorlevel 2 (
   cls
   echo špatně, nedostaneš body.
   pause 
   Goto :third
) else (
   cls
   echo špatně, nedostáváš body.
   pause 
   Goto :third
)

:third
cls
echo Zatím se ti daří. Pokud odpovíš na třetí otázku správně dostaneš 3 body.

:fourth
cls 
echo Třetí otázka 
echo Jaký je největší orgán lidského těla? 
set /p odpoved=Zadej odpověď: 
if /i "%odpoved%"=="kůže" (
    cls
    set /a body+=2
    echo správně, dostáváš 2 body.
    pause
    Goto :fifth
) else (
    echo špatně, nedostáváš body.
    pause
    Goto :fourth
)


:fifth
cls 
echo Výborně, dostal jsi se ke čtvrté otázce. Pokud odpovíš správně, dostaneš 3 body.

:sixth
cls 
echo Čtvrtá otázka
echo Jak se jmenuje největší poušť světa?
 
echo 1 = Sahara
echo 2 = Antarktida
echo 3 = Gobi

choice /C 123
if errorlevel 3 (
   cls 
   echo špatně, nedostáváš body.
   pause
   Goto :seventh
) else if errorlevel 2 (
   cls 
   set /a body+=3
   echo správně, dostáváš 3 body.   
   pause
   Goto :seventh
) else if errorlevel 1 (
   cls 
   echo špatně, nedostáváš body.
   pause
   Goto :seventh
)  

:seventh
cls 
echo Jsi cca v polovině kvízu. Time to lock in!
Goto :eighth

:eighth
cls
echo Pátá otázka
echo Který živočich má největší mozek v poměru k tělesné hmotnosti?

echo 1 = Delfín
echo 2 = Člověk
echo 3 = Mravenec

choice /C 123
if errorlevel 3 (
   cls 
   set /a body+=2
   echo správně, dostáváš 2 body.
   pause
   Goto :ninth
) else if errorlevel 2 (
   cls 
   echo špatně, nedostáváš body.
   pause
   Goto :ninth
) else if errorlevel 1 (
   cls 
   echo špatně, nedostáváš body.
   pause
   Goto :ninth 
)

:ninth
cls
echo Šestá otázka
echo V jakém roce byla založena škola SSŠVT? 
set /p odpoved=Zadej odpověď: 
if /i "%odpoved%"=="1994" (
   cls
   set /a body+=2
    echo správně, dostáváš 2 body.
    pause
    Goto :eleven
) else (
    echo špatně, nedostáváš body.
    pause
    Goto :ninth
)  

:ten
cls
echo Sedmá otázka
echo Jaká je adresa školy SSŠVT?

echo 1 = Litvínovská 600
echo 2 = Litvínovská 500

choice /C 12
if errorlevel 2 (
   cls 
   set /a body+=2
   echo správně, dostáváš 2 body.
   pause
   Goto :eleven
) else if errorlevel 1 (
   cls 
   echo špatně, nedostáváš body.
   pause
   Goto :eleven
)

:eleven
cls 
echo Poslední otázka kvízu. Zapoj všechny své mozkové buňky.
echo Jaký je nejlepší meme za rok 2025?
set /p odpoved=Zadej odpověď: 
if defined odpoved (
    cls
    set /a body+=5
    echo správně, dostáváš 5 bodů.
    pause
    Goto :twelve
) 





:twelve
cls 
echo Konec kvízu! Tvé celkové body: %body%
pause
