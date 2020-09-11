import os

acpi = os.popen("acpi -b").read()
acpi = acpi.split()
acpi.pop(0)
acpi.pop(0)
status = acpi[0]
status = list(status)
try:
	status.remove(",")
except:
	pass
status = "".join(status)
bat = acpi[1]
bat = list(bat)
try:
	bat.remove(",")
except:
	pass
bat = "".join(bat)
if not status == "Discharging":
	print(bat+" [CHR]")
else:
	print(bat)
