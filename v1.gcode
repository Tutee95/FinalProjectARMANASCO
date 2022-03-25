M140 S0.000000
M104 T0 S0.000000
T0
;Sliced at: Thu 10-10-2019 12:31:35
;Basic settings: Layer height: 0.1 Walls: 0.8 Fill: 30
;Print time: #P_TIME#
;Filament used: #F_AMNT#m #F_WGHT#g
;Filament cost: #F_COST#

G21        ;metric values
G90        ;absolute positioning
M82        ;set extruder to absolute mode
M107       ;start with the fan off
G28 X0 Y0  ;move X/Y to min endstops
G28 Z0     ;move Z to min endstops
G1 Z15.0 F9000 ;move the platform down 15mm
G92 E0                  ;zero the extruded length


;VARIABLES DE CONFIGURACION
#101=52.5 ;distancia centro celda
#102=5 ;tiempo para colocar muestras y separador en segundos
#103=5 ;tiempo exposicion leds UV en segundos

M117 Setup Completo

M107

;---------------------------------------------------------------
;PRIMERA CELDA
M117 Inicio movimientos

G0 F1200 X0.0 Y0.0 Z50
M117 COLOCAR SEPARADOR 
G4 S120 ;espero 2 min para COLOCAR SEPARADORES y MUESTRAS

G1 F1200 X50 Y52.5 ;2cm a la izq para iluminar la muestra
G1 X50 Y52.5 Z25
M106 S255 ;raspi signal
G4 P10 ;en mseg
M107
M117 Encendido LEDs
G4 S210 ;espero 3.5min
M117 Apagado LEDs

G1 X62.5 Y52.5 Z35 ;1cm a la der para sacar foto
M106 S255 ;raspi signal
G4 P10 ;en mseg
M107
M117 Captura imagen
G4 S15 ;espero 15seg

G1 X52.5 Y52.5 Z50 ;subo Z por precuación

;---------------------------------------------------------------
;SEGUNDA CELDA
M117 Segunda

G1 F1200 X50 Y147.5 ;2cm a la izq para iluminar la muestra
G1 X50 Y147.5 Z25
M106 S255 ;raspi signal
G4 P10 ;en mseg
M107
M117 Encendido LEDs
G4 S210 
M117 Apagado LEDs

G1 X62.5 Y147.5 Z35 ;1cm a la der para sacar foto
M106 S255 ;raspi signal
G4 P10 ;en mseg
M107
M117 Captura imagen
G4 S15 ;espero 15seg

G1 X52.5 Y147.5Z50 ;subo Z por precuación

;---------------------------------------------------------------
;TERCERA CELDA
M117 Tercera

G1 F1200 X127.5 Y147.5 ;2cm a la izq para iluminar la muestra
G1 X127.5 Y147.5 Z25
M106 S255 ;raspi signal
G4 P10 ;en mseg
M107
M117 Encendido LEDs
G4 S210 ;espero 3.5min
M117 Apagado LEDs

G1 X157.5 Y147.5 Z35 ;1cm a la der para sacar foto
M106 S255 ;raspi signal
G4 P10 ;en mseg
M107
M117 Captura imagen
G4 S15 ;espero 15seg

G1 X147.5 Y147.5 Z50 ;subo Z por precuación

;---------------------------------------------------------------
;CUARTA CELDA
M117 Cuarta

G1 F1200 X127.5 Y52.5 ;2cm a la izq para iluminar la muestra
G1 X127.5 Y52.5 Z25
M106 S255 ;raspi signal
G4 P10 ;en mseg
M107
M117 Encendido LEDs
G4 S210 ;espero 3.5min
M117 Apagado LEDs

G1 X157.5 Y52.5 Z35 ;1cm a la der para sacar foto
M106 S255 ;raspi signal
G4 P10 ;en mseg
M107
M117 Captura imagen
G4 S15 ;espero 15seg

G1 X147.5 Y52.5 Z50 ;subo Z por precuación

;---------------------------------------------------------------


G0 F9000 X100 Y100 Z60.00

;End GCode

M104 S0                     ;extruder heater off
M140 S0                     ;heated bed heater off (if you have it)
G91                                    ;relative positioning
G28 X0 Y0                              ;move X/Y to min endstops, so the head is out of the way
M84                         ;steppers off
G90                         ;absolute positioning

;CURA_PROFILE_STRING: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
