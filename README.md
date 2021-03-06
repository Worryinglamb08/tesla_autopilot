# tesla_autopilot
FiveM autopilot for Tesla cars.

## Requirements
- [tesla_supercharger](https://github.com/boostvolt/tesla_supercharger)
- [tesla_ev](https://github.com/boostvolt/tesla_ev)
- [tesla_redis](https://github.com/Boostvolt/tesla_redis)

## Download

This resource was developed alongside [tesla_ev](https://github.com/boostvolt/tesla_ev), [tesla_supercharger](https://github.com/boostvolt/tesla_supercharger) and [tesla_redis](https://github.com/boostvolt/redis). This resource works without them, but you might be interested in installing them altogether.

### Using Git
```
cd resources
git clone https://github.com/boostvolt/tesla_autopilot [tesla]/tesla_autopilot/
```

### Manually
- Download https://github.com/boostvolt/tesla_autopilot/archive/master.zip
- Create and place in in `[tesla]/tesla_autopilot` directory

## Installation
- Add this in your `server.cfg`:

```lua
start tesla_autopilot
```

## Configuration
client.lua

```
local useESXanimations = false      -- If you use esx_animations change it to true (no need for extra loop reading X key to clear ped tasks)

local speed = 20.0                  -- GetVehicleModelMaxSpeed(model) / 2 -- vehicle's speed
```

edit: client.lua

line 60 (447 by default - the most careful driving) 

`TaskVehicleDriveToCoordLongrange(player, vehicle, blipX, blipY, blipZ, speed, 447, 2.0)`


```
FLAG ENABLED - CONVERTED INTEGER - DESCRIPTION
00000000000000000000000000000001 - 1 - stop before vehicles
00000000000000000000000000000010 - 2 - stop before peds
00000000000000000000000000000100 - 4 - avoid vehicles
00000000000000000000000000001000 - 8 - avoid empty vehicles
00000000000000000000000000010000 - 16 - avoid peds
00000000000000000000000000100000 - 32 - avoid objects
00000000000000000000000001000000 - 64 - ?
00000000000000000000000010000000 - 128 - stop at traffic lights
00000000000000000000000100000000 - 256 - use blinkers
00000000000000000000001000000000 - 512 - allow going wrong way (only does it if the correct lane is full, will try to reach the correct lane again as soon as possible)
00000000000000000000010000000000 - 1024 - go in reverse gear (backwards)
00000000000000000000100000000000 - 2048 - ?
00000000000000000001000000000000 - 4096 - ?
00000000000000000010000000000000 - 8192 - ?
00000000000000000100000000000000 - 16384 - ?
00000000000000001000000000000000 - 32768 - ?
00000000000000010000000000000000 - 65536 - ?
00000000000000100000000000000000 - 131072 - ?
00000000000001000000000000000000 - 262144 - Take shortest path (Removes most pathing limits, the driver even goes on dirtroads)
00000000000010000000000000000000 - 524288 - Probably avoid offroad?
00000000000100000000000000000000 - 1048576 - ?
00000000001000000000000000000000 - 2097152 - ?
00000000010000000000000000000000 - 4194304 - Ignore roads (Uses local pathing, only works within 200~ meters around the player)
00000000100000000000000000000000 - 8388608 - ?
00000001000000000000000000000000 - 16777216 - Ignore all pathing (Goes straight to destination)
00000010000000000000000000000000 - 33554432 - ?
00000100000000000000000000000000 - 67108864 - ?
00001000000000000000000000000000 - 134217728 - ?
00010000000000000000000000000000 - 268435456 - ?
00100000000000000000000000000000 - 536870912 - avoid highways when possible (will use the highway if there is no other way to get to the destination)
01000000000000000000000000000000 - 1073741824 - ?```
```

## License

If you distribute a copy or make a fork of the project, you have to credit this project as source.

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program.  If not, see http://www.gnu.org/licenses/.
