# TMUX

Zum verwenden von mehreren Terminals mit in einem.

## Hotkey

Der Standart Hotkey für tmux ist:
`[control]` + `[b]`

## Öffnen mit

`tmux -u`

## Neues Fesnster erstellen

`hotkey` + `[c]`

## Neues vertikales Fenster erstellen

`hotkey` + `[%]`

## Neues horizontales Fenster erstellen

`hotkey` + `["]`

## Fenster wechseln

`hotkey` + `[Pfeiltasten]`

## Ein Fenster schließen

`exit`

## Tab nach hinten springen

`hotkey` + `[p]`

## Tab nach vorne springen

`hotkey` + `[n]`

## Tab Namen umnenen

`hotkey` + `[,]`

## Windows mit Pfeiltasten auswählen

`hotkey` + `[w]`

## tmux in den Hintergung legen

`hotkey` + `[d]`

## tmux aus dem Hintergurnd holen

`tmux attach`

# Sessions

Neue Session erstellen

`tmux new -s sessionname`
Session wiederherstellen
`tmux attach -t sessionname`
List Sessions
`tmux ls`

## Panes (splits)

o  swap panes
q  show pane numbers 
x  kill pane

+ break pane into window (e.g. to select text by mouse to copy)
- restore pane from window
  ⍽  space - toggle between layouts
  <prefix> q (Show pane numbers, when the numbers show up type the key to goto that pane)
  <prefix> { (Move the current pane left)
  <prefix> } (Move the current pane right)
  <prefix> z toggle pane zoom