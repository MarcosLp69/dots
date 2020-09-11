import os

true = "true"
false = "false"
i3ws_info = os.popen("i3-msg -t get_workspaces").read()
i3ws_info = list(i3ws_info)
i3ws_info.remove("[")
i3ws_info.remove("]")
i3ws_info = "".join(i3ws_info)
exec("i3ws_info = "+i3ws_info)

workspaces = []
try:
     for ws in i3ws_info:
        global focusedworkspace
        workspaces.append(ws["name"])
        if ws["focused"] == "true":
            focusedworkspace=ws["name"]
except Exception:
    workspaces.append(i3ws_info["name"])
    if i3ws_info["focused"]=="true":
        focusedworkspace = i3ws_info["name"]

wslist = []

for ws in workspaces:
    wsname = ws
    if ws == focusedworkspace:
        ws = "%{F#ea6962}"+ws+"%{F#ffffff}"
    wslist.append("%{A:i3-msg -t run_command workspace "+wsname+":}"+ws+"%{A}")

wstext=" ".join(wslist)
print(" "+wstext)
