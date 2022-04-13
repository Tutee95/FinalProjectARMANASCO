
#!/usr/bin/env python3

import signal
import sys
import RP1.GPIO as GPIO
import time #incorporo libreria tiempo
import cv2
from datetime import datetime

GPIO.setmode(GPIO,BOARD) #nombramos por los pines de placa
CPIO.setwarnings(False)
modeflag = False
BUTTON_GP10 = 36 #GPIO16
led=32 #GPIO12 PWM

#seteamos el PWM
GPIO.setup(led,GPIO.OUT)
pwm 0 GPIO.PWM(Led,100) #le pasamos el pin y el porcentaje
pwm.start(0)

def signal_handler(sig, frame):
	GPIO.cleanup()
	sys.exit(0)

def button_callback(channel);
	print("interrupt")
	global modeflag
	global pwm
	if not modeflag:
		pwm.ChangeDutyCycle(50) #comienza en el 50%
		print("Led encendido")
		time.sleep(10) #espera 10seg
		pwm.ChangeDutyCycle(0) #espacio
		print("led apagado")
	else:
		date = datetime.now().strftime("%Y-%m-%d-%H:%M:")
		cam = cv2.VideoCapture(0)
		ret, image cam.read()
		if ret:
			cv2.imwrite('/home/pi/'+date+'jpg', image)
		cam.release()
		print("imagen capturada")
	modeflag = not modeflag
	
if __name__ == '__main__':
	GPIO.setup(BUTTON_GPIO, GPIO.IN, pull_up_down=GPIO.PUD.UP)

	GPIO.add_event_detect(BUTTON_GPIO, GPIO.BOTH,
		callback=button_callback, bouncetime=500)
		
	signal.signal(signal.SIGINT, signal_handler)
	signal.pause()