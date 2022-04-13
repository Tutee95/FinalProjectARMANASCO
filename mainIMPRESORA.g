M140 S0.000000
M104 T0 S0.000000
T0
;Sliced at: Thu 10-10-2019 12:31:35
;Basic settings: Layer height: 0.1 Walls: 0.8 Fill: 30
;Print time: #P_TIME#
;Filament used: #F_AMNT#m #F_WGHT#g
;Filament cost: #F_COST#
G21 ;metric values
G90 ;absolute positioning
M82 ;set extruder to absolute mode
M107 ;start with the fan off
G28 X0 Y0 ;move X/Y to min endstops
G28 Z0 ;move Z to min endstops
G1 Z15.0 F9000 ;move the platform down 15mm
G92 E0 ;zero the extruded length
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
G1 X52.5 Y52.5 Z50 ;subo Z por precuaci ́on
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
G1 X52.5 Y147.5Z50 ;subo Z por precuaci ́on
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
G1 X147.5 Y147.5 Z50 ;subo Z por precuaci ́on
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
G1 X147.5 Y52.5 Z50 ;subo Z por precuaci ́on
;---------------------------------------------------------------
G0 F9000 X100 Y100 Z60.00
;End GCode
M104 S0 ;extruder heater off
M140 S0 ;heated bed heater off (if you have it)
G91 ;relative positioning
G28 X0 Y0 ;move X/Y to min endstops
M84 ;steppers off
G90 ;absolute positioning
