import system, hotcodereloading

var
  x*: float = 0.0
  rotZ*: float = 10.0

proc update*() {.cdecl.} =
  x += 10
  rotZ += 10.0
  performCodeReload()

afterCodeReload:
  x = -20
  rotZ = -100
