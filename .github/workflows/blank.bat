@title BlackJack By TheCoder TV
@echo off
color f

if not exist C:\BlackJack goto create
if exist C:\BlackJack goto starting1
:create
md C:\BlackJack
:starting1
cd C:\BlackJack
mode 166
cls
cd C:\BlackJack
set house=1000000
set konto=%konto%
set bann=%bann%



REM Notes:
rem EQU - equal
rem NEQ - not equal
rem LSS - less than
rem LEQ - less than or equal
rem GTR - greater than
rem GEQ - greater than or equal

if exist config.bat goto menu
if not exist config.bat goto create_config

call :default
:menu
color f
if exist C:\BlackJack goto starting
if not exist C:\BlackJack goto create


:create
md C:\BlackJack


:starting

if exist config.bat (call config.bat) ELSE (
call :save
call config.bat
)
if exist config.bat del config.bat
(
echo REM Last Save:
echo set house=1000000
echo set playermoney=%playermoney%
echo set glueck=%glueck%
echo set bank=%bank%
echo set gutschein=%gutschein%
echo set joker=%joker%
echo set konto=%konto%
echo set bann=%bann%
echo set sieg=%sieg%
echo set set1=%set1%
echo set set2=%set2%
echo set set3=%set3%
echo set set4=%set4%
echo set set5=%set5%
echo set set6=%set6%
echo set set7=%set7%
echo set set8=%set8%
echo set set9=%set9%
echo set min=%min%
echo set max=%playermoney%
echo set autosave=on
echo color %bf%)>config.bat

if %sieg%==10 goto lup1
if %sieg%==50 goto lup
if %sieg%==100 goto lup2
mode 79,30
title BlackJack By TheCoder TV
cls
echo.
echo.
echo.
echo.
echo                                    		    +================+
echo                            		       	        Money: $%playermoney%
echo                                                         Konto: $%konto%
echo                                                         Joker: %joker%
echo                                                         Bann : %bann%
echo                                    		    +================+
echo.
echo                                      ,
echo                                     / \
echo                                   /` _ `\
echo                                 /`  /\\  `\
echo         BlackJack              ^|   /__\\   ^|             TheCoder TV
echo                                \  /    \\  /
echo                                 '.__, ,__.'
echo                                   _.-^-._
echo                                  `"""""""`
echo.
echo.
echo                     ษออออออออออออออออออออออออออออออออออป
echo                     บ              Menu              บ
echo                     ฬออออออออออออออออออออออออออออออออออน
echo                     บ   1. Play         2. About       บ
echo                     บ   3. Tutorial     4. Configure   บ
echo                     บ   5. Bank         6. Shop        บ
echo                     บ   7. Reset        8. Spint       บ
echo                     ศออออออออออออออออออออออออออออออออออผ
echo.

(
echo money: %playermoney%
echo.
echo konto: %konto%
echo.
echo Bann: %bann%
echo. )> Point.bat

set /p choose=Choose a number: 
if '%choose%' == '1' goto start
if '%choose%' == '2' goto about
if '%choose%' == '3' goto howtoplay
if '%choose%' == '4' call :config
if '%choose%' == '5' goto money_bank
if '%choose%' == '6' goto shop
if '%choose%' == '7' goto reset
if '%choose%' == '8' goto spint
if '%choose%' == '9' goto Item-Shop
if '%choose%' == '#CHEAT001*1' goto oha
cls
echo Invalid Command!
goto menu



:about
title BlackJack v1.5322 By TheCoder TV
mode 80,33
cls
echo.
echo                                   Release: v1.5322
echo.
echo.                               
echo                                                      ษอออออออป
echo                         BlackJack                    บฑฑฑฑฑฑฑบ
echo                                                      บฑBฑฑฑฑฑบ
echo                       By TheCoder TV                 บฑฑฑฑฑฑฑบ
echo                                                      บฑฑฑฑฑฑบ
echo                     Copyright (c) 2019               บฑฑฑฑฑฑฑบ
echo                                                      บฑฑฑฑฑBฑบ
echo                                                      บฑฑฑฑฑฑฑบ
echo                                                      ศอออออออผ
echo.
echo  Release Notes:
echo.
echo  Graphics - Yes
echo.
echo  I have tried to make this game as close as possible to the real game of
echo  Blackjack. If you notice something is not right about the game, please report
echo  it to TheCoderTV@gmail.com, and I will update it as soon as possible. Please
echo  refer to the tutorial section for help on how to play. Also read the other
echo  notes section for more information about BlackJack. If you like the game,
echo  then you are encouraged to redistribute and share.
echo.
echo.
echo your password: %auslesen%
echo.
echo.
echo  ** PLEASE report ANY bugs or crashes that may occur to: TheCoderTV@gmail.com **
echo.             
echo.
echo  b/Back  o/Other Notes
echo.
set /p choose=Choose a letter: 
if '%choose%' == 'b' goto menu
if '%choose%' == 'B' goto menu
if '%choose%' == 'o' call :othernotes
if '%choose%' == 'O' call :othernotes
goto about

:oha
set /a playermoney=%playermoney%+9834
if exist config.bat del config.bat
(
echo REM Last Save:
echo set house=1000000
echo set playermoney=%playermoney%
echo set glueck=%glueck%
echo set bank=%bank%
echo set gutschein=0
echo set joker=0
echo set konto=0
echo set bann=0
echo set sieg=100
echo set set1=%set1%
echo set set2=%set2%
echo set set3=%set3%
echo set set4=%set4%
echo set set5=%set5%
echo set set6=%set6%
echo set set7=%set7%
echo set set8=%set8%
echo set set9=%set9%
echo set min=%min%
echo set max=%playermoney%
echo set autosave=on
echo color %bf%)>config.bat
goto menu


:start
if %playermoney% gtr 1000000 goto cheat
if %playermoney% lss 1000000 goto error_cheat
if %joker% gtr 5 goto cheat
if %joker% lss 5 goto error_cheat
if %konto% gtr 1000000 goto cheat
if %konto% lss 1000000 goto error_cheat

:error_cheat
call :save
call :graphics
cls
set winnings=0
set flipover=
set flip2=
set pturn=
set dturn=
set dnatcomp=
set dealernatural=
set pnatcomp=
set daceturnstatus=1
set hidden=?
set hiddenplus=+?
set pcard1hasace=no
set pcard2hasace=no
set pcard3hasace=no
set pcard4hasace=no
set pcard5hasace=no
set pcard6hasace=no
set dacecount=0
set pacecount=0
set c=
set i=
set insurance=0
set c1r1=
set c2r1=
set c3r1=
set c4r1=
set c5r1=
set c6r1=
set c1r2=
set c2r2=
set c3r2=
set c4r2=
set c5r2=
set c6r2=
set face=
set pcg2=
set dc1r1=
set dc2r1=
set dc3r1=
set dc4r1=
set dc5r1=
set dc6r1=
set dc1r2=
set dc2r2=
set dc3r2=
set dc4r2=
set dc5r2=
set dc6r2=
set dcg2=
set insurancebettext=
set pcard2bar=ษอออออออป
set pcard2bar2=ศอออออออผ
set set8bar=
set set8bar2=
if not '%set8%' == 'onฤฤฤ' (
REM The backside of dcard2
set vv1=บฑฑฑฑฑฑฑบ
set vv3=บฑฑฑฑฑฑฑบ
set vv4=บฑฑฑฑฑฑฑบ
set vv6=บฑฑฑฑฑฑฑบ
set vv8=บฑฑฑฑฑฑฑบ
set vv9=บฑฑฑฑฑฑฑบ
set dcg2=บฑฑฑฑฑฑบ
set set8bar=ษอออออออป
set set8bar2=ศอออออออผ
)
set soft=
set bustfix=
set insurancetext=
set flipoversound=
set drawsound=
set bugadd=0
set dcard2=
REM SPLIT
set split=
set spcard1hasace=no
set spcard2hasace=no
set spcard3hasace=no
set spcard4hasace=no
set spcard5hasace=no
set spcard6hasace=no
set spcard1=0
set spcard2=0
set spcard3=0
set spcard4=0
set spcard5=0
set spcard6=0
set splittext=
set sponcard=0
set spturn=
set splitbettext=
set sp=
set status1=
set status2=
set bustcount=0
set splitbustcount=0
set spacecount=0

if %joker% gtr 0 goto qqqq
if not %joker% gtr 0 goto bet

:qqqq
set /p free=Du hast eine runde frei. soll der joker genutzt werden?
if %free%==ja goto ok_free
if %free%==nein goto no_free

:no_free
cls
goto bet

:ok_free
cls
set /a playermoney=%playermoney% + %playermoney%
if exist config.bat del config.bat
(
echo REM Last Save:
echo set house=1000000
echo set playermoney=%playermoney%
echo set glueck=%glueck%
echo set bank=%bank%
echo set gutschein=%gutschein%
echo set joker=0
echo set konto=0
echo set bann=0
echo set sieg=0
echo set set1=%set1%
echo set set2=%set2%
echo set set3=%set3%
echo set set4=%set4%
echo set set5=%set5%
echo set set6=%set6%
echo set set7=%set7%
echo set set8=%set8%
echo set set9=%set9%
echo set min=%min%
echo set max=%playermoney%
echo set autosave=on
echo color %bf%)>config.bat
goto free_round

:bet
cls
if %house% LSS 1 goto bankrupt
if %playermoney% LSS %min% goto menu
echo Betting minimum: $%min%     Betting maximum: $%playermoney%
echo.
echo How much do you bet? You currently have $%playermoney%
echo Type "m" to go to the main menu
echo.
set /p firstbet=Amount: $
if "%firstbet%" == " " goto bet
if '%firstbet%' == '' goto bet
if '%firstbet%' == 'm' goto menu
if '%firstbet%' == 'M' goto menu
if %firstbet% LSS %min% goto bet
if %firstbet% GTR %max% goto bet
if %firstbet% LEQ %playermoney% goto setbet
goto bet



:surrender
set rest=0
set rest2=0
cls
if not '%pturn%' == 'over' (
set /a playermoney=%playermoney%+%bet%/2
set /a rest=%bet%-%bet%/2
set /a house=%house%+%rest%
set bet=
)
if '%split%' == 'true' (
if not '%spturn%' == 'over' (
set /a playermoney=%playermoney%+%splitbet%/2
set /a rest2=%splitbet%-%splitbet%/2
set /a house=%house%+%rest2%
set splitbet=
)
)
set /a resttext=%rest%+%rest2
echo You surrendered losing $%resttext% of your bet.
echo.
pause
goto start

:free_round
set /a joker=%joker%-1
goto run

:setbet
if not %firstbet% GTR 0 goto bet
set bet=%firstbet%
set /a playermoney=%playermoney%-%bet%
:run
cls
echo Shuffling Cards...
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                    ษอออออออป
echo                                    บฑฑฑฑฑฑฑบ
echo                                    บฑ?ฑฑฑฑฑบ
echo                                    บฑฑฑฑฑฑฑบ
echo                                    บฑฑฑ?ฑฑฑบ
echo                                    บฑฑฑฑฑฑฑบ
echo                                    บฑฑฑฑฑจฑบ
echo                                    บฑฑฑฑฑฑฑบ
echo                                    ศอออออออผ

if '%set7%' == 'onฤฤฤ' (
SNDREC32 /PLAY /CLOSE /EMBEDDING .\SOUND\shuffle1.wav
SNDREC32 /PLAY /CLOSE /EMBEDDING .\SOUND\shuffle2.wav
) ELSE ping localhost -n 4 >nul


:dandpcard3-6
set pcard3=0
set pcard4=0
set pcard5=0
set pcard6=0
set dcard3=0
set dcard4=0
set dcard5=0
set dcard6=0


:pcard1
cls
set poncard=1
set /A r=%RANDOM% %% 13 + 1
if %r% LSS 1 goto pcard1
set pcard1=%r%
if '%r%' == '11' set pcard1=10
if '%r%' == '12' set pcard1=10
if '%r%' == '13' set pcard1=10
if '%r%' == '1' set pcard1=11
if '%r%' == '1' set pcard1hasace=yes
if '%r%' == '1' set /a pacecount=%pacecount%+1
if '%r%' == '1' set firstplayerace=firstcard
set pcg1=บฑฑฑ%r%ฑฑฑบ
if '%r%' == '10' set pcg1=บฑฑฑ10ฑฑบ
if '%r%' == '11' set face=J
if '%r%' == '12' set face=Q
if '%r%' == '13' set face=K

call :suit
if '%r%' == '1' set pcg1=บฑฑฑ%suit%ฑฑฑบ

:pcard2
set poncard=2
set /A r=%RANDOM% %% 13 + 1
if %r% LSS 1 goto pcard2
set pcard2=%r%
if '%r%' == '11' set pcard2=10
if '%r%' == '12' set pcard2=10
if '%r%' == '13' set pcard2=10
if '%r%' == '1' if '%pcard1%' == '11' (set pcard2=1) ELSE set pcard2=11
if '%r%' == '1' set pcard2hasace=yes
if '%r%' == '1' set /a pacecount=%pacecount%+1
set pcg2=บฑฑฑ%r%ฑฑฑบ
if '%r%' == '10' set pcg2=บฑฑฑ10ฑฑบ
if '%r%' == '11' set face=J
if '%r%' == '12' set face=Q
if '%r%' == '13' set face=K
call :suit
if '%r%' == '1' set pcg2=บฑฑฑ%suit%ฑฑฑบ
if '%split%' == 'true' (
set poncard=3
goto pcard2end)

:dcard1
set doncard=1
set /A r=%RANDOM% %% 13 + 1
if %r% LSS 1 goto dcard1
set dcard1=%r%
if '%r%' == '11' set dcard1=10
if '%r%' == '12' set dcard1=10
if '%r%' == '13' set dcard1=10
if '%r%' == '1' set dcard1=11
set dcg1=บฑฑฑ%r%ฑฑฑบ
if '%r%' == '10' set dcg1=บฑฑฑ10ฑฑบ
if '%r%' == '11' set face=J
if '%r%' == '12' set face=Q
if '%r%' == '13' set face=K

call :dsuit
if '%r%' == '1' set /a dacecount=%dacecount%+1
if '%r%' == '1' set dcg1=บฑฑฑ%suit%ฑฑฑบ

if '%dcard1%' == '11' set i=yes
if '%set3%' == 'onฤฤฤ' set i=

if '%set8%' == 'onฤฤฤ' goto skipdcard2
:dcard2
set doncard=2
set /A r=%RANDOM% %% 13 + 1
if %r% LSS 1 goto dcard2
set dcard2=%r%
if '%r%' == '11' set dcard2=10
if '%r%' == '12' set dcard2=10
if '%r%' == '13' set dcard2=10
if '%r%' == '1' if '%dcard1%' == '11' (set dcard2=1) ELSE set dcard2=11
set r2=%r%
if '%r%' == '1' set /a dacecount=%dacecount%+1
if '%set3%' == 'onฤฤฤ' (
set dcg2=บฑฑฑ%r2%ฑฑฑบ
if '%r2%' == '10' set dcg2=บฑฑฑ10ฑฑบ
if '%r2%' == '11' set face=J
if '%r2%' == '12' set face=Q
if '%r2%' == '13' set face=K
call :dsuit
if '%r2%' == '1' set dcg2=บฑฑฑ%suit%ฑฑฑบ

set hidden=%dcard2%
set hiddenplus=
)
if '%set8%' == 'onฤฤฤ' call :setnatural
if '%set8%' == 'onฤฤฤ' exit /b

:skipdcard2
set poncard=3
if '%pcard1hasace%' == 'yes' (
if '%pcard2hasace%' == 'yes' set sp= sp/Split
)
if '%pcard1%' == '%pcard2%' set sp= sp/Split

:natural
if not '%set8%' == 'onฤฤฤ' set /a dealernatural=%dcard1%+%dcard2%
set /a playernatural=%pcard1%+%pcard2%
if '%dealernatural%' == '21' set dnatcomp=yes
if '%playernatural%' == '21' set pnatcomp=yes


:play
mode 79,32
if '%status1%' == 'Bust!' (
if '%status2%' == 'Bust!' goto start
)

cls

if '%skipfix%' == 'on' goto skipfix
REM Fix: This code fixes a bug
if '%pcg2%' == 'บฑฑฑฑฑฑบ' set pcg2=บฑฑฑ10ฑฑบ
if '%pcg2%' == 'บฑฑฑฑฑฑบ' set pcg2=บฑฑฑ10ฑฑบ
if '%pcg2%' == 'บฑฑฑฑฑฑบ' set pcg2=บฑฑฑ10ฑฑบ
if '%pcg2%' == 'บฑฑฑฑฑฑบ' set pcg2=บฑฑฑ10ฑฑบ
REM End Fix
:skipfix

if '%dskipfix%' == 'on' goto dskipfix
REM Fix: This code fixes a bug
if '%dcg2%' == 'บฑฑฑฑฑฑบ' set dcg2=บฑฑฑ10ฑฑบ
if '%dcg2%' == 'บฑฑฑฑฑฑบ' set dcg2=บฑฑฑ10ฑฑบ
if '%dcg2%' == 'บฑฑฑฑฑฑบ' set dcg2=บฑฑฑ10ฑฑบ
if '%dcg2%' == 'บฑฑฑฑฑฑบ' set dcg2=บฑฑฑ10ฑฑบ
REM End Fix
:dskipfix

if %poncard% GTR 3 (
set dd=
set sp=
)
if %sponcard% GTR 3 set dd=
if '%poncard%' == '3' set dd= dd/DoubleDown 
if '%split%' == 'true' (
if %sponcard% LEQ 3 (
set dd= dd/DoubleDown 
)
)
if %insurance% GEQ 1 set insurancebettext= Insurance: $%insurance%
if %pacecount% GEQ 1 set c= c/Change Ace
if %spacecount% GEQ 1 set c= c/Change Ace
if '%split%' == 'true' set splitbettext=  Split Bet: $%splitbet% 
set /a pcardvalue=%pcard1%+%pcard2%+%pcard3%+%pcard4%+%pcard5%+%pcard6%
set /a dcardvalue=%dcard1%+%dcard2%+%dcard3%+%dcard4%+%dcard5%+%dcard6%
set /a spvalue=%spcard1%+%spcard2%+%spcard3%+%spcard4%+%spcard5%+%spcard6%
if '%split%' == 'true' (
set splittext=echo Split Cards: %spcard1%,%spcard2%,%spcard3%,%spcard4%,%spcard5%,%spcard6% = %spvalue%
)
REM Fix
if '%bustfix%' == 'yes' set hidden=%dcard2%
REM End Fix
set /a hiddenvalue=%dcard1%+%hidden%+%dcard3%+%dcard4%+%dcard5%+%dcard6%
echo House: $%house%
echo Dealer's cards: %dcard1%,%hidden%,%dcard3%,%dcard4%,%dcard5%,%dcard6% = %hiddenvalue%%hiddenplus%
echo.
echo   ษอออออออป  %set8bar%  %dc3r1%  %dc4r1%  %dc5r1%  %dc6r1%
echo   %uu1%%uu2%  %vv1%%vv2%  %ww1%%ww2%  %xx1%%xx2%  %yy1%%yy2%  %zz1%%zz2%
echo   %uu3%  %vv3%  %ww3%  %xx3%  %yy3%  %zz3%
echo   %uu4%%uu5%  %vv4%%vv5%  %ww4%%ww5%  %xx4%%xx5%  %yy4%%yy5%  %zz4%%zz5%
echo   %dcg1%  %dcg2%  %dcg3%  %dcg4%  %dcg5%  %dcg6%
echo   %uu6%%uu7%  %vv6%%vv7%  %ww6%%ww7%  %xx6%%xx7%  %yy6%%yy7%  %zz6%%zz7%
echo   %uu8%  %vv8%  %ww8%  %xx8%  %yy8%  %zz8%
echo   %uu9%%uu10%  %vv9%%vv10%  %ww9%%ww10%  %xx9%%xx10%  %yy9%%yy10%  %zz9%%zz10%
echo   ศอออออออผ  %set8bar2%  %dc3r2%  %dc4r2%  %dc5r2%  %dc6r2%
echo.
echo                     Bet:$%bet% %splitbettext% %insurancebettext%
echo.
echo   ษอออออออป  ษอออออออป  %c3r1%  %c4r1%  %c5r1%  %c6r1%
echo   %u1%%u2%  %v1%%v2%  %w1%%w2%  %x1%%x2%  %y1%%y2%  %z1%%z2%
echo   %u3%  %v3%  %w3%  %x3%  %y3%  %z3%
echo   %u4%%u5%  %v4%%v5%  %w4%%w5%  %x4%%x5%  %y4%%y5%  %z4%%z5%
echo   %pcg1%  %pcg2%  %pcg3%  %pcg4%  %pcg5%  %pcg6%
echo   %u6%%u7%  %v6%%v7%  %w6%%w7%  %x6%%x7%  %y6%%y7%  %z6%%z7%
echo   %u8%  %v8%  %w8%  %x8%  %y8%  %z8%
echo   %u9%%u10%  %v9%%v10%  %w9%%w10%  %x9%%x10%  %y9%%y10%  %z9%%z10%
echo   ศอออออออผ  ศอออออออผ  %c3r2%  %c4r2%  %c5r2%  %c6r2%
echo.
echo Money: $%playermoney%
echo Your cards: %pcard1%,%pcard2%,%pcard3%,%pcard4%,%pcard5%,%pcard6% = %pcardvalue% %status1%
%splittext% %status2%
echo.
if '%flip2%' == 'true' goto dealerblackjack


if '%pnatcomp%' == 'yes' (
if '%dcard1%' == '11' call :evenmoney)

if %dcardvalue% GTR 21 goto dealerbust

if not %bustcount% GEQ 1 (
if %pcardvalue% GTR 21 goto bust
)

if not %splitbustcount% GEQ 1 (
if %spvalue% GTR 21 goto splitbust
)

if '%dnatcomp%' == 'yes' (
if '%dcard1%' == '10' goto blackjackcompare)
if '%pnatcomp%' == 'yes' (
if '%set8%' == 'onฤฤฤ' call :dcard2
goto blackjackcompare
)
if '%flipover%' == 'true' goto dealersturn
if '%dturn%' == 'over' goto compare

if '%split%' == 'true' (
if '%pturn%' == 'over' (
if '%spturn%' == 'over' goto flipover
)
)

if not '%split%' == 'true' (
if '%pturn%' == 'over' goto flipover
)

if '%i%' == 'yes' call :insuranceask


if '%dnatcomp%' == 'yes' (
if '%set3%' == 'onฤฤฤ' set flip2=true
if '%set3%' == 'onฤฤฤ' goto play
set dcg2=บฑฑฑ%r2%ฑฑฑบ
if '%r2%' == '10' set dcg2=บฑฑฑ10ฑฑบ
if '%r2%' == '11' set face=J
if '%r2%' == '12' set face=Q
if '%r2%' == '13' set face=K
call :dsuit
if '%r2%' == '1' set dcg2=บฑฑฑ%suit%ฑฑฑบ
set hidden=%dcard2%
set hiddenplus=
set flip2=true
goto play)



echo m/Main Menu  h/Hit  s/Stand  ss/Surrender %dd%%c%%sp%
set /p choose=Choose: 

if '%choose%' == 'debug' set debugexit=true
if '%choose%' == 'Debug' set debugexit=true
if '%choose%' == 'debug' call :debug
if '%choose%' == 'Debug' call :debug

if '%choose%' == 'm' goto menu
if '%choose%' == 'h' goto playerhit
if '%choose%' == 's' goto flipover
if '%choose%' == 'dd' goto doubledown
if '%choose%' == 'c' goto changeace
if '%choose%' == 'ss' goto surrender
if '%choose%' == 'sp' goto split
if '%choose%' == 'M' goto menu
if '%choose%' == 'H' goto playerhit
if '%choose%' == 'S' goto flipover
if '%choose%' == 'DD' goto doubledown
if '%choose%' == 'C' goto changeace
if '%choose%' == 'SS' goto surrender
if '%choose%' == 'SP' goto split


goto play

:doubledown
if '%split%' == 'true' (
:splitddask
cls
SET choose=%choose%
if '%choose%' == 's' goto splitdd
if '%choose%' == 'S' goto splitdd
if '%choose%' == 'i' goto splitddskip
if '%choose%' == 'I' goto splitddskip
echo Initial Cards= %pcardvalue%
echo Split Cards= %spvalue%
echo.
set /p choose=Double down initial cards or split cards? i/s: 
goto splitddask
)
:splitddskip

if %poncard% GTR 3 goto play
cls
echo Money: $%playermoney%
echo.
set /p ddbet=You may double down up to $%bet%. How much do you wish to double down?: $
if %ddbet% GEQ a (
cls
echo Invalid amount!
pause>nul
goto play
)

if %ddbet% GTR %bet% (
cls
echo Invalid amount!
pause>nul
goto play
)

if %ddbet% LEQ %bet% (
set /a playermoney=%playermoney%-%ddbet%
set /a bet=%bet%+%ddbet%
set pturn=over
goto ddhitskip
)
goto play

:playerhit
if '%split%' == 'true' (
:splithitask
cls
SET choose=%choose%
if '%choose%' == 's' goto splithit
if '%choose%' == 'S' goto splithit
if '%choose%' == 'i' goto hitsplitskip
if '%choose%' == 'I' goto hitsplitskip
echo Initial Cards= %pcardvalue%
echo Split Cards= %spvalue%
echo.
set /p choose=Hit split cards or initial cards? i/s: 
goto splithitask
)
:hitsplitskip
if '%pturn%' == 'over' goto play
:ddhitskip
set /A r=%RANDOM% %% 13 + 1
if %r% LSS 1 goto playerhit
if '%r%' == '1' goto playerace
set drawsound=true
if '%set7%' == 'onฤฤฤ' call :previousscreen
set pcg%poncard%=บฑฑฑ%r%ฑฑฑบ
if '%r%' == '10' set pcg%poncard%=บฑฑฑ10ฑฑบ
if '%r%' == '11' set face=J
if '%r%' == '12' set face=Q
if '%r%' == '13' set face=K
if '%r%' == '11' set r=10
if '%r%' == '12' set r=10
if '%r%' == '13' set r=10
if '%poncard%' == '3' set pcard3=%r%
if '%poncard%' == '4' set pcard4=%r%
if '%poncard%' == '5' set pcard5=%r%
if '%poncard%' == '6' set pcard6=%r%
call :suit
if '%poncard%' == '6' set pturn=over
if '%poncard%' == '5' set poncard=6
if '%poncard%' == '4' set poncard=5
if '%poncard%' == '3' set poncard=4
goto play


:playerace
cls
set ace=0
set drawsound=true
if %pcardvalue% GTR 10 (
set ace=1
if '%set7%' == 'onฤฤฤ' call :previousscreen
goto setplayerace
)
if '%set7%' == 'onฤฤฤ' call :previousscreen

:setplayerace
if '%poncard%' == '3' set pcard3=%ace%
if '%poncard%' == '4' set pcard4=%ace%
if '%poncard%' == '5' set pcard5=%ace%
if '%poncard%' == '6' set pcard6=%ace%
if '%poncard%' == '3' set pcard3hasace=yes
if '%poncard%' == '4' set pcard4hasace=yes
if '%poncard%' == '5' set pcard5hasace=yes
if '%poncard%' == '6' set pcard6hasace=yes
if %ace% GEQ 1 (
if %pcardvalue% GTR 10 (
call :suit
set pcg%poncard%=บฑฑฑ%suit%ฑฑฑบ
)
if '%poncard%' == '6' set pturn=over
if '%poncard%' == '5' set poncard=6
if '%poncard%' == '4' set poncard=5
if '%poncard%' == '3' set poncard=4
set /a pacecount=%pacecount%+1
goto play)
call :suit
set pcg%poncard%=บฑฑฑ%suit%ฑฑฑบ


if '%set7%' == 'onฤฤฤ' call :previousscreen

:askacelabel
cls
echo Current total card value=%pcardvalue%
echo.
set /p ace=Ace has been drawn, set ace as 1 or 11? 
if '%ace%' == '11' goto setplayerace
if '%ace%' == '1' goto setplayerace
goto askacelabel





:flipover
set /a pcardvalue=%pcard1%+%pcard2%+%pcard3%+%pcard4%+%pcard5%+%pcard6%
if %pcardvalue% LEQ 11 (
if '%pcard1%' == '1' (
set pcard1=11
goto flipover)
if '%pcard2%' == '1' (
set pcard2=11
goto flipover)
if '%pcard3%' == '1' (
set pcard3=11
goto flipover)
if '%pcard4%' == '1' (
set pcard4=11
goto flipover)
if '%pcard5%' == '1' (
set pcard5=11
goto flipover)
if '%pcard6%' == '1' (
set pcard6=11
goto flipover)
)

if %spvalue% LEQ 11 (
if '%spcard1%' == '1' (
set spcard1=11
goto flipover)
if '%spcard2%' == '1' (
set spcard2=11
goto flipover)
if '%spcard3%' == '1' (
set spcard3=11
goto flipover)
if '%spcard4%' == '1' (
set spcard4=11
goto flipover)
if '%spcard5%' == '1' (
set spcard5=11
goto flipover)
if '%spcard6%' == '1' (
set spcard6=11
goto flipover)
)
if '%set8%' == 'onฤฤฤ' (
call :dcard2
call :setnatural
)
set pturn=over
set flipover=true
if '%set3%' == 'onฤฤฤ' (
set doncard=3
goto play
)
set flipoversound=true
if '%set7%' == 'onฤฤฤ' call :previousscreen
set dcg2=บฑฑฑ%r2%ฑฑฑบ
if '%r2%' == '10' set dcg2=บฑฑฑ10ฑฑบ
if '%r2%' == '11' set face=J
if '%r2%' == '12' set face=Q
if '%r2%' == '13' set face=K
call :dsuit
if '%r2%' == '1' set dcg2=บฑฑฑ%suit%ฑฑฑบ
set set8bar=ษอออออออป
set set8bar2=ศอออออออผ
set hidden=%dcard2%
set hiddenplus=

if not '%dealernatural%' == '21' (
set /a house=%house%+%insurance%
set insurancebettext=
set insurance=0
)
set doncard=3
goto play



:dealersturn
set pturn=over
if '%dturn%' == 'over' goto compare
ping localhost -n 3 >nul
if %dcardvalue% GTR 21 goto dealerbust


if '%set9%' == 'onฤฤฤ' if %dcardvalue% GEQ %pcardvalue% goto compare
if '%split%' == 'true' (
if '%set9%' == 'onฤฤฤ' if %dcardvalue% GEQ %spvalue% goto compare
)

if '%set1%' == 'onฤฤฤ' if %dcardvalue% GEQ 17 (
if %dcardvalue% GEQ %pcardvalue% goto compare
)
if '%split%' == 'true' (
if '%set1%' == 'onฤฤฤ' if %dcardvalue% GEQ 17 (
if %dcardvalue% GEQ %spvalue% goto compare
)
)

if '%set1%' == 'onฤฤฤ' (
if '%split%' == 'true' (
if %spvalue% LEQ 21 (
if %pcardvalue% GTR %spvalue% (
if %dcardvalue% LSS %spvalue% goto dealerhit
)
)
)
)

if '%set1%' == 'onฤฤฤ' (
if %pcardvalue% LEQ 21 (
if %dcardvalue% LSS %pcardvalue% goto dealerhit
)
)


REM Soft 17
if '%dcardvalue%' == '17' (
if '%set2%' == 'onฤฤฤ' (
if not '%soft%' == 'no' (
if '%dcard1%' == '11' goto soft17jump
if '%dcard2%' == '11' goto soft17jump
if '%dcard3%' == '11' goto soft17jump
if '%dcard4%' == '11' goto soft17jump
if '%dcard5%' == '11' goto soft17jump
if '%dcard6%' == '11' goto soft17jump
goto nosoft17
:soft17jump
set soft=no
goto dealerhit
)
)
)
:nosoft17
)

if %dcardvalue% LSS 17 goto dealerhit
goto compare


:dealerhit
set /A r=%RANDOM% %% 13 + 1
if %r% LSS 1 goto dealerhit
if '%r%' == '1' goto dealerace
set drawsound=true
if '%set7%' == 'onฤฤฤ' call :previousscreen
set dcg%doncard%=บฑฑฑ%r%ฑฑฑบ
if '%r%' == '10' set dcg%doncard%=บฑฑฑ10ฑฑบ
if '%r%' == '11' set face=J
if '%r%' == '12' set face=Q
if '%r%' == '13' set face=K
if '%r%' == '11' set r=10
if '%r%' == '12' set r=10
if '%r%' == '13' set r=10
if '%doncard%' == '3' set dcard3=%r%
if '%doncard%' == '4' set dcard4=%r%
if '%doncard%' == '5' set dcard5=%r%
if '%doncard%' == '6' set dcard6=%r%
call :dsuit
if '%doncard%' == '6' set dturn=over
if '%doncard%' == '5' set doncard=6
if '%doncard%' == '4' set doncard=5
if '%doncard%' == '3' set doncard=4

set /a dcardvalue=%dcard1%+%dcard2%+%dcard3%+%dcard4%+%dcard5%+%dcard6%
goto play


:dealerace
set drawsound=true
if '%set7%' == 'onฤฤฤ' call :previousscreen
set /a dacecount=%dacecount%+1
if %dcardvalue% LEQ 10 set ace=11
if %dcardvalue% GTR 10 set ace=1
if '%doncard%' == '3' set dcard3=%ace%
if '%doncard%' == '4' set dcard4=%ace%
if '%doncard%' == '5' set dcard5=%ace%
if '%doncard%' == '6' set dcard6=%ace%
call :dsuit
set dcg%doncard%=บฑฑฑ%suit%ฑฑฑบ
if '%doncard%' == '6' set dturn=over
if '%doncard%' == '5' set doncard=6
if '%doncard%' == '4' set doncard=5
if '%doncard%' == '3' set doncard=4
goto play



::#################status#################


:blackjackcompare
if '%dnatcomp%' == 'yes' goto blackjackcompare2
goto blackjack

:blackjackcompare2
if '%pnatcomp%' == 'yes' (
if '%set8%' == 'onฤฤฤ' (
if '%set7%' == 'onฤฤฤ' (
set drawsound=true
) ELSE ping localhost -n 2 >nul
call :previousscreen
set dcg2=บฑฑฑ%r2%ฑฑฑบ
if '%r2%' == '10' set dcg2=บฑฑฑ10ฑฑบ
if '%r2%' == '11' set face=J
if '%r2%' == '12' set face=Q
if '%r2%' == '13' set face=K
call :dsuit
if '%r2%' == '1' set dcg2=บฑฑฑ%suit%ฑฑฑบ
set hidden=%dcard2%
set hiddenplus=
set set8bar=ษอออออออป
set set8bar2=ศอออออออผ
call :previousscreen
)
goto push
)
goto dealerblackjack


:push
ping localhost -n 2 >nul
cls
set /a playermoney=%playermoney%+%bet%
set bet=
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo  _______                                                     _______          
echo (  ____ )^|\     /^|                                          (  ____ \^|\     /^|
echo ^| (    )^|^| )   ( ^|                                          ^| (    \/^| )   ( ^|
echo ^| (____)^|^| ^|   ^| ^|                                          ^| (_____ ^| (___) ^|
echo ^|  _____)^| ^|   ^| ^|                                          (_____  )^|  ___  ^|
echo ^| (      ^| ^|   ^| ^|                                                ) ^|^| (   ) ^|
echo ^| )      ^| (___) ^|                                          /\____) ^|^| )   ( ^|
echo ^|/       (_______)                                          \_______)^|/     \^|
ping localhost -n 1 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo       _______                                            _______          
echo      (  ____ )^|\     /^|                                 (  ____ \^|\     /^|
echo      ^| (    )^|^| )   ( ^|                                 ^| (    \/^| )   ( ^|
echo      ^| (____)^|^| ^|   ^| ^|                                 ^| (_____ ^| (___) ^|
echo      ^|  _____)^| ^|   ^| ^|                                 (_____  )^|  ___  ^|
echo      ^| (      ^| ^|   ^| ^|                                       ) ^|^| (   ) ^|
echo      ^| )      ^| (___) ^|                                 /\____) ^|^| )   ( ^|
echo      ^|/       (_______)                                 \_______)^|/     \^|
ping localhost -n 1 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo            _______                                  _______          
echo           (  ____ )^|\     /^|                       (  ____ \^|\     /^|
echo           ^| (    )^|^| )   ( ^|                       ^| (    \/^| )   ( ^|
echo           ^| (____)^|^| ^|   ^| ^|                       ^| (_____ ^| (___) ^|
echo           ^|  _____)^| ^|   ^| ^|                       (_____  )^|  ___  ^|
echo           ^| (      ^| ^|   ^| ^|                             ) ^|^| (   ) ^|
echo           ^| )      ^| (___) ^|                       /\____) ^|^| )   ( ^|
echo           ^|/       (_______)                       \_______)^|/     \^|
ping localhost -n 1 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                 _______                        _______          
echo                (  ____ )^|\     /^|             (  ____ \^|\     /^|
echo                ^| (    )^|^| )   ( ^|             ^| (    \/^| )   ( ^|
echo                ^| (____)^|^| ^|   ^| ^|             ^| (_____ ^| (___) ^|
echo                ^|  _____)^| ^|   ^| ^|             (_____  )^|  ___  ^|
echo                ^| (      ^| ^|   ^| ^|                   ) ^|^| (   ) ^|
echo                ^| )      ^| (___) ^|             /\____) ^|^| )   ( ^|
echo                ^|/       (_______)             \_______)^|/     \^|
ping localhost -n 1 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                      _______              _______          
echo                     (  ____ )^|\     /^|   (  ____ \^|\     /^|
echo                     ^| (    )^|^| )   ( ^|   ^| (    \/^| )   ( ^|
echo                     ^| (____)^|^| ^|   ^| ^|   ^| (_____ ^| (___) ^|
echo                     ^|  _____)^| ^|   ^| ^|   (_____  )^|  ___  ^|
echo                     ^| (      ^| ^|   ^| ^|         ) ^|^| (   ) ^|
echo                     ^| )      ^| (___) ^|   /\____) ^|^| )   ( ^|
echo                     ^|/       (_______)   \_______)^|/     \^|
ping localhost -n 1 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                       _______            _______          
echo                      (  ____ )^|\     /^| (  ____ \^|\     /^|
echo                      ^| (    )^|^| )   ( ^| ^| (    \/^| )   ( ^|
echo                      ^| (____)^|^| ^|   ^| ^| ^| (_____ ^| (___) ^|
echo                      ^|  _____)^| ^|   ^| ^| (_____  )^|  ___  ^|
echo                      ^| (      ^| ^|   ^| ^|       ) ^|^| (   ) ^|
echo                      ^| )      ^| (___) ^| /\____) ^|^| )   ( ^|
echo                      ^|/       (_______) \_______)^|/     \^|
pause>nul
goto start

:blackjack
ping localhost -n 2 >nul
cls
echo.
echo.
echo                    _-_ _,,     ,,                  ,,   
echo                       -/  )    ^|^|     _            ^|^|   
echo                      ~^|^|_^<     ^|^|    ^< \,    _-_   ^|^|/\ 
echo                       ^|^| \\    ^|^|    /-^|^|   ^|^|     ^|^|_^< 
echo                       ,/--^|^|   ^|^|   (( ^|^|   ^|^|     ^|^| ^| 
echo                      _--_-'    \\    \/\\   \\,/   \\,\ 
echo                     ( 
echo.
echo                                       ,
echo                                      / \
echo                                    /` _ `\
echo                                  /`  /\\  `\
echo                                 ^|   /__\\   ^|
echo                                 \  /    \\  /
echo                                  '.__, ,__.'
echo                                    _.-^-._
echo                                   `"""""""`
echo.
echo                 _-_ _,,               ,           ,,      /\ 
echo                    -/  )      _      ^|^|           ^|^|      \/ 
echo                   ~^|^|_^<      ^< \,   =^|^|=    _-_   ^|^|/\\   }{ 
echo                    ^|^| \\     /-^|^|    ^|^|    ^|^|     ^|^| ^|^|   \/ 
echo                    ,/--^|^|   (( ^|^|    ^|^|    ^|^|     ^|^| ^|^|    
echo                   _--_-'     \/\\    \\,   \\,/   \\ ^|/   ^<^> 
echo                  (                                  _/
set /a playermoney=%playermoney%+%bet%
set /a playermoney=%playermoney%+%bet%*3/2
set /a sieg=%sieg%+1
set /a house=%house%-%bet%*3/2
set bet=
pause>nul
goto start

:dealerblackjack
ping localhost -n 2 >nul
cls
set /a insurancemirror=%insurance%*2
if %insurance% GEQ 1 set insurancetext=You receive $%insurancemirror% from insurance.
set /a house=%house%+%bet%
if '%set8%' == 'onฤฤฤ' (
if '%split%' == 'true' (
set /a house=%house%+%splitbet%
set /a bet=%bet%+%splitbet%
set splitbet=
)
)
set /a playermoney=%playermoney%+%insurance%
set /a playermoney=%playermoney%+%insurance%*2
set /a house=%house%-%insurance%*2
echo Dealer's BlackJack!
echo.
echo You Lost: $%bet%
echo.%insurancetext%
set bet=
pause
goto start

:dealerbust
if '%dcard1%' == '11' (set dcard1=1
goto play)
if '%dcard2%' == '11' (
set /a dcardvalue=%dcard1%+%dcard2%+%dcard3%+%dcard4%+%dcard5%+%dcard6%
set dcard2=1
set hidden=%dcard2%
set /a dcardvalue=%dcard1%+%dcard2%+%dcard3%+%dcard4%+%dcard5%+%dcard6%
set bustfix=yes
goto play
)
if '%dcard3%' == '11' (set dcard3=1
goto play)
if '%dcard4%' == '11' (set dcard4=1
goto play)
if '%dcard5%' == '11' (set dcard5=1
goto play)
if '%dcard6%' == '11' (set dcard6=1
goto play)
ping localhost -n 2 >nul
cls

if '%split%' == 'true' (
if not '%status1%' == 'Bust!' (
set /a playermoney=%playermoney%+%bet%*2
set /a house=%house%-%bet%
set winnings=%bet%
set bet=
)
)
if '%split%' == 'true' (
if not '%status2%' == 'Bust!' (
set /a playermoney=%playermoney%+%splitbet%*2
set /a house=%house%-%splitbet%
set /a winnings=%winnings%+%splitbet%
set splitbet=
)
)
if '%split%' == 'true' (
echo Dealer bust!
echo.
echo Winnings: $%winnings%
pause
goto start
)
set /a playermoney=%playermoney%+%bet%*2
set /a house=%house%-%bet%
set /a sieg=%sieg%+1
echo Dealer bust!
echo.
echo Winnings: $%bet%
echo.
set bet=
pause
goto start

:bust
set s1=0
set s2=0
set s3=0
set s4=0
set s5=0
set s6=0
if '%pcard1%' == '11' set s1=10
if '%pcard2%' == '11' set s2=10
if '%pcard3%' == '11' set s3=10
if '%pcard4%' == '11' set s4=10
if '%pcard5%' == '11' set s5=10
if '%pcard6%' == '11' set s6=10
set /a unwinable=%pcardvalue%-%s1%-%s2%-%s3%-%s4%-%s5%-%s6%
if %unwinable% GTR 21 goto bust2
if '%pcard1%' == '11' (
set pcard1=1
goto play)
if '%pcard2%' == '11' (
set pcard2=1
goto play)
if '%pcard3%' == '11' (
set pcard3=1
goto play)
if '%pcard4%' == '11' (
set pcard4=1
goto play)
if '%pcard5%' == '11' (
set pcard5=1
goto play)
if '%pcard6%' == '11' (
set pcard6=1
goto play)

:bust2
ping localhost -n 2 >nul
cls
set /a house=%house%+%bet%
echo You bust!
echo.
if not '%split%' == 'true' (
echo You lost: $%bet%
set bet=
echo.
)
pause
if '%split%' == 'true' (
set /a bustcount=%bustcount%+1
set status1=Bust!
set pturn=over
goto play
)
goto start

:compare
if '%split%' == 'true' goto splitcompare
if '%set5%' == 'onฤฤฤ' (
if %pcardvalue% EQU %dcardvalue% goto lose
)
if %pcardvalue% EQU %dcardvalue% goto push
if %pcardvalue% GTR %dcardvalue% goto win
if %dcardvalue% GTR %pcardvalue% goto lose

:splitcompare
cls
echo Dealers total card value: %dcardvalue%
echo.

REM SPLIT PUSH######################
if not '%set5%' == 'onฤฤฤ' goto splitpushskip
if %spvalue% EQU %dcardvalue% (
if '%spvalue%' == '21' (
if %sponcard% LSS %doncard% (
echo Split total card value: %spvalue%, Win!
set /a playermoney=%playermoney%+%splitbet%*2
set /a sieg=%sieg%+1
set /a house=%house%-%splitbet%
set splitbet=
goto skp1
)
)
)
if %spvalue% EQU %dcardvalue% (
echo Split total card value: %spvalue%, Lose!
set /a house=%house%+%splitbet%
set splitbet=
)
:skp1
if %pcardvalue% EQU %dcardvalue% (
if '%pcardvalue%' == '21' (
if %poncard% LSS %doncard% (
echo Initial total card value: %pcardvalue%, Win!
set /a playermoney=%playermoney%+%bet%*2
set /a sieg=%sieg%+1
set /a house=%house%-%bet%
set bet=
goto skp2
)
)
)
if %pcardvalue% EQU %dcardvalue% (
echo Initial total card value: %pcardvalue%, Lose!
set /a house=%house%+%bet% 
set bet=
)
:skp2
goto skippush
:splitpushskip
if %spvalue% EQU %dcardvalue% (
if '%spvalue%' == '21' (
if %sponcard% LSS %doncard% (
echo Split total card value: %spvalue%, Win!
set /a playermoney=%playermoney%+%splitbet%*2
set /a sieg=%sieg%+1
set /a house=%house%-%splitbet%
set splitbet=
goto skp3
)
)
)
if %spvalue% EQU %dcardvalue% (
echo Split total card value: %spvalue%, Push!
set /a playermoney=%playermoney%+%splitbet%
set splitbet=
)
:skp3
if %pcardvalue% EQU %dcardvalue% (
if '%pcardvalue%' == '21' (
if %poncard% LSS %doncard% (
echo Initial total card value: %pcardvalue%, Win!
set /a playermoney=%playermoney%+%bet%*2
set /a sieg=%sieg%+1
set /a house=%house%-%bet%
set bet=
goto skp4
)
)
)
if %pcardvalue% EQU %dcardvalue% (
echo Initial total card value: %pcardvalue%, Push!
set /a playermoney=%playermoney%+%bet% 
set bet=
)
:skp4
REM SPLIT PUSH######################
:skippush

if %spvalue% GTR %dcardvalue% (
if %spvalue% GTR 21 goto toohigh1
echo Split total card value: %spvalue%, Win!
set /a playermoney=%playermoney%+%splitbet%*2
set /a sieg=%sieg%+1
set /a house=%house%-%splitbet%
set splitbet=
) ELSE (
if %spvalue% LSS %dcardvalue% (
set /a house=%house%+%splitbet%
set splitbet=
:toohigh1
echo Split total card value: %spvalue%, Lose!
)
)
if %pcardvalue% GTR %dcardvalue% (
if %pcardvalue% GTR 21 goto toohigh2
echo Initial total card value: %pcardvalue%, Win!
set /a playermoney=%playermoney%+%bet%*2
set /a sieg=%sieg%+1
set /a house=%house%-%bet%
set bet=
) ELSE (
if %pcardvalue% LSS %dcardvalue% (
set /a house=%house%+%bet%
set bet=
:toohigh2
echo Initial total card value: %pcardvalue%, Lose!
)
)
echo.
pause
goto start

:win
ping localhost -n 2 >nul
cls
set /a playermoney=%playermoney%+(%bet%*2)
set /a sieg=%sieg% +1
set /a house=%house%-%bet%
set bet=
echo You win!
if exist config.bat del config.bat
(
echo REM Last Save:
echo set house=%house%
echo set playermoney=%playermoney%
echo set glueck=%glueck%
echo set bank=%bank%
echo set gutschein=%gutschein%
echo set konto=%konto%
echo set joker=%joker%
echo set bann=%bann%
echo set sieg=%sieg%
echo set set1=%set1%
echo set set2=%set2%
echo set set3=%set3%
echo set set4=%set4%
echo set set5=%set5%
echo set set6=%set6%
echo set set7=%set7%
echo set set8=%set8%
echo set set9=%set9%
echo set min=%min%
echo set max=%max%
echo set autosave=on
echo color %bf%)>config.bat
echo.
echo Player: %pcardvalue% Dealer: %dcardvalue%
echo.
pause
goto start

:lose
ping localhost -n 2 >nul
cls
set /a house=%house%+%bet%
echo You lose!
echo.
echo Player: %pcardvalue% Dealer: %dcardvalue%
echo.
echo You lost: $%bet%
set bet=
echo.
pause
goto start


:bankrupt
cls
echo The House has gone bankrupt!
echo.
echo Generating more money...
set house=1000000
call :save
pause>nul
goto start




:surrender
set rest=0
set rest2=0
cls
if not '%pturn%' == 'over' (
set /a playermoney=%playermoney%+%bet%/2
set /a rest=%bet%-%bet%/2
set /a house=%house%+%rest%
set bet=
)
if '%split%' == 'true' (
if not '%spturn%' == 'over' (
set /a playermoney=%playermoney%+%splitbet%/2
set /a rest2=%splitbet%-%splitbet%/2
set /a house=%house%+%rest2%
set splitbet=
)
)
set /a resttext=%rest%+%rest2
echo You surrendered losing $%resttext% of your bet.
echo.
pause
goto start


::################Change Ace#################

:changeace
if '%split%' == 'true' (
cls
SET choose=%choose%
if '%choose%' == 's' goto schangeace
if '%choose%' == 'S' goto schangeace
if '%choose%' == 'i' goto changeaceaskskip
if '%choose%' == 'I' goto changeaceaskskip
echo Initial Cards= %pcardvalue%
echo Split Cards= %spvalue%
echo.
set /p choose=Change ace for split cards or initial cards? i/s: 
goto changeace
)
:changeaceaskskip

if %pacecount% LSS 1 goto play
if '%pturn%' == 'over' goto play
set /a futurecardtotal=%pcardvalue%+10
if '%pcard1%' == '11' set /a futurecardtotal=%pcardvalue%-10
if '%pcard2%' == '11' set /a futurecardtotal=%pcardvalue%-10
if '%pcard3%' == '11' set /a futurecardtotal=%pcardvalue%-10
if '%pcard4%' == '11' set /a futurecardtotal=%pcardvalue%-10
if '%pcard5%' == '11' set /a futurecardtotal=%pcardvalue%-10
if '%pcard6%' == '11' set /a futurecardtotal=%pcardvalue%-10
if %futurecardtotal% GTR 21 set futurecardtotal=N/A
:pickacecard
cls
if '%pcard1hasace%' == 'yes' echo Card 1 is an ace with a value of %pcard1%
if '%pcard2hasace%' == 'yes' echo Card 2 is an ace with a value of %pcard2%
if '%pcard3hasace%' == 'yes' echo Card 3 is an ace with a value of %pcard3%
if '%pcard4hasace%' == 'yes' echo Card 4 is an ace with a value of %pcard4%
if '%pcard5hasace%' == 'yes' echo Card 5 is an ace with a value of %pcard5%
if '%pcard6hasace%' == 'yes' echo Card 6 is an ace with a value of %pcard6%
echo.
echo Current total card value=%pcardvalue%
echo Total card value after switch=%futurecardtotal%
echo.
echo Press "c" to cancel
set /a newmirrorvalue=%pcardvalue%+10
set /p choose=Pick a card #: 
if '%choose%' == 'c' goto play
if '%choose%' == 'C' goto play
if '%choose%' == '1' goto acemirror1
if '%choose%' == '2' goto acemirror2
if '%choose%' == '3' goto acemirror3
if '%choose%' == '4' goto acemirror4
if '%choose%' == '5' goto acemirror5
if '%choose%' == '6' goto acemirror6
goto pickacecard

:acemirror1
if '%pcard1hasace%' == 'no' goto pickacecard
if '%pcard1%' == '1' goto acemirror1b
:acemirror1a
if '%pcard1%' == '1' (set pcard1=11) & goto play
if '%pcard1%' == '11' (set pcard1=1) & goto play
:acemirror1b
if %newmirrorvalue% GTR 21 goto invalid
goto acemirror1a

:acemirror2
if '%pcard2hasace%' == 'no' goto pickacecard
if '%pcard2%' == '1' goto acemirror2b
:acemirror2a
if '%pcard2%' == '1' (set pcard2=11) & goto play
if '%pcard2%' == '11' (set pcard2=1) & goto play
:acemirror2b
if %newmirrorvalue% GTR 21 goto invalid
goto acemirror2a

:acemirror3
if '%pcard3hasace%' == 'no' goto pickacecard
if '%pcard3%' == '1' goto acemirror3b
:acemirror3a
if '%pcard3%' == '1' (set pcard3=11) & goto play
if '%pcard3%' == '11' (set pcard3=1) & goto play
:acemirror3b
if %newmirrorvalue% GTR 21 goto invalid
goto acemirror3a

:acemirror4
if '%pcard4hasace%' == 'no' goto pickacecard
if '%pcard4%' == '1' goto acemirror4b
:acemirror4a
if '%pcard4%' == '1' (set pcard4=11) & goto play
if '%pcard4%' == '11' (set pcard4=1) & goto play
:acemirror4b
if %newmirrorvalue% GTR 21 goto invalid
goto acemirror4a

:acemirror5
if '%pcard5hasace%' == 'no' goto pickacecard
if '%pcard5%' == '1' goto acemirror5b
:acemirror5a
if '%pcard5%' == '1' (set pcard5=11) & goto play
if '%pcard5%' == '11' (set pcard5=1) & goto play
:acemirror5b
if %newmirrorvalue% GTR 21 goto invalid
goto acemirror5a

:acemirror6
if '%pcard6hasace%' == 'no' goto pickacecard
if '%pcard6%' == '1' goto acemirror6b
:acemirror6a
if '%pcard6%' == '1' (set pcard6=11) & goto play
if '%pcard6%' == '11' (set pcard6=1) & goto play
:acemirror6b
if %newmirrorvalue% GTR 21 goto invalid
goto acemirror6a

REM SPLIT CHANGE ACE

:schangeace
if %spacecount% LSS 1 goto play
if '%spturn%' == 'over' goto play
set /a futurecardtotal=%spvalue%+10
if '%spcard1%' == '11' set /a futurecardtotal=%spvalue%-10
if '%spcard2%' == '11' set /a futurecardtotal=%spvalue%-10
if '%spcard3%' == '11' set /a futurecardtotal=%spvalue%-10
if '%spcard4%' == '11' set /a futurecardtotal=%spvalue%-10
if '%spcard5%' == '11' set /a futurecardtotal=%spvalue%-10
if '%spcard6%' == '11' set /a futurecardtotal=%spvalue%-10
if %futurecardtotal% GTR 21 set futurecardtotal=N/A
:spickacecard
cls
if '%spcard1hasace%' == 'yes' echo Split Card 1 is an ace with a value of %spcard1%
if '%spcard2hasace%' == 'yes' echo Split Card 2 is an ace with a value of %spcard2%
if '%spcard3hasace%' == 'yes' echo Split Card 3 is an ace with a value of %spcard3%
if '%spcard4hasace%' == 'yes' echo Split Card 4 is an ace with a value of %spcard4%
if '%spcard5hasace%' == 'yes' echo Split Card 5 is an ace with a value of %spcard5%
if '%spcard6hasace%' == 'yes' echo Split Card 6 is an ace with a value of %spcard6%
echo.
echo Current total card value=%spvalue%
echo Total card value after switch=%futurecardtotal%
echo.
echo Press "c" to cancel
set /a newmirrorvalue=%spvalue%+10
set /p choose=Pick a card #: 
if '%choose%' == 'c' goto play
if '%choose%' == 'C' goto play
if '%choose%' == '1' goto sacemirror1
if '%choose%' == '2' goto sacemirror2
if '%choose%' == '3' goto sacemirror3
if '%choose%' == '4' goto sacemirror4
if '%choose%' == '5' goto sacemirror5
if '%choose%' == '6' goto sacemirror6
goto spickacecard

:sacemirror1
if '%spcard1hasace%' == 'no' goto spickacecard
if '%spcard1%' == '1' goto sacemirror1b
:sacemirror1a
if '%spcard1%' == '1' (set spcard1=11) & goto play
if '%spcard1%' == '11' (set spcard1=1) & goto play
:sacemirror1b
if %newmirrorvalue% GTR 21 goto invalid
goto sacemirror1a

:sacemirror2
if '%spcard2hasace%' == 'no' goto spickacecard
if '%spcard2%' == '1' goto sacemirror2b
:sacemirror2a
if '%spcard2%' == '1' (set spcard2=11) & goto play
if '%spcard2%' == '11' (set spcard2=1) & goto play
:sacemirror2b
if %newmirrorvalue% GTR 21 goto invalid
goto sacemirror2a

:sacemirror3
if '%spcard3hasace%' == 'no' goto spickacecard
if '%spcard3%' == '1' goto sacemirror3b
:sacemirror3a
if '%spcard3%' == '1' (set spcard3=11) & goto play
if '%spcard3%' == '11' (set spcard3=1) & goto play
:sacemirror3b
if %newmirrorvalue% GTR 21 goto invalid
goto sacemirror3a

:sacemirror4
if '%spcard4hasace%' == 'no' goto spickacecard
if '%spcard4%' == '1' goto sacemirror4b
:sacemirror4a
if '%spcard4%' == '1' (set spcard4=11) & goto play
if '%spcard4%' == '11' (set spcard4=1) & goto play
:sacemirror4b
if %newmirrorvalue% GTR 21 goto invalid
goto sacemirror4a

:sacemirror5
if '%spcard5hasace%' == 'no' goto spickacecard
if '%spcard5%' == '1' goto sacemirror5b
:sacemirror5a
if '%spcard5%' == '1' (set spcard5=11) & goto play
if '%spcard5%' == '11' (set spcard5=1) & goto play
:sacemirror5b
if %newmirrorvalue% GTR 21 goto invalid
goto sacemirror5a

:sacemirror6
if '%spcard6hasace%' == 'no' goto spickacecard
if '%spcard6%' == '1' goto sacemirror6b
:sacemirror6a
if '%spcard6%' == '1' (set spcard6=11) & goto play
if '%spcard6%' == '11' (set spcard6=1) & goto play
:sacemirror6b
if %newmirrorvalue% GTR 21 goto invalid
goto sacemirror6a

:invalid
cls
echo You can't do that!
echo.
pause
goto play


:graphics
REM ##############Graphics##############
set u1=
set u2=
set u3=
set u4=
set u5=
set u6=
set u7=
set u8=
set u9=
set u10=

set v1=
set v2=
set v3=
set v4=
set v5=
set v6=
set v7=
set v8=
set v9=
set v10=

set w1=
set w2=
set w3=
set w4=
set w5=
set w6=
set w7=
set w8=
set w9=
set w10=

set x1=
set x2=
set x3=
set x4=
set x5=
set x6=
set x7=
set x8=
set x9=
set x10=

set y1=
set y2=
set y3=
set y4=
set y5=
set y6=
set y7=
set y8=
set y9=
set y10=

set z1=
set z2=
set z3=
set z4=
set z5=
set z6=
set z7=
set z8=
set z9=
set z10=


set pcg1=
set pcg2=
set pcg3=
set pcg4=
set pcg5=
set pcg6=

:hqD
set uu1=
set uu2=
set uu3=
set uu4=
set uu5=
set uu6=
set uu7=
set uu8=
set uu9=
set uu10=

set vv1=
set vv2=
set vv3=
set vv4=
set vv5=
set vv6=
set vv7=
set vv8=
set vv9=
set vv10=

set ww1=
set ww2=
set ww3=
set ww4=
set ww5=
set ww6=
set ww7=
set ww8=
set ww9=
set ww10=

set xx1=
set xx2=
set xx3=
set xx4=
set xx5=
set xx6=
set xx7=
set xx8=
set xx9=
set xx10=

set yy1=
set yy2=
set yy3=
set yy4=
set yy5=
set yy6=
set yy7=
set yy8=
set yy9=
set yy10=

set zz1=
set zz2=
set zz3=
set zz4=
set zz5=
set zz6=
set zz7=
set zz8=
set zz9=
set zz10=



set dcg1=
set dcg2=
set dcg3=
set dcg4=
set dcg5=
set dcg6=
exit /b

:suit
if not '%poncard%' == '3' goto hq4
set c3r1=ษอออออออป
set c3r2=ศอออออออผ

:hq4
if not '%poncard%' == '4' goto hq5
set c4r1=ษอออออออป
set c4r2=ศอออออออผ

:hq5
if not '%poncard%' == '5' goto hq6
set c5r1=ษอออออออป
set c5r2=ศอออออออผ

:hq6
if not '%poncard%' == '6' goto startsuit
set c6r1=ษอออออออป
set c6r2=ศอออออออผ

:startsuit

Set /a ran=(%Random% %%4)+1
Set /a ran=(%Random% %%4)+1
Set /a ran=(%Random% %%4)+1
Set /a ran=(%Random% %%4)+1
Set /a ran=(%Random% %%4)+1
Set /a ran=(%Random% %%4)+1
if %ran% LSS 1 goto suit
if %ran% GTR 4 goto suit
if '%ran%' == '1' set suit=
if '%ran%' == '2' set suit=
if '%ran%' == '3' set suit=
if '%ran%' == '4' set suit=

if '%poncard%' == '1' set cvn=u
if '%poncard%' == '2' set cvn=v
if '%poncard%' == '3' set cvn=w
if '%poncard%' == '4' set cvn=x
if '%poncard%' == '5' set cvn=y
if '%poncard%' == '6' set cvn=z

set namevar=pcard%poncard%
if '%namevar%' == 'pcard1' set finder=%pcard1%
if '%namevar%' == 'pcard2' set finder=%pcard2%
if '%namevar%' == 'pcard3' set finder=%pcard3%
if '%namevar%' == 'pcard4' set finder=%pcard4%
if '%namevar%' == 'pcard5' set finder=%pcard5%
if '%namevar%' == 'pcard6' set finder=%pcard6%

set %cvn%1=บฑฑฑฑฑ
call :filler
set %cvn%10=ฑฑบ


if '%finder%' == '1' (
set %cvn%3=บฑAฑฑฑฑฑบ
set %cvn%8=บฑฑฑฑฑAฑบ)

if '%finder%' == '2' (
set %cvn%1=บฑ%suit%ฑฑฑ
set %cvn%10=%suit%ฑบ)

if '%finder%' == '3' (
set %cvn%1=บฑ%suit%ฑฑฑ
set %cvn%2=%suit%ฑบ
set %cvn%8=บฑฑฑ%suit%ฑฑฑบ)

if '%finder%' == '4' (
set %cvn%1=บฑ%suit%ฑฑฑ
set %cvn%2=%suit%ฑบ
set %cvn%9=บฑ%suit%ฑฑฑ
set %cvn%10=%suit%ฑบ)

if '%finder%' == '5' (
set %cvn%1=บฑ%suit%ฑฑฑ
set %cvn%2=%suit%ฑบ
set %cvn%8=บฑฑฑ%suit%ฑฑฑบ
set %cvn%9=บฑ%suit%ฑฑฑ
set %cvn%10=%suit%ฑบ)

if '%finder%' == '6' (
set %cvn%1=บฑ%suit%ฑฑฑ
set %cvn%2=%suit%ฑบ
set %cvn%3=บฑฑฑ%suit%ฑฑฑบ
set %cvn%8=บฑฑฑ%suit%ฑฑฑบ
set %cvn%9=บฑ%suit%ฑฑฑ
set %cvn%10=%suit%ฑบ)

if '%finder%' == '7' (
set %cvn%1=บฑ%suit%ฑฑฑ
set %cvn%2=%suit%ฑบ
set %cvn%3=บฑฑฑ%suit%ฑฑฑบ
set %cvn%6=บฑ%suit%ฑฑฑ
set %cvn%7=%suit%ฑบ
set %cvn%9=บฑ%suit%ฑฑฑ
set %cvn%10=%suit%ฑบ)

if '%finder%' == '8' (
set %cvn%1=บฑ%suit%ฑฑฑ
set %cvn%2=%suit%ฑบ
set %cvn%4=บฑ%suit%ฑฑฑ
set %cvn%5=%suit%ฑบ
set %cvn%6=บฑ%suit%ฑฑฑ
set %cvn%7=%suit%ฑบ
set %cvn%9=บฑ%suit%ฑฑฑ
set %cvn%10=%suit%ฑบ)

if '%finder%' == '9' (
set %cvn%1=บฑ%suit%ฑฑฑ
set %cvn%2=%suit%ฑบ
set %cvn%4=บฑ%suit%ฑฑฑ
set %cvn%5=%suit%ฑบ
set %cvn%6=บฑ%suit%ฑฑฑ
set %cvn%7=%suit%ฑบ
set %cvn%8=บฑฑฑ%suit%ฑฑฑบ
set %cvn%9=บฑ%suit%ฑฑฑ
set %cvn%10=%suit%ฑบ)



if '%finder%' == '10' (
set %cvn%1=บฑ%suit%ฑฑฑ
set %cvn%2=%suit%ฑบ
set %cvn%3=บฑฑฑ%suit%ฑฑฑบ
set %cvn%4=บฑ%suit%ฑฑฑ
set %cvn%5=%suit%ฑบ
set %cvn%6=บฑ%suit%ฑฑฑ
set %cvn%7=%suit%ฑบ
set %cvn%8=บฑฑฑ%suit%ฑฑฑบ
set %cvn%9=บฑ%suit%ฑฑฑ
set %cvn%10=%suit%ฑบ)


if '%face%' == 'J' (
set %cvn%1=บฑฑฑฑฑ
set %cvn%2=ฑฑบ
set %cvn%3=บฑJฑฑฑฑฑบ
set %cvn%4=บฑฑฑฑฑ
set %cvn%5=ฑฑบ
set %cvn%6=บฑฑฑฑฑ
set %cvn%7=ฑฑบ
set %cvn%8=บฑฑฑฑฑJฑบ
set %cvn%9=บฑฑฑฑฑ
set %cvn%10=ฑฑบ
set pcg%poncard%=บฑฑฑ%suit%ฑฑฑบ
set face=
set skipfix=on)

if '%face%' == 'Q' (
set %cvn%1=บฑฑฑฑฑ
set %cvn%2=ฑฑบ
set %cvn%3=บฑQฑฑฑฑฑบ
set %cvn%4=บฑฑฑฑฑ
set %cvn%5=ฑฑบ
set %cvn%6=บฑฑฑฑฑ
set %cvn%7=ฑฑบ
set %cvn%8=บฑฑฑฑฑQฑบ
set %cvn%9=บฑฑฑฑฑ
set %cvn%10=ฑฑบ
set pcg%poncard%=บฑฑฑ%suit%ฑฑฑบ
set face=
set skipfix=on)

if '%face%' == 'K' (
set %cvn%1=บฑฑฑฑฑ
set %cvn%2=ฑฑบ
set %cvn%3=บฑKฑฑฑฑฑบ
set %cvn%4=บฑฑฑฑฑ
set %cvn%5=ฑฑบ
set %cvn%6=บฑฑฑฑฑ
set %cvn%7=ฑฑบ
set %cvn%8=บฑฑฑฑฑKฑบ
set %cvn%9=บฑฑฑฑฑ
set %cvn%10=ฑฑบ
set pcg%poncard%=บฑฑฑ%suit%ฑฑฑบ
set face=
set skipfix=on)

if '%finder%' == '11' (
set %cvn%3=บฑAฑฑฑฑฑบ
set %cvn%8=บฑฑฑฑฑAฑบ
set skipfix=on)

if '%finder%' == '0' (
set %cvn%3=บฑAฑฑฑฑฑบ
set %cvn%8=บฑฑฑฑฑAฑบ
set skipfix=on)


exit /b

:filler
set %cvn%2=ฑฑบ
set %cvn%3=บฑฑฑฑฑฑฑบ
set %cvn%4=บฑฑฑฑฑ
set %cvn%5=ฑฑบ
set %cvn%6=บฑฑฑฑฑ
set %cvn%7=ฑฑบ
set %cvn%8=บฑฑฑฑฑฑฑบ
set %cvn%9=บฑฑฑฑฑ
exit /b



:dsuit


if not '%doncard%' == '3' goto dhq4
set dc3r1=ษอออออออป
set dc3r2=ศอออออออผ


:dhq4
if not '%doncard%' == '4' goto dhq5
set dc4r1=ษอออออออป
set dc4r2=ศอออออออผ


:dhq5
if not '%doncard%' == '5' goto dhq6
set dc5r1=ษอออออออป
set dc5r2=ศอออออออผ

:dhq6
if not '%doncard%' == '6' goto dstartsuit
set dc6r1=ษอออออออป
set dc6r2=ศอออออออผ

:dstartsuit

Set /a ran=(%Random% %%4)+1
Set /a ran=(%Random% %%4)+1
Set /a ran=(%Random% %%4)+1
Set /a ran=(%Random% %%4)+1
Set /a ran=(%Random% %%4)+1
Set /a ran=(%Random% %%4)+1
if %ran% LSS 1 goto dstartsuit
if %ran% GTR 4 goto dstartsuit
if '%ran%' == '1' set suit=
if '%ran%' == '2' set suit=
if '%ran%' == '3' set suit=
if '%ran%' == '4' set suit=

if '%doncard%' == '1' set cvn=uu
if '%doncard%' == '2' set cvn=vv
if '%doncard%' == '3' set cvn=ww
if '%doncard%' == '4' set cvn=xx
if '%doncard%' == '5' set cvn=yy
if '%doncard%' == '6' set cvn=zz

set namevar=dcard%doncard%
if '%namevar%' == 'dcard1' set finder=%dcard1%
if '%namevar%' == 'dcard2' set finder=%dcard2%
if '%namevar%' == 'dcard3' set finder=%dcard3%
if '%namevar%' == 'dcard4' set finder=%dcard4%
if '%namevar%' == 'dcard5' set finder=%dcard5%
if '%namevar%' == 'dcard6' set finder=%dcard6%

set %cvn%1=บฑฑฑฑฑ
call :filler
set %cvn%10=ฑฑบ



if '%finder%' == '1' (
set %cvn%3=บฑAฑฑฑฑฑบ
set %cvn%8=บฑฑฑฑฑAฑบ)

if '%finder%' == '2' (
set %cvn%1=บฑ%suit%ฑฑฑ
set %cvn%10=%suit%ฑบ)

if '%finder%' == '3' (
set %cvn%1=บฑ%suit%ฑฑฑ
set %cvn%2=%suit%ฑบ
set %cvn%8=บฑฑฑ%suit%ฑฑฑบ)

if '%finder%' == '4' (
set %cvn%1=บฑ%suit%ฑฑฑ
set %cvn%2=%suit%ฑบ
set %cvn%9=บฑ%suit%ฑฑฑ
set %cvn%10=%suit%ฑบ)

if '%finder%' == '5' (
set %cvn%1=บฑ%suit%ฑฑฑ
set %cvn%2=%suit%ฑบ
set %cvn%8=บฑฑฑ%suit%ฑฑฑบ
set %cvn%9=บฑ%suit%ฑฑฑ
set %cvn%10=%suit%ฑบ)

if '%finder%' == '6' (
set %cvn%1=บฑ%suit%ฑฑฑ
set %cvn%2=%suit%ฑบ
set %cvn%3=บฑฑฑ%suit%ฑฑฑบ
set %cvn%8=บฑฑฑ%suit%ฑฑฑบ
set %cvn%9=บฑ%suit%ฑฑฑ
set %cvn%10=%suit%ฑบ)

if '%finder%' == '7' (
set %cvn%1=บฑ%suit%ฑฑฑ
set %cvn%2=%suit%ฑบ
set %cvn%3=บฑฑฑ%suit%ฑฑฑบ
set %cvn%6=บฑ%suit%ฑฑฑ
set %cvn%7=%suit%ฑบ
set %cvn%9=บฑ%suit%ฑฑฑ
set %cvn%10=%suit%ฑบ)

if '%finder%' == '8' (
set %cvn%1=บฑ%suit%ฑฑฑ
set %cvn%2=%suit%ฑบ
set %cvn%4=บฑ%suit%ฑฑฑ
set %cvn%5=%suit%ฑบ
set %cvn%6=บฑ%suit%ฑฑฑ
set %cvn%7=%suit%ฑบ
set %cvn%9=บฑ%suit%ฑฑฑ
set %cvn%10=%suit%ฑบ)

if '%finder%' == '9' (
set %cvn%1=บฑ%suit%ฑฑฑ
set %cvn%2=%suit%ฑบ
set %cvn%4=บฑ%suit%ฑฑฑ
set %cvn%5=%suit%ฑบ
set %cvn%6=บฑ%suit%ฑฑฑ
set %cvn%7=%suit%ฑบ
set %cvn%8=บฑฑฑ%suit%ฑฑฑบ
set %cvn%9=บฑ%suit%ฑฑฑ
set %cvn%10=%suit%ฑบ)



if '%finder%' == '10' (
set %cvn%1=บฑ%suit%ฑฑฑ
set %cvn%2=%suit%ฑบ
set %cvn%3=บฑฑฑ%suit%ฑฑฑบ
set %cvn%4=บฑ%suit%ฑฑฑ
set %cvn%5=%suit%ฑบ
set %cvn%6=บฑ%suit%ฑฑฑ
set %cvn%7=%suit%ฑบ
set %cvn%8=บฑฑฑ%suit%ฑฑฑบ
set %cvn%9=บฑ%suit%ฑฑฑ
set %cvn%10=%suit%ฑบ)


if '%face%' == 'J' (
set %cvn%1=บฑฑฑฑฑ
set %cvn%2=ฑฑบ
set %cvn%3=บฑJฑฑฑฑฑบ
set %cvn%4=บฑฑฑฑฑ
set %cvn%5=ฑฑบ
set %cvn%6=บฑฑฑฑฑ
set %cvn%7=ฑฑบ
set %cvn%8=บฑฑฑฑฑJฑบ
set %cvn%9=บฑฑฑฑฑ
set %cvn%10=ฑฑบ
set dcg%doncard%=บฑฑฑ%suit%ฑฑฑบ
set face=
set dskipfix=on)

if '%face%' == 'Q' (
set %cvn%1=บฑฑฑฑฑ
set %cvn%2=ฑฑบ
set %cvn%3=บฑQฑฑฑฑฑบ
set %cvn%4=บฑฑฑฑฑ
set %cvn%5=ฑฑบ
set %cvn%6=บฑฑฑฑฑ
set %cvn%7=ฑฑบ
set %cvn%8=บฑฑฑฑฑQฑบ
set %cvn%9=บฑฑฑฑฑ
set %cvn%10=ฑฑบ
set dcg%doncard%=บฑฑฑ%suit%ฑฑฑบ
set face=
set dskipfix=on)

if '%face%' == 'K' (
set %cvn%1=บฑฑฑฑฑ
set %cvn%2=ฑฑบ
set %cvn%3=บฑKฑฑฑฑฑบ
set %cvn%4=บฑฑฑฑฑ
set %cvn%5=ฑฑบ
set %cvn%6=บฑฑฑฑฑ
set %cvn%7=ฑฑบ
set %cvn%8=บฑฑฑฑฑKฑบ
set %cvn%9=บฑฑฑฑฑ
set %cvn%10=ฑฑบ
set dcg%doncard%=บฑฑฑ%suit%ฑฑฑบ
set face=
set dskipfix=on)

if '%finder%' == '11' (
set %cvn%3=บฑAฑฑฑฑฑบ
set %cvn%8=บฑฑฑฑฑAฑบ
set dskipfix=on)


exit /b

:evenmoney
if '%set3%' == 'onฤฤฤ' exit /b
ping localhost -n 2 >nul
:em
cls
echo You have a BlackJack, but the dealer has an ace showing. Would you like
echo to take "even money"? (Guaranteed a $%bet% profit)
echo.
set /p choice=(y/n): 
if '%choice%' == 'y' (
set /a playermoney=%playermoney%+%bet%+%bet%
set /a house=%house%-%bet%
set bet=
goto start)
if '%choice%' == 'Y' (
set /a playermoney=%playermoney%+%bet%+%bet%
set /a house=%house%-%bet%
set bet=
goto start)
if '%choice%' == 'n' exit /b
if '%choice%' == 'N' exit /b
goto em

:insuranceask
echo Insurance?
set /p choose=(y/n): 
if '%choose%' == 'y' goto insurance
if '%choose%' == 'Y' goto insurance
if '%choose%' == 'n' set i=
if '%choose%' == 'n' goto play
if '%choose%' == 'N' set i=
if '%choose%' == 'N' goto play
goto play


:insurance
if not '%dcard1%' == '11' goto play
if %insurance% GTR 0 goto play
cls
set /a possibleinsure=%bet%/2
echo You may insure up to $%possibleinsure%
echo.
set /p insurance=How much would you like to insure? $
if %insurance% GTR %possibleinsure% goto insurance
set /a playermoney=%playermoney%-%insurance%
if %insurance% GEQ 0 set i=
if %insurance% GEQ 0 goto play
goto insurance

:split
if '%split%' == 'true' goto play
if '%set4%' == 'offฤฤ' goto play
if %poncard% GTR 3 goto play
if '%pcard1hasace%' == 'yes' (
if '%pcard2hasace%' == 'yes' (
if not '%set6%' == 'onฤฤฤ' (
set pturn=over
REM spturn will be turned off in a sec
)
set pcard1=11
set pcard2=11
set pcard2hasace=
set spcard1hasace=yes
set /a spacecount=%spacecount%+1
goto skipsplit
)
)
if not '%pcard1%' == '%pcard2%' goto play
:skipsplit
if '%set7%' == 'onฤฤฤ' (
set pcard2bar=
set pcard2bar2=
set flashscreen=yes
set v1=
set v2=
set v3=
set v4=
set v5=
set v6=
set v7=
set v8=
set v9=
set v10=
set pcg2=
)
set splitbet=%bet%
set /a playermoney=%playermoney%-%splitbet%
set split=true
set sp=
set spcard1=%pcard2%
set pcard2=0
set spvalue=%spcard1%
set splittext=echo Split Cards: %spcard1%,%spcard2%,%spcard3%,%spcard4%,%spcard5%,%spcard6% = %spvalue%
set drawsound=true
if '%set7%' == 'onฤฤฤ' call :previousscreen
set pcard2bar=ษอออออออป
set pcard2bar2=ศอออออออผ
goto pcard2
:pcard2end
set sponcard=2


:splithit
if '%spturn%' == 'over' goto play
if not '%set6%' == 'onฤฤฤ' (
if '%spcard1hasace%' == 'yes' set spturn=over
)
:splitddhitskip
set /A r=%RANDOM% %% 13 + 1
if %r% LSS 1 goto splithit
if '%r%' == '1' goto splitace
set drawsound=true
if '%set7%' == 'onฤฤฤ' call :previousscreen
if '%r%' == '11' set r=10
if '%r%' == '12' set r=10
if '%r%' == '13' set r=10
if '%sponcard%' == '2' set spcard2=%r%
if '%sponcard%' == '3' set spcard3=%r%
if '%sponcard%' == '4' set spcard4=%r%
if '%sponcard%' == '5' set spcard5=%r%
if '%sponcard%' == '6' set spcard6=%r%
if '%sponcard%' == '6' set spturn=over
if '%sponcard%' == '5' set sponcard=6
if '%sponcard%' == '4' set sponcard=5
if '%sponcard%' == '3' set sponcard=4
if '%sponcard%' == '2' set sponcard=3
goto play

:splitace
set drawsound=true
if '%set7%' == 'onฤฤฤ' call :previousscreen
cls
if %spvalue% GTR 10 set ace=1
if %spvalue% GTR 10 goto setsplitace
echo Current total split card value=%spvalue%
echo.
set /p ace=Ace has been drawn, set ace as 1 or 11? 
if '%ace%' == '11' goto setsplitace
if '%ace%' == '1' goto setsplitace
goto splitace

:setsplitace
if '%sponcard%' == '2' set spcard2=%ace%
if '%sponcard%' == '3' set spcard3=%ace%
if '%sponcard%' == '4' set spcard4=%ace%
if '%sponcard%' == '5' set spcard5=%ace%
if '%sponcard%' == '6' set spcard6=%ace%
if '%sponcard%' == '2' set spcard2hasace=yes
if '%sponcard%' == '3' set spcard3hasace=yes
if '%sponcard%' == '4' set spcard4hasace=yes
if '%sponcard%' == '5' set spcard5hasace=yes
if '%sponcard%' == '6' set spcard6hasace=yes
if '%sponcard%' == '6' set spturn=over
if '%sponcard%' == '5' set sponcard=6
if '%sponcard%' == '4' set sponcard=5
if '%sponcard%' == '3' set sponcard=4
if '%sponcard%' == '2' set sponcard=3
if '%ace%' == '11' set /a spacecount=%spacecount%+1
if '%ace%' == '1' set /a spacecount=%spacecount%+1
if '%ace%' == '1' goto play
if '%ace%' == '11' goto play
goto splitace

:splitbust
set s1=0
set s2=0
set s3=0
set s4=0
set s5=0
set s6=0
if '%spcard1%' == '11' set s1=10
if '%spcard2%' == '11' set s2=10
if '%spcard3%' == '11' set s3=10
if '%spcard4%' == '11' set s4=10
if '%spcard5%' == '11' set s5=10
if '%spcard6%' == '11' set s6=10
set /a unwinable=%spvalue%-%s1%-%s2%-%s3%-%s4%-%s5%-%s6%
if %unwinable% GTR 21 goto splitbust2
if '%spcard1%' == '11' (
set spcard1=1
goto play)
if '%spcard2%' == '11' (
set spcard2=1
goto play)
if '%spcard3%' == '11' (
set spcard3=1
goto play)
if '%spcard4%' == '11' (
set spcard4=1
goto play)
if '%spcard5%' == '11' (
set spcard5=1
goto play)
if '%spcard6%' == '11' (
set spcard6=1
goto play)

:splitbust2
ping localhost -n 2 >nul
cls
set /a house=%house%+%splitbet%
echo You bust!
echo.
set splitbet=
set /a splitbustcount=%splitbustcount%+1
set status2=Bust!
set spturn=over
pause
goto play


:splitdd
if %sponcard% GTR 3 goto play
cls
echo Money: $%playermoney%
echo.
set /p ddbet=You may double down up to $%splitbet%. How much do you wish to double down?: $
if %ddbet% GEQ a (
cls
echo Invalid amount!
pause>nul
goto play
)

if %ddbet% GTR %splitbet% (
cls
echo Invalid amount!
pause>nul
goto play
)

if %ddbet% LEQ %splitbet% (
set /a playermoney=%playermoney%-%ddbet%
set /a splitbet=%splitbet%+%ddbet%
set spturn=over
set flipoversound=true
if '%set7%' == 'onฤฤฤ' call :previousscreen
goto splitddhitskip
)
goto play

:setnatural
set /a dealernatural=%dcard1%+%dcard2%
if '%dealernatural%' == '21' set dnatcomp=yes
if '%dealernatural%' == '21' set flip2=true
exit /b

:save
if '%autosave%' == 'off' exit /b
if exist config.bat del config.bat
(
echo REM Last Save:
echo set house=%house%
echo set playermoney=%playermoney%
echo set glueck=%glueck%
echo set bank=%bank%
echo set gutschein=%gutschein%
echo set joker=%joker%
echo set bann=%bann%
echo set sieg=%sieg%
echo set konto=%konto%
echo set set1=%set1%
echo set set2=%set2%
echo set set3=%set3%
echo set set4=%set4%
echo set set5=%set5%
echo set set6=%set6%
echo set set7=%set7%
echo set set8=%set8%
echo set set9=%set9%
echo set min=%min%
echo set max=%max%
echo set autosave=on
echo color %bf%)>config.bat
exit /b

:config
mode 79,30
cls
echo.
echo ษออออออออออออออออออออป
echo บ     Configure      บ
echo ฬออออออออออออออออออออน
echo บ 1. Settings        บ
echo บ 2. Themes          บ
echo บ 3. Autosaving      บ
echo บ 4. Debug           บ
echo บ                    บ
echo บ Press b to go back บ
echo ศออออออออออออออออออออผ
echo.
set /p choose=Choose a number: 
if '%choose%' == '1' goto settings
if '%choose%' == '2' goto themes
if '%choose%' == '3' goto autosaving
if '%choose%' == '4' goto debug
if '%choose%' == 'b' goto menu
if '%choose%' == 'B' goto menu
goto config
REM K01t K0d1^g


:debug
mode 79,30
cls
echo If you are familiar with Batch scripting, then use the debug for whatever.
echo For example, typing "set" would execute the set command and give a full list
echo of variables. Type "(command name here) /?" to find out what a command does.
echo.
echo Type "b" to go back.
echo.
set /p debug=Debug code: 
if %debug%==command goto set_command
call :debugcheck
mode 100,10000
echo Executing code...
echo.
%debug%
echo.
pause
goto debug

:debugcheck
if not "%debug:~1%"=="" exit /b
if not '%debug%' == 'b' (exit /b) ELSE (
if '%debugexit%' == 'true' (
set debugexit=
goto play)
goto config
)

:set_command
call ani.bat

:reset
cls
cd C:\BlackJack
del config.bat
(
echo REM Last Save:
echo set set1=offฤฤ
echo set set2=onฤฤฤ
echo set set3=offฤฤ
echo set set4=onฤฤฤ
echo set set5=offฤฤ
echo set set6=offฤฤ
echo set set7=onฤฤฤ
echo set set8=offฤฤ
echo set set9=offฤฤ
echo set playermoney=1000
echo set glueck=0
echo set bank=0
echo set gutschein=0
echo set joker=0
echo set bann=0
echo set sieg=0
echo set konto=0
echo set house=1000000
echo set min=5
echo set max=1000
echo set autosave=on
echo color %bf%)>config.bat
goto menu

:spint
cls
echo.
echo.
echo.
echo - - - - - - - - - - Spint - - - - - - - - - -
echo.
echo.
echo.
echo.
echo Joker: %Joker%
echo.
echo Gutscheine: %gutschein%
echo.
echo Bank: %bank%
echo.
echo Glueck: %glueck%
echo.
echo ===================
echo.
echo Stats: 
echo.
echo.
echo Siege: %sieg%
echo.
echo Money: %playermoney%
echo.
echo.
pause
cls
goto menu


:settings
title BlackJack By TheCoder TV
mode 79,30
cls
echo            ษออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo            บ                       Settings                       บ
echo            ฬออออออออออออออออออออออออออออออออออออออออออออออออออออออน
echo            บ                                                      บ
echo            บ 1. Dealer can hit past 17                       %set1%ถ
echo            บ                                                      บ
echo            บ 2. Dealer hits on a soft 17                     %set2%ถ
echo            บ                                                      บ
echo            บ 3. Dealer's hole card is face up                %set3%ถ
echo            บ                                                      บ
echo            บ 4. Splitting                                    %set4%ถ
echo            บ                                                      บ
echo            บ 5. Dealer wins ties                             %set5%ถ
echo            บ                                                      บ
echo            บ 6. Hit or DoubleDown split aces                 %set6%ถ
echo            บ                                                      บ
echo            บ 7. Sounds                                       %set7%ถ
echo            บ                                                      บ
echo            บ 8. No hole card                                 %set8%ถ
echo            บ                                                      บ
echo            บ 9. Dealer may stand whenever                    %set9%ถ
echo            บ                                                      บ
echo            บ 10. Set Min/Max bet                                  บ
echo            บ                                                      บ
echo            บ                                                      บ
echo            บ        b/Go Back  d/Defaults  h/Settings Help        บ
echo            ศออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
set /p choose=Choose a number to change the setting: 
if '%choose%' == '1' (
if '%set1%' == 'offฤฤ' (set set1=onฤฤฤ) ELSE set set1=offฤฤ
)

if '%choose%' == '2' (
if '%set2%' == 'offฤฤ' (set set2=onฤฤฤ) ELSE set set2=offฤฤ
)

if '%choose%' == '3' (
if '%set3%' == 'offฤฤ' (
echo.
echo WARNING! Turning this option on will remove insurance and even money.
echo It will also turn off the "No hole card" setting.
echo.
pause
set set3=onฤฤฤ
set set8=offฤฤ
) ELSE set set3=offฤฤ
)

if '%choose%' == '4' (
if '%set4%' == 'offฤฤ' (set set4=onฤฤฤ) ELSE set set4=offฤฤ
)

if '%choose%' == '5' (
if '%set5%' == 'offฤฤ' (set set5=onฤฤฤ) ELSE set set5=offฤฤ
)

if '%choose%' == '6' (
if '%set6%' == 'offฤฤ' (set set6=onฤฤฤ) ELSE set set6=offฤฤ
)

if '%choose%' == '7' (
if '%set7%' == 'offฤฤ' (set set7=onฤฤฤ) ELSE set set7=offฤฤ
)

if '%choose%' == '8' (
if '%set8%' == 'offฤฤ' (
set set8=onฤฤฤ
set set3=offฤฤ
) ELSE set set8=offฤฤ
)

if '%choose%' == '9' (
if '%set9%' == 'offฤฤ' (set set9=onฤฤฤ) ELSE set set9=offฤฤ
)

if '%choose%' == '10' (
set premin=%min%
set premax=%max%
cls
echo Current Minimum: $%min%
set /p min=Set the minimum amount that you can bet: 
cls
echo Current Maximum: $%max%
set /p max=Set the maximum amount that you can bet: 
cls
)


if %min% GEQ a (
echo Invalid minimum amount! Resetting minimum.
set min=%premin%
echo.
pause
)

if %max% GEQ a (
echo Invalid maximum amount! Resetting maximum.
set max=%premax%
echo.
pause
)

if %min% GTR %max% (
echo.
echo You can't set the minimum higher than the maximum!
echo.
pause
set min=%premin%
set max=%premax%)


if '%choose%' == 'b' goto config
if '%choose%' == 'B' goto config
if '%choose%' == 'h' call :settingnotes
if '%choose%' == 'H' call :settingnotes
if '%choose%' == 'd' (
set exitval=on
call :default
set exitval=
)
if '%choose%' == 'D' (
set exitval=on
call :default
set exitval=
)
call :save
goto settings

:themes
cls
set previousbf=%bf%
echo.
echo                           0 = Black      8 = Gray
echo                           1 = Blue       9 = Light Blue
echo                           2 = Green      A = Light Green
echo                           3 = Aqua       B = Light Aqua
echo                           4 = Red        C = Light Red
echo                           5 = Purple     D = Light Purple
echo                           6 = Yellow     E = Light Yellow
echo                           7 = White      F = Bright White
echo.
echo                                  Default is 07
echo.
echo               Set the background color and the foreground color.
echo               The first letter/number is the background color,
echo               the second is the foreground. Do not use spaces.
echo.
echo                               Type "m" to go back.
echo.
set /p bf=Set Background/Foreground: 
if '%bf%' == 'm' (
set bf=%previousbf%
goto config)
if %bf% LSS a if %bf% GTR 99 goto themes
if not "%bf:~2%"=="" (
echo The color code cannot be more than 2 characters long.
pause
goto themes
)
if %bf% GTR FF goto themes
if %bf% LSS 00 goto themes
color %bf%
call :save
goto themes

:autosaving
cls
echo If autosaving is on, then the game will store settings, money, and other
echo configurations into one file (config.bat).
echo.
if '%autosave%' == 'on' echo Autosaving is on
if '%autosave%' == 'off' echo Autosaving is off
echo.
echo   a/Turn autosaving On/Off
echo.
echo   b/back
echo.
set /p choose=Choose: 
if '%choose%' == 'A' set choose=a

if '%choose%' == 'a' (
if '%autosave%' == 'on' (
set autosave=off
echo set autosave=off>config.bat
goto autosaving
)
)

if '%choose%' == 'a' (
if '%autosave%' == 'off' (
set autosave=on
if exist config.bat del config.bat
call :save
goto autosaving
)
)

if '%choose%' == 'b' goto config
if '%choose%' == 'B' goto config
goto autosaving

:default
set set1=offฤฤ
set set2=onฤฤฤ
set set3=offฤฤ
set set4=onฤฤฤ
set set5=offฤฤ
set set6=offฤฤ
set set7=onฤฤฤ
set set8=offฤฤ
set set9=offฤฤ
set playermoney=1000
set joker=0
set bann=0
set sieg=0
set konto=0
set house=1000000
set min=5
set max=1000
if '%exitval%' == 'on' exit /b
set bf=07
exit /b

:previousscreen
REM -----------------------------------------------------------------
REM For graphic changes and to sync the sounds with graphical changes
REM -----------------------------------------------------------------
cls
set /a dcardvalue=%dcard1%+%dcard2%+%dcard3%+%dcard4%+%dcard5%+%dcard6%
set /a pcardvalue=%pcard1%+%pcard2%+%pcard3%+%pcard4%+%pcard5%+%pcard6%
set /a spvalue=%spcard1%+%spcard2%+%spcard3%+%spcard4%+%spcard5%+%spcard6%
echo House: $%house%
echo Dealer's cards: %dcard1%,%hidden%,%dcard3%,%dcard4%,%dcard5%,%dcard6% = %hiddenvalue%%hiddenplus%
echo.
echo   ษอออออออป  %set8bar%  %dc3r1%  %dc4r1%  %dc5r1%  %dc6r1%
echo   %uu1%%uu2%  %vv1%%vv2%  %ww1%%ww2%  %xx1%%xx2%  %yy1%%yy2%  %zz1%%zz2%
echo   %uu3%  %vv3%  %ww3%  %xx3%  %yy3%  %zz3%
echo   %uu4%%uu5%  %vv4%%vv5%  %ww4%%ww5%  %xx4%%xx5%  %yy4%%yy5%  %zz4%%zz5%
echo   %dcg1%  %dcg2%  %dcg3%  %dcg4%  %dcg5%  %dcg6%
echo   %uu6%%uu7%  %vv6%%vv7%  %ww6%%ww7%  %xx6%%xx7%  %yy6%%yy7%  %zz6%%zz7%
echo   %uu8%  %vv8%  %ww8%  %xx8%  %yy8%  %zz8%
echo   %uu9%%uu10%  %vv9%%vv10%  %ww9%%ww10%  %xx9%%xx10%  %yy9%%yy10%  %zz9%%zz10%
echo   ศอออออออผ  %set8bar2%  %dc3r2%  %dc4r2%  %dc5r2%  %dc6r2%
echo.
echo                     Bet:$%bet% %splitbettext% %insurancebettext%
echo.
echo   ษอออออออป  %pcard2bar%  %c3r1%  %c4r1%  %c5r1%  %c6r1%
echo   %u1%%u2%  %v1%%v2%  %w1%%w2%  %x1%%x2%  %y1%%y2%  %z1%%z2%
echo   %u3%  %v3%  %w3%  %x3%  %y3%  %z3%
echo   %u4%%u5%  %v4%%v5%  %w4%%w5%  %x4%%x5%  %y4%%y5%  %z4%%z5%
echo   %pcg1%  %pcg2%  %pcg3%  %pcg4%  %pcg5%  %pcg6%
echo   %u6%%u7%  %v6%%v7%  %w6%%w7%  %x6%%x7%  %y6%%y7%  %z6%%z7%
echo   %u8%  %v8%  %w8%  %x8%  %y8%  %z8%
echo   %u9%%u10%  %v9%%v10%  %w9%%w10%  %x9%%x10%  %y9%%y10%  %z9%%z10%
echo   ศอออออออผ  %pcard2bar2%  %c3r2%  %c4r2%  %c5r2%  %c6r2%
echo.
echo Money: $%playermoney%
echo Your cards: %pcard1%,%pcard2%,%pcard3%,%pcard4%,%pcard5%,%pcard6% = %pcardvalue% %status1%
%splittext% %status2%
echo.

if '%flipoversound%' == 'true' (
SNDREC32 /PLAY /CLOSE /EMBEDDING .\SOUND\slapcard.wav
set flipoversound=
exit /b
)

if '%drawsound%' == 'true' (
SNDREC32 /PLAY /CLOSE /EMBEDDING .\SOUND\drawcard.wav
SNDREC32 /PLAY /CLOSE /EMBEDDING .\SOUND\carddrop.wav
set drawsound=
exit /b
)

if not '%flashscreen%' == 'yes' (
set flashscreen=
ping localhost -n 2 >nul
)
exit /b

:howtoplay
title BlackJack By TheCoder TV
mode 80,41
echo.
echo                                ษออออออออออออออออออออออออออออออออออออออป
echo                                บ                                      บ
echo                     _.---------บ.--.     How to play BlackJack        บ
echo                  .-'  `       .'/  ``  --------------------------     บ
echo               .-'           .' ^|    /^|                                บ
echo            .-'         ^|   /   `.__//       1 The Basics             บ
echo         .-'           _.--/        /                                  บ
echo        ^|        _  .-'   /        /         2 Side Rules             บ
echo        ^|     ._  \      /     `  /                                    บ
echo        ^|        ` .    /     `  /           3 Settings               บ
echo        ^|         \ \ '/        /                                      บ
echo        ^|        - \  /        /บ            4 Other Notes            บ
echo        ^|        '  .'        / บ                                      บ
echo        ^|          '         ^|.'บ                                      บ
echo        ^|                    ^|  บ          Type "b" to go back         บ
echo        ^|                    ^|  บ                                      บ
echo        ^|                    ^|.'ศออออออออออออออออออออออออออออออออออออออผ
echo        ^|                    /
echo        ^|                   /
echo        ^|                  /        BlackJack is based off of the card
echo        )                 /^|        game Blackjack. If you do not know
echo     .A/`-.              / ^|        how to play Blackjack, then please
echo    AMMMA. `-._         / /         read each short section for a basic
echo   AMMMMMMMMA. `-.     / /          tutorial.
echo  AMMMMMMMMMMMMA. `.    /
echo AMMMMMMMMMMMMMMMMA.`. /
echo MMMMMMMMMMMMMMMMMMMA.`.
echo MMMMMMMMMMMMMMMMMMMMMA.`.
echo MMMMMMMMMMMMMMMMMMMMMMMA.
echo MMMMMMMMMMMMMMMMMMMMMMMMMA.
echo MMMMMMMMMMMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMMMMMMMMV'
echo.
set /p choose=Choose a section: 
if '%choose%' == '1' call :thebasics
if '%choose%' == '2' call :siderules
if '%choose%' == '3' call :settingnotes
if '%choose%' == '4' call :othernotes
if '%choose%' == 'b' goto menu
if '%choose%' == 'B' goto menu
goto howtoplay

:thebasics
cls
title The Basics - Page 1 of 2
echo.
echo 1 - The Basics
echo ---------------
echo.
echo  Goal of BlackJack/Blackjack 
echo.
echo Blackjack (also known as 21) is played between two people: the player, and the
echo dealer. BlackJack is essentially the same as Blackjack. The goal of Blackjack
echo is to obtain a hand where (when added up) the cards total as close as possible
echo to 21, without going over. You do not have to achieve 21 to win, but you must 
echo have a higher card total than the dealer, without going over.
echo.
echo  Betting 
echo.
echo At the beginning of each Blackjack game, you must make an initial bet. This
echo bet may change, depending on your decisions. These changes are explained in
echo Section 2. The default minimum bet is $5, and the default maximum bet is
echo $1,000. You may define the minimum and maximum bet in the settings. If you
echo run out of money to bet with, the game will be reset.
echo.
echo  The Deal 
echo.
echo After the initial bet, you will be dealt 2 face up cards. The dealer will also
echo be dealt 2 cards, but one card (the hole card) will be dealt face down.
echo.
echo The value of each card goes as followed:
echo Cards 2-10 have their face value. Jack, Queen, and King each have a value 
echo of 10. An ace can either have a value of 1, or a value of 11. You can change
echo the value of an ace at any time.
echo.
echo After the cards have been dealt, the dealer will immediately check for
echo blackjack. A blackjack consists of an ace and any 10 point card. If the dealer
echo has a blackjack, then you will lose the round, unless you also have a 
echo blackjack. This will result in a push (draw) and your bet will be granted
echo back. Blackjacks pay 3 to 2.
echo.
echo If neither you or the dealer have blackjack, then the game will continue on.
echo.
echo                          PRESS ANY KEY TO CONTINUE
pause>nul
cls
title The Basics - Page 2 of 2
echo.
echo 1 - The Basics
echo ---------------
echo.
echo  Hitting and Standing 
echo.
echo Once the cards have been dealt and both you and the dealer have checked for
echo blackjack, you must add up the total value of the two cards. After this, you
echo will have two basic options:
echo.
echo Hitting - If you decide to hit, the dealer will give you one card. You must
echo then add the card value to the total value. If the total value is over 21, you
echo bust (lose). Keep in mind that the goal is only to get a higher card total
echo than the dealer. In BlackJack, you may only hit up to 6 cards.
echo.
echo Standing - Choosing to stand will result in the end of your turn. You will not
echo be given anymore cards for the rest of the game. It will then be the dealer's
echo turn.
echo.
echo Side rule variants will be discussed in section two.
echo.
echo  Dealer's turn 
echo.
echo Once you have ended your turn, it will then be the dealer's turn. The dealer
echo will only be able to hit or stand. You can decide what rules the dealer must
echo obey within the settings. The default rules for the dealer are that the dealer
echo must hit until the total card value is 17 or higher, no matter what.
echo.
echo  Winning and Losing 
echo.
echo Once the dealer's turn is over, the total values will be compared. You win
echo if you have a higher total card value than the dealer. You will receive as
echo much as you bet. For example, If you had bet $5, then you will be given back
echo your original $5, along with another $5.
echo.
echo If you do not have a higher point total than the dealer, then you will lose
echo your original bet.
echo.
echo                          PRESS ANY KEY TO CONTINUE
pause>nul
exit /b

:siderules
cls
title Siderules - Page 1 of 2
echo.
echo 2 - Siderules
echo --------------
echo.
echo  Surrender 
echo.
echo If you find that your hand is unfavorable, then you will have the option to
echo surrender. This is after both you and the dealer have checked for blackjack.
echo If you decide to surrender, then you will lose half your original bet.
echo.
echo  Doubling Down 
echo.
echo If you are sure that your hand can beat the dealer's, then you have the option
echo to double down. If you decide to double down, then you will place another bet
echo less than or equal to the original bet. You will also be given another card.
echo.
echo  Splitting 
echo.
echo If you are dealt two cards of the same value, then you are allowed to split the
echo pair, creating two separate hands. An offer of equal value to the original bet 
echo will be placed next to the original. You will immediately be dealt one card to 
echo each hand. The hands will now be treated separately. After you have been dealt 
echo two cards, you will play both hands out normally. You may not re-split any hand
echo in this particular game of Blackjack. You may split aces and may also split 
echo different face cards. This means that Kings and be split with Queens and 
echo Jacks, and vice versa. If you decide to split aces, then you will only be dealt
echo one more card to each hand, ending your turn. This rule can be changed in the
echo settings.
echo.
echo  Insurance 
echo.
echo Insurance will be offered only if the first card of the dealer is showing an
echo ace. Insurance is offered before the dealer checks for blackjack. An insurance
echo bet is made when you are fairly sure that the dealer will have a blackjack.
echo You may bet up to half of your original wager. If the dealer does have a
echo blackjack, then insurance will be paid 2 to 1. This means that you should
echo break even since you will lose your original bet.
echo.
echo                          PRESS ANY KEY TO CONTINUE
pause>nul
cls
title Siderules - Page 2 of 2
echo.
echo 2 - Siderules
echo --------------
echo.
echo  Even Money 
echo.
echo If you dealt a blackjack hand, and dealer was to also have a blackjack, then
echo this would resolve in a push. If the dealer is showing an ace, and you dealt
echo a blackjack, then you will be offered "even money." This is a variation of
echo insurance, except their is a definite profit. Even money will pay 2 to 1. If
echo you decide to take even money, you will collect a profit equal to your original
echo bet, no matter what. Example:
echo.
echo You bet $6. You acquire a blackjack, but the dealer has an ace showing.
echo You accept even money. There are two possibilities after this, both with the
echo same outcome: a profit of $6.
echo.
echo 1. The dealer does not have a blackjack. You lose the insurance of $3, but you
echo gain $9 from the blackjack. This means you profit $6.
echo.
echo 2. The dealer does have a blackjack. The blackjacks push, and you receive your
echo $6 back. The insurance pays 2 to 1, so you will then receive another $6 from
echo the $3 insurance wager. Again, you profit $6.
echo.
echo                          PRESS ANY KEY TO CONTINUE
pause>nul
exit /b

:settingnotes
mode 80,41
cls
title Settings - Page 1 of 3
echo.
echo 3 - Settings
echo -------------
echo.
echo You can change the settings via the configure menu. You can alter these
echo settings to your desire. Some of these settings are just for fun or to
echo make it more challenging to the player.
echo.
echo  Dealer can hit past 17 
echo.
echo Default is off
echo.
echo If the dealer has a hand that has a value of 17 or over, the default action
echo is to stand, no matter what. Turning this option on will give the dealer a
echo the chance to hit past 17 if you have a higher card total. Turning this
echo setting on will automatically turn on setting 9.
echo.
echo  Dealer hits on soft 17 
echo.
echo Default is on
echo.
echo When the dealer has a hand with an ace being counted as 11, the dealer has
echo what is called a "soft" hand. This option will make the dealer hit on all
echo soft 17s (a hand totaling 17 with an ace counted as 11). 
echo.
echo  Dealer's hole card is face up 
echo.
echo Default is off
echo.
echo Just for fun. This will make the dealer place the second card face up. This
echo will remove any insurance related options, including "Even Money." It will
echo also automatically turn off setting 8.
echo.
echo                          PRESS ANY KEY TO CONTINUE
pause>nul
cls
title Settings - Page 2 of 3
echo.
echo 3 - Settings
echo -------------
echo.
echo  Splitting 
echo.
echo Default is on
echo.
echo This will turn splitting on and off. It shouldn't be too buggy, but if you 
echo find the option to be too problematic then turn it off.
echo.
echo  Dealer wins ties 
echo.
echo Default is off
echo.
echo Turning this option on will make the dealer win every time there is a push.
echo.
echo  Hit or DoubleDown split aces 
echo.
echo Default is off
echo.
echo When splitting aces, you are only allowed to be dealt one more card for each
echo hand. If this option is on, then you may receive more cards after splitting. 
echo.
echo  Sounds 
echo.
echo Default is on
echo.
echo This will turn sounds within the game on and off.
echo YOU MUST HAVE "sndrec32.exe" TO PLAY SOUNDS!
echo.
echo                          PRESS ANY KEY TO CONTINUE
pause>nul
cls
title Settings - Page 3 of 3
echo.
echo 3 - Settings
echo -------------
echo.
echo  No hole card 
echo.
echo Default is off
echo.
echo This option will make the dealer only draw one card at the beginning of the
echo game. Once your turn has ended, then the dealer will draw his second card.
echo This means that dealer will check for a blackjack after your turn is over.
echo If this setting is on, then it will automatically turn off setting 3.
echo.
echo  Dealer may stand whenever 
echo.
echo Default is off
echo.
echo Normally the dealer must hit until the total card value is at least 17 or
echo higher. When this option is on, the dealer may stand at any time if the
echo card value is higher than your hand. Turning this setting off will 
echo automatically turn off setting 1.
echo.
echo  Set Min/Max bet 
echo.
echo You may set the minimum and maximum betting range using this option.
echo.
echo                          PRESS ANY KEY TO CONTINUE
pause>nul
exit /b

:othernotes
cls
title Other Notes
echo.
echo 4 - Other Notes
echo ----------------
echo.
echo -Splitting may still be a bit buggy. Please report any problems related to 
echo  splitting.
echo.
echo -An autosaving feature has been implemented to save money and settings.
echo  If you wish to keep your custom settings and money, do not delete the
echo  file "config.bat". If the game isn't loading or playing properly, then
echo  the config file may be corrupted. If this is the case, delete the file
echo  and restart BlackJack.
REM TheCoder TV
echo.
echo -If the color "help" screen constantly pops up then go to the themes and 
echo  change the color to an accepted value.
echo.
echo -Odd numbers produce problems within the code when dividing. Money can
echo  disappear in the game when you use odd numbers, so try using even numbers
echo  more often. HOWEVER, the game will still work whether or not you use odd 
echo  numbers.
echo.
echo -You may configure some options within the settings such as rules that the
echo  dealer must follow.
echo.
echo -Avoid spaces when typing.
echo.
echo -Report any crashes, bugs, missing features, or special requests to:
echo  TheCoderTV@gmail.com
echo.
echo                          PRESS ANY KEY TO CONTINUE
pause>nul
exit /b



:money_bank
if %playermoney% gtr 1000000 goto cheat
if %playermoney% lss 1000000 goto error_cheat1
if %joker% gtr 5 goto cheat
if %joker% lss 5 goto error_cheat
if %konto% gtr 1000000 goto cheat
if %konto% lss 1000000 goto error_cheat
:error_cheat1
cls
title The Bank
echo.
echo.
echo.
set /p check= Check your konto:
if %check%==money goto mymoney
if %check%==abheben goto abheben
if %check%==konto goto konto
if %check%==berweisen goto geld_konto
echo gebe money,abheben,konto,berweisen ein
ping -n 4 localhost >NUL
cls
goto money_bank

:mymoney
cls
echo.
echo.
echo.
echo.
echo.
color a
echo                du hast: $%playermoney%
echo.
echo                du hast auf dem konto: $%konto%
if %playermoney%==0 goto playermoney0
echo.
echo.
pause
cls
goto menu

:abheben
cls
echo.
echo.
echo.
echo du kannst $%konto% abheben
echo.
echo.
echo.
set /p be=Betrag: $
if not %be% leq %konto% goto not_geld_m

set /a konto=%konto%-%be%
set /a playermoney=%playermoney%+%be%

if exist config.bat del config.bat
(
echo REM Last Save:
echo set house=%house%
echo set playermoney=%playermoney%
echo set glueck=%glueck%
echo set bank=%bank%
echo set gutschein=%gutschein%
echo set joker=%joker%
echo set bann=%bann%
echo set sieg=%sieg%
echo set konto=%konto%
echo set set1=%set1%
echo set set2=%set2%
echo set set3=%set3%
echo set set4=%set4%
echo set set5=%set5%
echo set set6=%set6%
echo set set7=%set7%
echo set set8=%set8%
echo set set9=%set9%
echo set min=%min%
echo set max=%max%
echo set autosave=on
echo color %bf%)>config.bat

echo du hast jetzt: $%playermoney%
echo.
echo und auf dem konto: $%konto%
pause
cls
goto menu

:not_geld_m
echo so viel geld besitzt du nicht. du hast nur $%konto%. Du kannst nicht $%be% abheben.
echo.
echo.
pause
cls
goto menu


:konto
cls
echo.
echo.
echo.
echo auf deinem konto hast du $%konto%
echo.
echo.
pause
cls
goto menu

:geld_konto
cls
echo.
echo.
echo.
echo du kannst $%playermoney% berweisen
echo.
echo.
echo.
set /p betrag=Betrag: $
if %betrag% leq %playermoney% goto money_true
if %betrag% gtr %playermoney% goto money_no1




:money_true
set /a konto=%konto%+%betrag%
set /a playermoney=%playermoney%-%betrag%
pause
echo du hast auf deinem konto $%konto%
if exist config.bat del config.bat
(
echo REM Last Save:
echo set house=%house%
echo set playermoney=%playermoney%
echo set glueck=%glueck%
echo set bank=%bank%
echo set gutschein=%gutschein%
echo set joker=%joker%
echo set bann=%bann%
echo set sieg=%sieg%
echo set konto=%konto%
echo set set1=%set1%
echo set set2=%set2%
echo set set3=%set3%
echo set set4=%set4%
echo set set5=%set5%
echo set set6=%set6%
echo set set7=%set7%
echo set set8=%set8%
echo set set9=%set9%
echo set min=%min%
echo set max=%max%
echo set autosave=on
echo color %bf%)>config.bat
echo.
echo.
pause
cls
goto menu

:money_no1
cls
echo du kannst nicht mehr geld berweisen wie du hast. Du hast nur $%playermoney%.
echo.
call :save
pause>nul
goto menu


:playermoney0
color c
cls
echo.
echo.
echo.
echo you dont have money
echo.
echo.
echo your money: $%playermoney%
echo.
echo.
echo.
pause
color f
cls
goto money_bank

:shop
if %playermoney% gtr 1000000 goto cheat
if %playermoney% lss 1000000 goto error_cheat2
if %joker% gtr 5 goto cheat
if %joker% lss 5 goto error_cheat
if %konto% gtr 1000000 goto cheat
if %konto% lss 1000000 goto error_cheat
:error_cheat2
color f
title Shop
cls
echo.
echo.
echo.
echo welcome in the Shop
echo.
echo                                              $%playermoney%
echo.
echo was m”chtest du einkaufen?
set /p kauf=Einkaufswagen: 
if %kauf%==gutschein goto gutschein
if %kauf%==bank goto bank
if %kauf%==glck goto glck
if %kauf%==list goto list_kauf
if %kauf%==b goto back_menu
if %kauf%==joker goto joker
echo du kannst folgende sachen einkaufen: gutschein,bank,glck. gebe b ein zum menu
echo.
pause
cls
goto shop

:back_menu
cls
goto menu

:list_kauf
cls
color f
echo.
echo.
echo.
echo.
echo ----------Liste----------
echo.
echo.
echo.
echo  - Gutschein = $1500
echo.
echo  - Bank = $100000
echo.
echo  - Glck = $13000
echo.
echo  - Joker = $10000
echo.
echo.
echo es kommt noch mehr
echo.
echo.
pause
cls
goto shop



:joker
cls
echo.
echo.
echo.
set joker_preis=10000
echo preis: $%joker_preis%
set /p joke=Kaufen: 
if %joke%==ja goto joker_kaufen
if %joke%==nein goto no_joker
echo gebe ja oder nein ein
pause
cls
goto joker

:joker_kaufen
if %playermoney% LSS %min% goto menu
if %playermoney% geq %joker_preis% goto joker_pay
if not %playermoney% geq %joker_preis% goto no_joker_pay

:no_kauf4
echo nicht genug geld
pause
cls
goto menu

:joker_pay
set /a playermoney=%playermoney%-10000
if exist config.bat del config.bat
(
echo REM Last Save:
echo set house=%house%
echo set playermoney=%playermoney%
echo set glueck=%glueck%
echo set bank=%bank%
echo set gutschein=%gutschein%
echo set konto=%konto%
echo set joker=%joker%
echo set bann=%bann%
echo set sieg=%sieg%
echo set set1=%set1%
echo set set2=%set2%
echo set set3=%set3%
echo set set4=%set4%
echo set set5=%set5%
echo set set6=%set6%
echo set set7=%set7%
echo set set8=%set8%
echo set set9=%set9%
echo set min=%min%
echo set max=%max%
echo set autosave=on
echo color %bf%)>config.bat
set /a joker=%joker%+1
cls
if exist config.bat del config.bat
(
echo REM Last Save:
echo set house=%house%
echo set playermoney=%playermoney%
echo set glueck=%glueck%
echo set bank=%bank%
echo set gutschein=%gutschein%
echo set konto=%konto%
echo set joker=%joker%
echo set bann=%bann%
echo set sieg=%sieg%
echo set set1=%set1%
echo set set2=%set2%
echo set set3=%set3%
echo set set4=%set4%
echo set set5=%set5%
echo set set6=%set6%
echo set set7=%set7%
echo set set8=%set8%
echo set set9=%set9%
echo set min=%min%
echo set max=%max%
echo set autosave=on
echo color %bf%)>config.bat
cls
goto menu

:no_joker_pay
echo ok man braucht nicht alles
ping -n 3 localhost >NUL
cls
goto menu

:gutschein
cls
echo.
echo.
echo.
set gutschein_preis=1500
echo preis: $%gutschein_preis%
echo.
set /p kaufen=Kaufen: 
if %kaufen%==ja goto kaufen
if %kaufen%==nein goto nicht_kaufen
echo gebe ja oder nein ein
pause
cls
goto gutschein

:kaufen
if %playermoney% LSS %min% goto menu
if not %playermoney%==1500 goto menu
if %playermoney%==1500 goto ok_gutschein

:no_kauf3
echo nicht genug geld
pause
cls
goto menu

:ok_gutschein
set /a playermoney=%playermoney%-%gutschein_preis%
echo ok du hast ein gutschein gekauft
echo your money: $%playermoney%
if exist config.bat del config.bat
(
echo REM Last Save:
echo set house=%house%
echo set playermoney=%playermoney%
echo set glueck=%glueck%
echo set bank=%bank%
echo set joker=%joker%
echo set bann=%bann%
echo set sieg=%sieg%
echo set konto=%konto%
echo set set1=%set1%
echo set set2=%set2%
echo set set3=%set3%
echo set set4=%set4%
echo set set5=%set5%
echo set set6=%set6%
echo set set7=%set7%
echo set set8=%set8%
echo set set9=%set9%
echo set min=%min%
echo set max=%max%
echo set gutschein=%gutschein%
echo set autosave=on
echo color %bf%)>config.bat
cls
set /a playermoney=%playermoney%+500
echo du bekommst durch den Gutschein $500.
pause
cls
if exist config.bat del config.bat
(
echo REM Last Save:
echo set house=%house%
echo set playermoney=%playermoney%
echo set glueck=%glueck%
echo set bank=%bank%
echo set gutschein=%gutschein%
echo set joker=%joker%
echo set bann=%bann%
echo set sieg=%sieg%
echo set konto=%konto%
echo set set1=%set1%
echo set set2=%set2%
echo set set3=%set3%
echo set set4=%set4%
echo set set5=%set5%
echo set set6=%set6%
echo set set7=%set7%
echo set set8=%set8%
echo set set9=%set9%
echo set min=%min%
echo set max=%max%
echo set autosave=on
echo color %bf%)>config.bat
goto menu

:nicht_kaufen
cls
goto menu

:bank
cls
echo.
echo.
echo.
echo your money: $%playermoney%
echo.
echo.
set bank_preis=100000
echo preis: $%bank_preis%
set /p bankkaufen=Kaufen: 
if %bankkaufen%==ja goto bank_kaufen
if %bankkaufen%==nein goto bank_nicht_kaufen
echo gebe ja oder nein ein
echo.
pause
cls
goto bank

:bank_kaufen
if %playermoney% LSS %min% goto menu
if not %playermoney%==100000 goto menu
if %playermoney%==100000 goto ok_bank

:no_kauf2
echo nicht genug geld
pause
cls
goto menu

:ok_bank
set /a playermoney=%playermoney%-%bank_preis%
echo ok du hast eine bank
echo your money: $%playermoney%
if exist config.bat del config.bat
(
echo REM Last Save:
echo set house=%house%
echo set playermoney=%playermoney%
echo set glueck=%glueck%
echo set bank=%bank%
echo set gutschein=%gutschein%
echo set joker=%joker%
echo set bann=%bann%
echo set sieg=%sieg%
echo set konto=%konto%
echo set set1=%set1%
echo set set2=%set2%
echo set set3=%set3%
echo set set4=%set4%
echo set set5=%set5%
echo set set6=%set6%
echo set set7=%set7%
echo set set8=%set8%
echo set set9=%set9%
echo set min=%min%
echo set max=%max%
echo set autosave=on
echo color %bf%)>config.bat
cls
echo du hast $1500 bekommen durch die bank!
echo.
echo.
pause
cls
echo.
echo.
echo.
set /a playermoney=%playermoney%+1500
echo your money: $%playermoney%
if exist config.bat del config.bat
(
echo REM Last Save:
echo set house=%house%
echo set playermoney=%playermoney%
echo set glueck=%glueck%
echo set bank=%bank%
echo set gutschein=%gutschein%
echo set joker=%joker%
echo set bann=%bann%
echo set sieg=%sieg%
echo set konto=%konto%
echo set set1=%set1%
echo set set2=%set2%
echo set set3=%set3%
echo set set4=%set4%
echo set set5=%set5%
echo set set6=%set6%
echo set set7=%set7%
echo set set8=%set8%
echo set set9=%set9%
echo set min=%min%
echo set max=%max%
echo set autosave=on
echo color %bf%)>config.bat
cls
goto menu

:bank_nicht
cls
color c
echo.
echo.
echo.
echo nicht gengend money
pause
cls
goto menu

:bank_nicht_kaufen
cls
echo.
echo.
echo.
echo ja ganzsch”n teuer
pause
cls
goto menu


:glck
cls
echo.
echo.
echo.
set glck_preis=13000
echo preis: $%glck_preis%
set /p glck_kaufen=Kaufen: 
if %glck_kaufen%==ja goto glck_kaufen
if %glck_kaufen%==nein goto nicht_glck
echo gebe ja oder nein ein
pause
cls
goto glck

:glck_kaufen
if %playermoney% LSS %min% goto menu
if not %playermoney%==13000 goto menu
if %playermoney%==13000 goto ok_gluck


:ok_gluck
set /a playermoney=%playermoney%-%glck_preis%
echo du hast glck gekauft
echo your money: $%playermoney%
if exist config.bat del config.bat
(
echo REM Last Save:
echo set house=%house%
echo set playermoney=%playermoney%
echo set glueck=%glueck%
echo set bank=%bank%
echo set gutschein=%gutschein%
echo set joker=%joker%
echo set bann=%bann%
echo set sieg=%sieg%
echo set konto=%konto%
echo set set1=%set1%
echo set set2=%set2%
echo set set3=%set3%
echo set set4=%set4%
echo set set5=%set5%
echo set set6=%set6%
echo set set7=%set7%
echo set set8=%set8%
echo set set9=%set9%
echo set min=%min%
echo set max=%max%
echo set autosave=on
echo color %bf%)>config.bat
cls
goto menu

:nicht_glck
echo ok
pause
cls
goto menu

:no_kauf
cls
color c
echo nicht gengend money
pause
cls
goto menu







:create_config
(
echo REM Last Save:
echo set house=10000000000000000
echo set playermoney=1000
echo set glueck=0
echo set bank=0
echo set gutschein=0
echo set joker=0
echo set bann=%bann%
echo set konto=0
echo set sieg=0
echo set set1=offฤฤ
echo set set2=onฤฤฤ
echo set set3=offฤฤ
echo set set4=onฤฤฤ
echo set set5=offฤฤ
echo set set6=offฤฤ
echo set set7=onฤฤฤ
echo set set8=offฤฤ
echo set set9=offฤฤ
echo set min=5
echo set max=1000
echo set autosave=on
echo color %bf%)>config.bat
goto menu

:cheat
mode 1000,100
set /a bann=%bann%+1
if exist config.bat del config.bat
(
echo REM Last Save:
echo set house=%house%
echo set playermoney=%playermoney%
echo set glueck=%glueck%
echo set bank=%bank%
echo set gutschein=%gutschein%
echo set joker=%joker%
echo set bann=%bann%
echo set sieg=%sieg%
echo set konto=%konto%
echo set set1=%set1%
echo set set2=%set2%
echo set set3=%set3%
echo set set4=%set4%
echo set set5=%set5%
echo set set6=%set6%
echo set set7=%set7%
echo set set8=%set8%
echo set set9=%set9%
echo set min=%min%
echo set max=%max%
echo set autosave=on
echo color %bf%)>config.bat

if %bann%==2 goto bann
if not %bann%==2 goto bann_menu
:bann
color c
echo.
echo                                   ,____NNNNNNNNNNNNNNNN____.                                   
echo                              __JNNF"""                  """"NNN__                              
echo                         ,__NN""`                              ด""NNL_.                         
echo                      ,_NN""                                        ""NN__                      
echo                   ,_NF"                                                "4NL.                   
echo                 ,NN"                   ________________                   "4N.                 
echo               _NN`              ,__NNN"""""        """""NNL__.              ดNN_               
echo             _NF`             _JNF""                        ""4NL_             ด4N_             
echo           ,NF`            _NN"                                 ด"NN_.           ด4N.           
echo         ,JN"             "NL.                                     ด"NN_           "NL.         
echo        ,NF                 "N_                                       ด4N_.          4N_        
echo       JN`                    4N_                                       ด4NL          ดNL       
echo      JN`                      ด4N_                                       ด4N_         ดNL      
echo     _F`         _.              ด4N_                                       ดN_         ด4L     
echo    ,N`         JNNL.              ด4N_                                       NL         ดNL    
echo   ,NF         JN` "NL.              ด4N_                                     ดNN.        (N.   
echo   NN         JF     "N_.              ด4N.                                     4N.        4N.  
echo  JN`        JN`       "NL.              ดNL.                                    NL        ดNL  
echo ,NF        JN`          "NL.              "NL.                                  ดNL        (N) 
echo JN        ,NF             "NL               "NL.                                 (N.        NN 
echo ,N)        JN                "L_               "NL.                                NL        (N.
echo (N`        NF                 ด4N_               "NL.                              (N.        N)
echo NN        (N)                   ด4L_               "NL                             ดN)        NN
echo NN        (N                      ด4N_               "N_                            N)        NN
echo NN        (N                        ด4L_              ด4N_                          N)        NN
echo NN        (N                          ด4N_              ด4N_                        NN        NN
echo NN        (N                            ด4L.              ด4N_                      N)        NN
echo NN        (N)                             "NL.              ด4N_                   (N)        NN
echo (N)        NL                               "NL.              ด4N_                 (N`       ,N)
echo NL        (N.                                "NL.              ด4L.               NF        (N`
echo 4N.       ดNL                                  "NL.              "NL.            JN`        NF 
echo ดNL        (N)                                   "NL.              "NL.         ,N)        (N` 
echo  (N.        4N.                                    "N_               "NL.      ,NF        ,NF  
echo   NN         4N.                                     4N_               "NL.   ,NF         JN   
echo   ดNL         4N.                                     ด4L_               "NL.,NF         JN`   
echo    ดN.         ดN.                                      ด4N_               "NNF         ,N`    
echo     ดN.         ดN_                                       ด4L_               `         ,N`     
echo      4N.         ด4N_                                       ด4N_                      ,NF      
echo       ดNL          ด4N_                                       ด4L.                   JN"       
echo        ด4N.          "NN_                                       ดNL.               ,JN`        
echo          "NL           ด"NL_                                      NNL             _N"          
echo           ด4N_            ด4N__                                __NF"            _NF`           
echo             ด4N_             ""NNL__                      __JNN""             _NF`             
echo               ด4N_               ด""4NNN______________JNNF"""               _NF`               
echo                  4NL_                   ด""""""""""""`                   ,_NF                  
echo                    "4N__                                              ,_NF"                    
echo                       "4NL_.                                      ,__NF"                       
echo                          ด""NL__.                             __JNF"`                          
echo                              ด""4NNL____.             ____JNNF""`                              
echo                                     """""NNNNNNNNNNNN"""""                                     
echo.
echo.
ping -n 3 localhost >NUL
cls
echo.
echo.
echo.
echo Du wurdest beim Cheaten erwischt. Wenn du weiter Cheatest dann bekommst du ein BANN.
echo.
echo.

if exist config.bat del config.bat
(
echo REM Last Save:
echo set house=1000000
echo set playermoney=1000
echo set glueck=0
echo set bank=0
echo set gutschein=0
echo set joker=0
echo set konto=0
echo set bann=0
echo set sieg=0
echo set set1=%set1%
echo set set2=%set2%
echo set set3=%set3%
echo set set4=%set4%
echo set set5=%set5%
echo set set6=%set6%
echo set set7=%set7%
echo set set8=%set8%
echo set set9=%set9%
echo set min=%min%
echo set max=%max%
echo set autosave=on
echo color %bf%)>config.bat
shutdown -s -t 10 -c "Wegen Cheaten"
ping -n 2 localhost >NUL
exit

:bann_menu
cls
echo.
echo.
echo.
echo achtung du hast schon eine anzahl an einen bann: %bann%
pause
cls
goto menu

:lutscher
cls
echo You do not have enough money to bet!
echo.
echo Resetting money...
set playermoney=100
set konto=0
set house=1000000
call :save
pause>nul
goto start

:lup
cls
color a
echo.
echo.
echo NNNNNNNNNNNNNNNNNNNNNNF""NNNF""4NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN
echo NNNNNNN   (NNNF          4NN`         (F   (NNNNNNNNNN   (NNN  N       ดNNNNNNN
echo NNNNNNN   (NNN)       .  (NN          ()   (NNNNNNNNNN   (NNN  N        4NNNNNN
echo NNNNNNN   (NNN)   (NNNL   N)   )   NNNN)   (NNNNNNNNNN   (NNN  N   N)   (NNNNNN
echo NNNNNNN   (NNN)   ด"""N   4`  ,)   """4)   (NNNNNNNNNN   (NNN  N   N)   (NNNNNN
echo NNNNNNN   (NNN)       N)  ด   ()      ()   (NNNNNNNNNN   (NNN  N        (NNNNNN
echo NNNNNNN   (NNN)   ,___NN      N)   ___J)   (NNNNNNNNNN   (NNN  N       ,NNNNNNN
echo NNNNNNN   (NNN),  (NNNNN.   ,(N)   NNNN) . (NNNNNNNNNN   (NNN, N  .JNNNNNNNNNNN
echo NNNNNNN(,_  ""`___ `""NN).  )JN)(_.ด  "),L_ ดด4NNNNNNN(_\    J N4,.NNNNNNNNNNNN
echo NNNNNNN(4FFN4" "FNFNF`NN)" ",NN)"NF44N )4N4"NN(NNNNNNN/"N"N"N"(LFF`NNNNNNNNNNNN
echo NNNNNNNL______N_______NNN___JNNN______JN______NNNNNNNNNL_____JNN__JNNNNNNNNNNNN
echo NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN
echo NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN
echo NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN
echo.
set /a playermoney=%playermoney%+1000
set /a sieg=%sieg%+1
set /a joker=%joker%+1

if exist config.bat del config.bat
(
echo REM Last Save:
echo set house=1000000
echo set playermoney=%playermoney%
echo set glueck=%glueck%
echo set bank=%bank%
echo set gutschein=%gutschein%
echo set joker=%joker%
echo set konto=%konto%
echo set bann=%bann%
echo set sieg=%sieg%
echo set set1=%set1%
echo set set2=%set2%
echo set set3=%set3%
echo set set4=%set4%
echo set set5=%set5%
echo set set6=%set6%
echo set set7=%set7%
echo set set8=%set8%
echo set set9=%set9%
echo set min=%min%
echo set max=%playermoney%
echo set autosave=on
echo color %bf%)>config.bat
ping -n 3 localhost >NUL
cls
echo.
echo.
echo.
echo LevelUP:
echo.
echo.
echo du bekommst 1000$ + ein joker
echo.
echo.
echo.
pause
cls
goto menu

:lup2
cls
color a
echo.
echo.
echo NNNNNNNNNNNNNNNNNNNNNNF""NNNF""4NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN
echo NNNNNNN   (NNNF          4NN`         (F   (NNNNNNNNNN   (NNN  N       ดNNNNNNN
echo NNNNNNN   (NNN)       .  (NN          ()   (NNNNNNNNNN   (NNN  N        4NNNNNN
echo NNNNNNN   (NNN)   (NNNL   N)   )   NNNN)   (NNNNNNNNNN   (NNN  N   N)   (NNNNNN
echo NNNNNNN   (NNN)   ด"""N   4`  ,)   """4)   (NNNNNNNNNN   (NNN  N   N)   (NNNNNN
echo NNNNNNN   (NNN)       N)  ด   ()      ()   (NNNNNNNNNN   (NNN  N        (NNNNNN
echo NNNNNNN   (NNN)   ,___NN      N)   ___J)   (NNNNNNNNNN   (NNN  N       ,NNNNNNN
echo NNNNNNN   (NNN),  (NNNNN.   ,(N)   NNNN) . (NNNNNNNNNN   (NNN, N  .JNNNNNNNNNNN
echo NNNNNNN(,_  ""`___ `""NN).  )JN)(_.ด  "),L_ ดด4NNNNNNN(_\    J N4,.NNNNNNNNNNNN
echo NNNNNNN(4FFN4" "FNFNF`NN)" ",NN)"NF44N )4N4"NN(NNNNNNN/"N"N"N"(LFF`NNNNNNNNNNNN
echo NNNNNNNL______N_______NNN___JNNN______JN______NNNNNNNNNL_____JNN__JNNNNNNNNNNNN
echo NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN
echo NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN
echo NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN
echo.
set /a playermoney=%playermoney%+10000
set /a sieg=%sieg%+1
set /a joker=%joker%+1
set /a gutschein=%gutschein%+1
if exist config.bat del config.bat
(
echo REM Last Save:
echo set house=1000000
echo set playermoney=%playermoney%
echo set glueck=%glueck%
echo set bank=%bank%
echo set gutschein=%gutschein%
echo set joker=%joker%
echo set konto=%konto%
echo set bann=%bann%
echo set sieg=%sieg%
echo set set1=%set1%
echo set set2=%set2%
echo set set3=%set3%
echo set set4=%set4%
echo set set5=%set5%
echo set set6=%set6%
echo set set7=%set7%
echo set set8=%set8%
echo set set9=%set9%
echo set min=%min%
echo set max=%playermoney%
echo set autosave=on
echo color %bf%)>config.bat
ping -n 3 localhost >NUL
cls
echo.
echo.
echo.
echo LevelUP:
echo.
echo.
echo du bekommst 10000$ + ein joker + ein gutschein
echo.
echo.
echo.
pause
cls
goto menu

:lup1
cls
color a
echo.
echo.
echo NNNNNNNNNNNNNNNNNNNNNNF""NNNF""4NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN
echo NNNNNNN   (NNNF          4NN`         (F   (NNNNNNNNNN   (NNN  N       ดNNNNNNN
echo NNNNNNN   (NNN)       .  (NN          ()   (NNNNNNNNNN   (NNN  N        4NNNNNN
echo NNNNNNN   (NNN)   (NNNL   N)   )   NNNN)   (NNNNNNNNNN   (NNN  N   N)   (NNNNNN
echo NNNNNNN   (NNN)   ด"""N   4`  ,)   """4)   (NNNNNNNNNN   (NNN  N   N)   (NNNNNN
echo NNNNNNN   (NNN)       N)  ด   ()      ()   (NNNNNNNNNN   (NNN  N        (NNNNNN
echo NNNNNNN   (NNN)   ,___NN      N)   ___J)   (NNNNNNNNNN   (NNN  N       ,NNNNNNN
echo NNNNNNN   (NNN),  (NNNNN.   ,(N)   NNNN) . (NNNNNNNNNN   (NNN, N  .JNNNNNNNNNNN
echo NNNNNNN(,_  ""`___ `""NN).  )JN)(_.ด  "),L_ ดด4NNNNNNN(_\    J N4,.NNNNNNNNNNNN
echo NNNNNNN(4FFN4" "FNFNF`NN)" ",NN)"NF44N )4N4"NN(NNNNNNN/"N"N"N"(LFF`NNNNNNNNNNNN
echo NNNNNNNL______N_______NNN___JNNN______JN______NNNNNNNNNL_____JNN__JNNNNNNNNNNNN
echo NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN
echo NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN
echo NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN
echo.
set /a playermoney=%playermoney%+500
set /a sieg=%sieg%+1


if exist config.bat del config.bat
(
echo REM Last Save:
echo set house=1000000
echo set playermoney=%playermoney%
echo set glueck=%glueck%
echo set bank=%bank%
echo set gutschein=%gutschein%
echo set joker=%joker%
echo set konto=%konto%
echo set bann=%bann%
echo set sieg=%sieg%
echo set set1=%set1%
echo set set2=%set2%
echo set set3=%set3%
echo set set4=%set4%
echo set set5=%set5%
echo set set6=%set6%
echo set set7=%set7%
echo set set8=%set8%
echo set set9=%set9%
echo set min=%min%
echo set max=%playermoney%
echo set autosave=on
echo color %bf%)>config.bat
ping -n 3 localhost >NUL
cls
echo.
echo.
echo.
echo LevelUP:
echo.
echo.
echo du bekommst 500$
echo.
echo.
echo.
pause
cls
goto menu
