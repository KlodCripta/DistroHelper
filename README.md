<p align="center">
  <img src="DistroHelper2.0.jpg" width="500" alt="DistroHelper poster">
</p>

<h1 align="center">DistroHelper 2.0</h1>

<p align="center">
An interactive Bash tool that helps users choose the GNU/Linux distribution that best fits their needs.
</p>

<p align="center">
  <a href="https://aur.archlinux.org/packages/distrohelper">
    <img src="https://img.shields.io/aur/version/distrohelper?style=for-the-badge" alt="AUR Version">
  </a>
  <a href="LICENSE">
    <img src="https://img.shields.io/badge/license-MIT-blue?style=for-the-badge" alt="MIT License">
  </a>
  <img src="https://img.shields.io/badge/Bash-Script-green?style=for-the-badge&logo=gnu-bash" alt="Bash Script">
</p>

---

DistroHelper 2.0 è uno script Bash che guida l’utente nella scelta della distribuzione GNU/Linux più adatta alle proprie esigenze.

Attraverso un questionario interattivo analizza il profilo dell’utente e suggerisce **tre distribuzioni Linux** compatibili con le sue preferenze, mostrando per ciascuna una breve descrizione e il link al sito ufficiale.

Il progetto è nato come esperimento personale scritto interamente in Bash.
# Caratteristiche

- Questionario interattivo
- Risposte miste: sì/no e scelte numeriche
- Suggerisce le 3 distribuzioni GNU/Linux più adatte
- Mostra una percentuale di compatibilità
- Fornisce una breve descrizione per ogni distribuzione consigliata
- Interfaccia da terminale con barra di avanzamento

---

## Screenshots

<p align="center">
  <img src="screenshots/distrohelper_screenshot_1.png" width="32%">
  <img src="screenshots/distrohelper_screenshot_2.png" width="32%">
</p>

<p align="center">
  <img src="screenshots/distrohelper_screenshot_3.png" width="32%">
  <img src="screenshots/distrohelper_screenshot_4.png" width="32%">
</p>

---

# Utilizzo (metodo consigliato)

Per garantire la massima trasparenza, il metodo consigliato consiste nel clonare il repository e ispezionare lo script prima dell’esecuzione.

```bash
git clone https://github.com/KlodCripta/DistroHelper.git
cd DistroHelper
chmod +x distrohelper.sh
./distrohelper.sh
```

Questo approccio consente all’utente di verificare completamente il codice prima dell’esecuzione, in linea con la filosofia di Arch Linux e del software libero.

# Licenza

Questo progetto è distribuito con licenza MIT. Per i dettagli vedere il file LICENSE.

# Autore

Sviluppato da Klod Cripta.
Contributi, segnalazioni e suggerimenti sono benvenuti.

Puoi contattare Klod Cripta tramite email KlodCripta@linux.it
