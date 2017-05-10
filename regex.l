%{

%}

ledS	(led)[\s][s][\s][0123][\s][01]
ledP	(led)[\s][p][\s][0123][\s]((100)|([1-9]?[0-9]))
ledB	(led)[\s][b][\s][0123][\s]((1000)|([1-9]([0-9]{1,2})?))((1000)|([1-9]([0-9]{1,2})?))

%%

{ws}
ledS                 { return LEDS; } 
ledB                 { return LEDB; } 
ledP                 { return LEDP; } 

%%
