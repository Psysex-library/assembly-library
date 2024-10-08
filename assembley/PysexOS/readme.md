

# PysoxOS

## Einleitung

PysoxOS ist ein selbstgebautes Betriebssystem, das auf der x86-Architektur basiert. Es bietet grundlegende Funktionen wie einen Bootloader, einen Kernel, Hardwarezugriffe, ein einfaches Dateisystem und eine Shell. 

## Voraussetzungen

- Ein x86-kompatibler Computer oder ein Emulator wie QEMU, Bochs oder VirtualBox.
- NASM (Netwide Assembler) zur Assemblierung der Quellcodes.
- Ein Linker, um die Binärdateien zusammenzufügen (optional, je nach Aufbau).
- Ein Terminal oder eine Kommandozeile.

## Dateien

Die Projektstruktur sieht folgendermaßen aus:

/PysoxOS
│
├── src/
│   ├── boot.asm
│   ├── kernel.asm
│   ├── scheduler.asm
│   ├── memory.asm
│   ├── interrupts.asm
│   ├── mouse.asm
│   ├── file_system.asm
│   ├── networking.asm
│   └── shell.asm
│
└── build.sh

## Kompilieren und Erstellen des Bootimages

1. Klone das Repository oder lade die Dateien herunter.

2. Navigiere im Terminal in das Projektverzeichnis:

   ```bash
   cd /path/to/PysoxOS

	3.	Stelle sicher, dass NASM installiert ist. Du kannst es in den meisten Paketmanagern installieren. Zum Beispiel unter Ubuntu:

sudo apt-get install nasm


	4.	Führe das Build-Skript aus, um das Boot-Image zu erstellen:

chmod +x build.sh
./build.sh

Nach dem Ausführen des Skripts wird eine Datei namens os-image.bin erstellt.

Starten von PysoxOS

Mit QEMU

Um das Betriebssystem in einer virtuellen Maschine zu starten, kannst du QEMU verwenden. Stelle sicher, dass QEMU installiert ist:

sudo apt-get install qemu

Starte PysoxOS mit dem folgenden Befehl:

qemu-system-i386 -drive format=raw,file=os-image.bin

Mit anderen Emulatoren

Wenn du Bochs oder VirtualBox verwendest, erstelle eine neue virtuelle Maschine, die auf das erstellte os-image.bin verweist, und starte die virtuelle Maschine.

Hinweise

	•	Stelle sicher, dass dein Emulator oder deine virtuelle Maschine korrekt konfiguriert ist, um 32-Bit-Betriebssysteme zu unterstützen.
	•	Achte darauf, die Quellcodes regelmäßig zu sichern, während du dein Betriebssystem entwickelst.

Mitwirken

Wenn du zur Entwicklung von PysoxOS beitragen möchtest, kontaktiere mich bitte oder erstelle einen Pull-Request.

Lizenz

Dieses Projekt ist unter der Unilicense lizenziert. Weitere Informationen findest du in der LICENSE-Datei.

Fühle dich frei, Änderungen vorzunehmen, um die Datei an deine spezifischen Anforderungen oder deinen Stil anzupassen. Lass mich wissen, ob du noch etwas hinzufügen oder ändern möchtest!
