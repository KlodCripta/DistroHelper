## DistroHelper

DistroHelper è un'applicazione in bash che assiste gli utenti nella scelta della distribuzione Linux più adatta alle proprie esigenze. Utilizzando un questionario interattivo, DistroHelper guida gli utenti attraverso una serie di domande per determinare le loro preferenze e requisiti specifici. Basandosi sulle risposte fornite dall'utente, l'applicazione fornisce consigli personalizzati sulla distribuzione Linux più adatta.

## Caratteristiche

Questionario interattivo: DistroHelper utilizza un questionario interattivo per raccogliere informazioni sulle preferenze e i requisiti dell'utente.

## Informazioni

DistroHelper fornisce, a fine questionario, informazioni di base sulla distribuzione consigliata, compreso il link al sito principale.

## Utilizzo

Per utilizzare Distro Helper basterà rispondere alle domande del questionario interattivo digitando "s" per SI oppure "n" per NO. DistroHelper fornirà quindi consigli personalizzati sulla distribuzione Linux più adatta in base alle risposte fornite.

Dopo averlo installato, potete avviare il programma dal menù delle applicazioni » Sistema » DistroHelper (**solo per Arch Linux e derivate**) oppure potete aprire direttamente il terminale e digitare semplicemente **distrohelper** dando invio in caso abbiate installato il programma dal file **.zip**.

## Installazione

Per installare DistroHelper **in qualunque distribuzione GNU/Linux**, è sufficiente scaricare il file **distrohelper.zip** ed estrarlo. 
Da terminale, spostarsi nella directory appena scompattata (è sufficiente trascinarla, rilasciarla nel terminale e premere Invio) ed installare il programma con:
```bash
bash install.sh
```
Ora è possibile avviare il programma direttamente da riga di comando, semplicemente digitando **distrohelper** e premendo Invio.

**ARCH LINUX e derivate:** 

È possibile installare DistroHelper in modo da averlo direttamente nel lanciatore, nella sezione **Sistema**. Questo però solo per **Archlinux e sue derivate** (EndeavourOS, Garuda, Manjaro ecc...). 
Per fare ciò, scaricate il file **DistroHelper-1.0.0-1-any.pkg.tar.zst** ed installatelo con: **sudo pacman -U** (inserisci qui il percorso del file scaricato DistroHelper-1.0.0-1-any.pkg.tar.zst oppure trascina il file DistroHelper-1.0.0-1-any.pkg.tar.zst direttamente dalla cartella in cui si trova fin dentro il Terminale/Konsole).

La stringa dovrebbe assomigliare a questa: 
```bash
sudo pacman -U /home/NomeUtente/Scaricati/DistroHelper-1.0.0-1-any.pkg.tar.zst
```
## Contribuzione

Se desideri contribuire a DistroHelper, sei il benvenuto! Puoi contribuire con suggerimenti, segnalazioni di bug, richieste di funzionalità o persino con contributi diretti al codice sorgente.

## Segnalazione di bug

Se riscontri problemi o errori con DistroHelper, ti preghiamo di segnalarli utilizzando il sistema di tracciamento problemi di GitHub nel repository. Fornisci dettagli completi sui passaggi per riprodurre il problema e includi informazioni sul sistema operativo e la versione di Distro Helper utilizzata.

## Licenza

Distro Helper è rilasciato con licenza [MIT]. Consulta il file LICENSE.md per i dettagli sulla licenza.

## Sviluppato da Klod Cripta (KlodCripta@linux.it)
