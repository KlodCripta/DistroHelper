#!/bin/bash

# =========================
# DISTROHELPER 2.0
# =========================

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
BOLD='\033[1m'
DIM='\033[2m'
NC='\033[0m'

TOTAL_QUESTIONS=25

# -------------------------
# Intestazione
# -------------------------
clear
printf "%b\n" "${RED}========================================="
printf "%b\n" "            DISTROHELPER 2.0"
printf "%b\n" "=========================================${NC}"
printf "%b\n" "${RED}${BOLD}Sviluppato da Klod Cripta${NC}"
printf "%b\n" "${RED}${BOLD}Trova la distribuzione Linux ideale${NC}"
echo ""
echo "Benvenuto in DistroHelper."
echo "Questo questionario ti aiuterà a trovare"
echo "la distribuzione Linux più adatta alle tue esigenze."
echo ""
echo "Alcune domande richiedono una risposta S/N,"
echo "altre una scelta numerica."
echo ""
read -r -p "Premi Invio per iniziare..."

# -------------------------
# Distro
# -------------------------
distros=(
  "Ubuntu"
  "Linux_Mint"
  "Zorin_OS"
  "Fedora"
  "Debian"
  "Pop_OS"
  "openSUSE"
  "Solus"
  "Endeavour_OS"
  "Manjaro"
  "CachyOS"
  "Garuda_Linux"
  "Arch_Linux"
  "Slackware"
  "Alpine_Linux"
  "Gentoo"
  "Venom_Linux"
  "MX_Linux"
  "Bodhi_Linux"
  "antiX"
  "Q4OS"
  "Puppy_Linux"
  "Slax"
  "4MLinux"
)

declare -A score
declare -A reasons
declare -A names
declare -A descriptions

for d in "${distros[@]}"; do
  score["$d"]=0
  reasons["$d"]=""
done

names["Ubuntu"]="Ubuntu"
names["Linux_Mint"]="Linux Mint"
names["Zorin_OS"]="Zorin OS"
names["Fedora"]="Fedora"
names["Debian"]="Debian"
names["Pop_OS"]="Pop!_OS"
names["openSUSE"]="openSUSE"
names["Solus"]="Solus"
names["Endeavour_OS"]="EndeavourOS"
names["Manjaro"]="Manjaro"
names["CachyOS"]="CachyOS"
names["Garuda_Linux"]="Garuda Linux"
names["Arch_Linux"]="Arch Linux"
names["Slackware"]="Slackware"
names["Alpine_Linux"]="Alpine Linux"
names["Gentoo"]="Gentoo"
names["Venom_Linux"]="Venom Linux"
names["MX_Linux"]="MX Linux"
names["Bodhi_Linux"]="Bodhi Linux"
names["antiX"]="antiX"
names["Q4OS"]="Q4OS"
names["Puppy_Linux"]="Puppy Linux"
names["Slax"]="Slax"
names["4MLinux"]="4MLinux"

descriptions["Ubuntu"]="Distribuzione molto diffusa, semplice da usare e adatta a chi vuole un sistema pronto e ben supportato. Sito: https://ubuntu.com"
descriptions["Linux_Mint"]="Distribuzione molto accessibile, stabile e comoda per uso quotidiano. Sito: https://linuxmint.com"
descriptions["Zorin_OS"]="Distribuzione pensata per essere semplice, curata e familiare anche per chi arriva da Windows. Sito: https://zorin.com/os/"
descriptions["Fedora"]="Distribuzione moderna, curata e aggiornata, molto apprezzata anche in ambito sviluppo. Sito: https://fedoraproject.org"
descriptions["Debian"]="Distribuzione solida, molto stabile e con una lunga tradizione nel mondo GNU/Linux. Sito: https://www.debian.org"
descriptions["Pop_OS"]="Distribuzione desktop moderna, pronta all'uso e valida anche per gaming e produttività. Sito: https://pop.system76.com"
descriptions["openSUSE"]="Distribuzione robusta con ottimi strumenti grafici e un'impostazione molto ordinata. Sito: https://www.opensuse.org"
descriptions["Solus"]="Distribuzione indipendente, veloce e ben integrata per uso desktop. Sito: https://getsol.us"
descriptions["Endeavour_OS"]="Distribuzione Arch-based abbastanza accessibile, con grande libertà di personalizzazione. Sito: https://endeavouros.com"
descriptions["Manjaro"]="Distribuzione user-friendly basata su Arch, con strumenti grafici e installazione semplice. Sito: https://manjaro.org"
descriptions["CachyOS"]="Distribuzione orientata a velocità e ottimizzazione, adatta a chi cerca prestazioni. Sito: https://cachyos.org"
descriptions["Garuda_Linux"]="Distribuzione molto curata graficamente, rolling release e interessante anche per gaming. Sito: https://garudalinux.org"
descriptions["Arch_Linux"]="Distribuzione per chi vuole controllo, aggiornamenti continui e massima personalizzazione. Sito: https://archlinux.org"
descriptions["Slackware"]="Distribuzione storica e tradizionale, adatta a chi preferisce controllo e semplicità classica. Sito: http://www.slackware.com"
descriptions["Alpine_Linux"]="Distribuzione minimale e veloce, adatta a utenti esperti che amano un sistema essenziale. Sito: https://alpinelinux.org"
descriptions["Gentoo"]="Distribuzione molto avanzata, ideale per chi vuole controllo totale e forte personalizzazione. Sito: https://www.gentoo.org"
descriptions["Venom_Linux"]="Distribuzione source-based per utenti molto esperti e smanettoni. Sito: https://venomlinux.org"
descriptions["MX_Linux"]="Distribuzione leggera, pratica e completa, ottima anche per hardware modesto. Sito: https://mxlinux.org"
descriptions["Bodhi_Linux"]="Distribuzione leggera basata su Ubuntu, pensata per PC modesti. Sito: https://www.bodhilinux.com"
descriptions["antiX"]="Distribuzione molto leggera, ideale per PC vecchi o con poche risorse. Sito: https://antixlinux.com"
descriptions["Q4OS"]="Distribuzione leggera e reattiva, pensata anche per recuperare computer datati. Sito: https://q4os.org"
descriptions["Puppy_Linux"]="Distribuzione molto leggera, avviabile facilmente da chiavetta USB e spesso usata in live. Sito: https://puppylinux.com"
descriptions["Slax"]="Distribuzione compatta e portatile, adatta all'uso da chiavetta USB. Sito: https://www.slax.org"
descriptions["4MLinux"]="Mini distribuzione molto leggera, utile anche in live e per manutenzione. Sito: https://4mlinux.com"

BEGINNER=("Ubuntu" "Linux_Mint" "Zorin_OS")
INTERMEDIATE=("Fedora" "Debian" "Pop_OS" "openSUSE" "Solus")
ADVANCED=("Endeavour_OS" "Manjaro" "CachyOS" "Garuda_Linux")
POWER=("Arch_Linux" "Slackware" "Alpine_Linux")
HARDCORE=("Gentoo" "Venom_Linux")
LIGHT=("antiX" "Q4OS" "Bodhi_Linux" "MX_Linux")
LIVE=("Puppy_Linux" "Slax" "4MLinux")

live_enabled=0

# -------------------------
# Funzioni
# -------------------------
append_reason() {
  local distro="$1"
  local text="$2"
  if [[ -z "${reasons[$distro]}" ]]; then
    reasons["$distro"]="$text"
  else
    reasons["$distro"]+="; $text"
  fi
}

add_score() {
  local distro="$1"
  local points="$2"
  local reason="$3"
  ((score["$distro"] += points))
  if [[ -n "$reason" && "$points" -gt 0 ]]; then
    append_reason "$distro" "$reason"
  fi
}

add_many() {
  local points="$1"
  local reason="$2"
  shift 2
  local distro
  for distro in "$@"; do
    add_score "$distro" "$points" "$reason"
  done
}

print_progress_bar() {
  local current="$1"
  local total="$2"
  local width=25
  local filled=$(( current * width / total ))
  local empty=$(( width - filled ))
  local bar_filled
  local bar_empty

  bar_filled=$(printf "%${filled}s" "")
  bar_empty=$(printf "%${empty}s" "")

  bar_filled=${bar_filled// /#}
  bar_empty=${bar_empty// /-}

  printf "%b\n" "${DIM}[${bar_filled}${bar_empty}] ${current}/${total}${NC}"
}

print_question_header() {
  local n="$1"
  echo ""
  printf "%b\n" "${CYAN}Domanda ${n}/${TOTAL_QUESTIONS}${NC}"
  print_progress_bar "$n" "$TOTAL_QUESTIONS"
  echo ""
}

print_question() {
  printf "%b\n" "${YELLOW}$1${NC}"
}

print_option() {
  printf "%b\n" "${GREEN}$1${NC}"
}

ask_yes_no() {
  local answer
  while true; do
    read -r -p "Risposta (S/N): " answer
    answer=${answer,,}
    case "$answer" in
      s|n)
        printf "%s" "$answer"
        return
        ;;
      *)
        printf "%b\n" "${RED}Risposta non valida. Inserisci S oppure N.${NC}"
        ;;
    esac
  done
}

ask_choice() {
  local min="$1"
  local max="$2"
  local answer
  while true; do
    read -r -p "Scelta: " answer
    if [[ "$answer" =~ ^[0-9]+$ ]] && (( answer >= min && answer <= max )); then
      printf "%s" "$answer"
      return
    fi
    printf "%b\n" "${RED}Risposta non valida. Inserisci un numero compreso tra $min e $max.${NC}"
  done
}

make_result_lines() {
  local distro
  for distro in "${distros[@]}"; do
    if (( live_enabled == 0 )); then
      case "$distro" in
        "Puppy_Linux"|"Slax"|"4MLinux")
          continue
          ;;
      esac
    fi
    printf "%d|%s\n" "${score[$distro]}" "$distro"
  done
}

compatibility_percent() {
  local pts="$1"
  local max_pts="$2"
  if (( max_pts <= 0 )); then
    echo "0"
    return
  fi
  echo $(( pts * 100 / max_pts ))
}

# -------------------------
# Domande
# -------------------------

# 1
print_question_header 1
print_question "Qual è il tuo livello di esperienza con Linux?"
print_option "1) Nessuna esperienza"
print_option "2) Base"
print_option "3) Intermedio"
print_option "4) Avanzato"
print_option "5) Esperto / smanettone"
echo ""
q1=$(ask_choice 1 5)
case "$q1" in
  1)
    add_many 4 "sei alle prime armi" "${BEGINNER[@]}"
    add_many 2 "vuoi qualcosa di semplice ma leggero" "${LIGHT[@]}"
    add_many -3 "richiede molta esperienza" "${HARDCORE[@]}"
    add_many -2 "richiede buona esperienza" "${POWER[@]}" "${ADVANCED[@]}"
    ;;
  2)
    add_many 3 "cerchi un sistema accessibile" "${BEGINNER[@]}"
    add_many 2 "hai un profilo base ma non del tutto nuovo" "${INTERMEDIATE[@]}"
    add_many 1 "puoi valutare anche qualcosa di leggero" "${LIGHT[@]}"
    add_many -2 "richiede molta esperienza" "${HARDCORE[@]}"
    ;;
  3)
    add_many 3 "hai già una discreta esperienza" "${INTERMEDIATE[@]}"
    add_many 2 "puoi gestire sistemi un po' più tecnici" "${ADVANCED[@]}"
    add_score "Arch_Linux" 1 "potresti anche salire di livello"
    add_score "MX_Linux" 1 "può piacerti un sistema pratico ma non banale"
    ;;
  4)
    add_many 3 "hai un profilo avanzato" "${ADVANCED[@]}" "${POWER[@]}"
    add_many 1 "puoi valutare anche sistemi molto tecnici" "${INTERMEDIATE[@]}"
    add_score "Gentoo" 1 "potresti gestire un sistema molto avanzato"
    add_score "Venom_Linux" 1 "potresti gestire un sistema molto avanzato"
    ;;
  5)
    add_many 4 "cerchi sistemi molto tecnici" "${POWER[@]}" "${HARDCORE[@]}"
    add_many 2 "puoi gestire anche rolling avanzate" "${ADVANCED[@]}"
    add_score "Arch_Linux" 2 "hai il profilo giusto per un sistema molto controllabile"
    ;;
esac

# 2
print_question_header 2
print_question "Hai mai installato una distribuzione Linux?"
q2=$(ask_yes_no)
if [[ "$q2" == "s" ]]; then
  add_many 2 "hai già fatto almeno un'installazione Linux" "${INTERMEDIATE[@]}" "${ADVANCED[@]}" "${POWER[@]}"
else
  add_many 2 "non hai ancora esperienza di installazione" "${BEGINNER[@]}"
  add_many 1 "meglio qualcosa di leggero e semplice" "${LIGHT[@]}"
  add_many -1 "non è ideale per chi inizia da zero" "${HARDCORE[@]}"
fi

# 3
print_question_header 3
print_question "Come ti rapporti con il terminale (riga di comando)?"
print_option "1) Preferisco evitarlo il più possibile"
print_option "2) Lo uso se serve, senza problemi"
print_option "3) Lo uso spesso o lo preferisco"
echo ""
q3=$(ask_choice 1 3)
case "$q3" in
  1)
    add_many 3 "preferisci strumenti semplici e grafici" "${BEGINNER[@]}" "Pop_OS" "MX_Linux"
    add_many -3 "richiede buon rapporto con il terminale" "${POWER[@]}" "${HARDCORE[@]}"
    ;;
  2)
    add_many 2 "non hai problemi con un po' di terminale" "${INTERMEDIATE[@]}" "${ADVANCED[@]}"
    ;;
  3)
    add_many 3 "usi volentieri il terminale" "${POWER[@]}" "${HARDCORE[@]}"
    add_many 2 "puoi gestire sistemi più flessibili" "${ADVANCED[@]}"
    ;;
esac

# 4
print_question_header 4
print_question "Preferisci un sistema molto stabile anche se i programmi non sono sempre all'ultima versione?"
q4=$(ask_yes_no)
if [[ "$q4" == "s" ]]; then
  add_many 3 "preferisci stabilità e prevedibilità" "Debian" "Linux_Mint" "Ubuntu" "Zorin_OS" "MX_Linux" "Q4OS" "antiX" "openSUSE" "Pop_OS"
else
  add_many 3 "ti attirano sistemi più aggiornati" "Fedora" "Arch_Linux" "Endeavour_OS" "Manjaro" "CachyOS" "Garuda_Linux" "Solus"
fi

# 5
print_question_header 5
print_question "Ti interessa una distribuzione rolling release, cioè con aggiornamenti continui senza dover reinstallare il sistema?"
q5=$(ask_yes_no)
if [[ "$q5" == "s" ]]; then
  add_many 4 "vuoi una rolling release" "Arch_Linux" "Endeavour_OS" "Manjaro" "CachyOS" "Garuda_Linux"
  add_many 2 "apprezzi software piuttosto aggiornato" "Solus" "Fedora"
else
  add_many 3 "preferisci un ciclo più tranquillo e prevedibile" "Debian" "Ubuntu" "Linux_Mint" "Zorin_OS" "MX_Linux" "Pop_OS" "Q4OS" "antiX" "Bodhi_Linux"
fi

# 6
print_question_header 6
print_question "Preferisci configurare manualmente il sistema o trovarlo già pronto?"
print_option "1) Voglio un sistema già pronto all'uso"
print_option "2) Va bene un po' di configurazione"
print_option "3) Preferisco configurare quasi tutto manualmente"
echo ""
q6=$(ask_choice 1 3)
case "$q6" in
  1)
    add_many 3 "vuoi qualcosa di pronto all'uso" "${BEGINNER[@]}" "Pop_OS" "Garuda_Linux" "MX_Linux" "Manjaro" "Bodhi_Linux"
    ;;
  2)
    add_many 2 "accetti un po' di configurazione" "Fedora" "Debian" "openSUSE" "MX_Linux" "Endeavour_OS" "Manjaro" "Pop_OS" "Solus"
    ;;
  3)
    add_many 4 "ti piace configurare il sistema in profondità" "${POWER[@]}" "${HARDCORE[@]}"
    add_score "Endeavour_OS" 2 "puoi apprezzare un sistema vicino ad Arch"
    ;;
esac

# 7
print_question_header 7
print_question "Preferisci un sistema già pronto subito dopo l'installazione?"
q7=$(ask_yes_no)
if [[ "$q7" == "s" ]]; then
  add_many 3 "vuoi un sistema immediatamente utilizzabile" "Ubuntu" "Linux_Mint" "Zorin_OS" "Pop_OS" "Garuda_Linux" "MX_Linux" "Manjaro" "Bodhi_Linux"
else
  add_many 2 "non ti spaventa completare e rifinire il sistema" "Arch_Linux" "Gentoo" "Venom_Linux" "Alpine_Linux" "Slackware"
fi

# 8
print_question_header 8
print_question "Se incontri un problema tecnico con il sistema, come ti comporti di solito?"
print_option "1) Cerco soluzioni online e provo a risolvere da solo"
print_option "2) Provo a risolvere, ma preferisco sistemi che richiedano poca manutenzione"
print_option "3) Preferisco evitare sistemi che possano richiedere interventi tecnici"
echo ""
q8=$(ask_choice 1 3)
case "$q8" in
  1)
    add_many 3 "sei autonomo nella risoluzione dei problemi" "${POWER[@]}" "${HARDCORE[@]}"
    add_many 2 "puoi gestire sistemi un po' più tecnici" "${ADVANCED[@]}" "Fedora" "openSUSE"
    ;;
  2)
    add_many 3 "preferisci equilibrio tra autonomia e semplicità" "${INTERMEDIATE[@]}"
    add_score "MX_Linux" 2 "cerchi un sistema pratico e poco problematico"
    ;;
  3)
    add_many 4 "vuoi evitare il più possibile manutenzione tecnica" "${BEGINNER[@]}"
    add_many 2 "può servirti un sistema leggero ma semplice" "${LIGHT[@]}"
    add_score "Pop_OS" 1 "può offrirti un'esperienza piuttosto immediata"
    ;;
esac

# 9
print_question_header 9
print_question "È importante per te poter contare su una grande comunità di supporto?"
q9=$(ask_yes_no)
if [[ "$q9" == "s" ]]; then
  add_many 3 "vuoi una comunità ampia e attiva" "Ubuntu" "Fedora" "Arch_Linux" "Linux_Mint" "Debian" "Endeavour_OS" "Manjaro"
fi

# 10
print_question_header 10
print_question "Il tuo computer ha risorse limitate? (meno di 8 GB di RAM oppure processore molto vecchio)"
q10=$(ask_yes_no)
if [[ "$q10" == "s" ]]; then
  add_many 4 "hai bisogno di un sistema leggero" "${LIGHT[@]}"
  add_many 2 "potrebbe servirti qualcosa di essenziale e veloce" "Alpine_Linux"
  if (( live_enabled == 1 )); then
    add_many 3 "può tornarti utile una live molto leggera" "${LIVE[@]}"
  fi
fi

# 11
print_question_header 11
print_question "Il tuo computer è abbastanza potente? (almeno 8 GB di RAM e processore relativamente moderno)"
q11=$(ask_yes_no)
if [[ "$q11" == "s" ]]; then
  add_many 3 "hai hardware adatto a sistemi moderni" "Fedora" "Pop_OS" "Garuda_Linux" "CachyOS" "Endeavour_OS" "Manjaro" "openSUSE"
  add_score "Arch_Linux" 2 "il tuo hardware può valorizzare un sistema più tecnico"
else
  add_many 2 "meglio evitare sistemi troppo esigenti" "${LIGHT[@]}"
fi

# 12
print_question_header 12
print_question "Userai Linux solo per attività quotidiane di base? (internet, ufficio, multimedia)"
q12=$(ask_yes_no)
if [[ "$q12" == "s" ]]; then
  add_many 3 "cerchi un sistema semplice per uso quotidiano" "Ubuntu" "Linux_Mint" "Zorin_OS" "MX_Linux" "Pop_OS" "Fedora" "Q4OS" "Bodhi_Linux"
else
  add_many 2 "ti serve un sistema più versatile" "Fedora" "Debian" "openSUSE" "Endeavour_OS" "Arch_Linux"
fi

# 13
print_question_header 13
print_question "Utilizzerai Linux anche per programmazione o sviluppo software?"
q13=$(ask_yes_no)
if [[ "$q13" == "s" ]]; then
  add_many 3 "vuoi un sistema valido anche per sviluppo" "Fedora" "Arch_Linux" "Debian" "openSUSE" "Endeavour_OS"
  add_many 2 "può tornarti utile un sistema flessibile" "Manjaro" "Ubuntu"
fi

# 14
print_question_header 14
print_question "Il gaming su Linux è importante per te?"
q14=$(ask_yes_no)
if [[ "$q14" == "s" ]]; then
  add_many 4 "il gaming è una priorità" "Garuda_Linux" "Pop_OS" "CachyOS"
  add_many 2 "può servirti una base moderna e compatibile" "Endeavour_OS" "Manjaro" "Fedora" "Ubuntu"
fi

# 15
print_question_header 15
print_question "Ti piace personalizzare profondamente il sistema?"
q15=$(ask_yes_no)
if [[ "$q15" == "s" ]]; then
  add_many 4 "ami la personalizzazione spinta" "Arch_Linux" "Gentoo" "Venom_Linux" "Slackware"
  add_many 3 "apprezzi sistemi flessibili" "Alpine_Linux" "Endeavour_OS" "CachyOS" "Garuda_Linux"
else
  add_many 3 "preferisci un sistema più pronto e meno impegnativo" "Ubuntu" "Linux_Mint" "Zorin_OS" "Pop_OS"
fi

# 16
print_question_header 16
print_question "Preferisci un sistema minimalista oppure uno già ricco di software?"
print_option "1) Già ricco di software e pronto"
print_option "2) Equilibrato"
print_option "3) Minimalista"
echo ""
q16=$(ask_choice 1 3)
case "$q16" in
  1)
    add_many 3 "vuoi un sistema completo fin da subito" "Ubuntu" "Linux_Mint" "Zorin_OS" "Pop_OS" "Garuda_Linux" "MX_Linux" "Manjaro"
    ;;
  2)
    add_many 2 "preferisci un compromesso equilibrato" "Fedora" "Debian" "openSUSE" "Solus" "Endeavour_OS" "Bodhi_Linux"
    ;;
  3)
    add_many 4 "preferisci un sistema essenziale" "Arch_Linux" "Alpine_Linux" "Gentoo" "Venom_Linux" "Slackware" "antiX" "Q4OS"
    ;;
esac

# 17
print_question_header 17
print_question "Ti interessa avere software e aggiornamenti molto recenti, anche se questo potrebbe ridurre un po' la stabilità del sistema?"
q17=$(ask_yes_no)
if [[ "$q17" == "s" ]]; then
  add_many 4 "vuoi software molto aggiornato" "Arch_Linux" "Endeavour_OS" "CachyOS" "Garuda_Linux" "Manjaro"
  add_many 3 "apprezzi un sistema moderno" "Fedora" "Solus"
  add_score "openSUSE" 1 "potresti gradire soluzioni moderne"
else
  add_many 3 "preferisci un sistema più prudente" "Debian" "Ubuntu" "Linux_Mint" "Zorin_OS" "MX_Linux" "Q4OS"
fi

# 18
print_question_header 18
print_question "Ti interessa capire come funziona Linux \"sotto il cofano\"?"
q18=$(ask_yes_no)
if [[ "$q18" == "s" ]]; then
  add_many 4 "vuoi approfondire il funzionamento interno del sistema" "Arch_Linux" "Gentoo" "Alpine_Linux" "Slackware" "Venom_Linux"
  add_many 2 "potresti gradire un sistema più istruttivo" "Fedora" "Debian" "Endeavour_OS"
else
  add_many 2 "preferisci usare il sistema senza scendere troppo nel tecnico" "${BEGINNER[@]}" "Pop_OS"
fi

# 19
print_question_header 19
print_question "Ti interessa avere un sistema molto veloce e ottimizzato?"
q19=$(ask_yes_no)
if [[ "$q19" == "s" ]]; then
  add_many 4 "cerchi velocità e ottimizzazione" "CachyOS"
  add_many 3 "vuoi un sistema rapido e reattivo" "Arch_Linux" "Endeavour_OS" "antiX" "Q4OS" "Bodhi_Linux"
  add_many 2 "potresti apprezzare sistemi molto snelli" "Alpine_Linux"
  if (( live_enabled == 1 )); then
    add_many 2 "può tornarti utile una live molto rapida" "${LIVE[@]}"
  fi
fi

# 20
print_question_header 20
print_question "Vuoi utilizzare Linux principalmente da chiavetta USB senza installarlo? (per portarlo con te o usarlo su PC diversi)"
q20=$(ask_yes_no)
if [[ "$q20" == "s" ]]; then
  live_enabled=1
  add_many 4 "vuoi un sistema da usare in live USB" "${LIVE[@]}"
else
  live_enabled=0
fi

# 21
print_question_header 21
print_question "Hai bisogno di una distribuzione estremamente leggera?"
q21=$(ask_yes_no)
if [[ "$q21" == "s" ]]; then
  add_many 4 "cerchi la massima leggerezza" "antiX" "Q4OS" "Bodhi_Linux" "MX_Linux"
  add_many 2 "può esserti utile qualcosa di ancora più snello" "Alpine_Linux"
  if (( live_enabled == 1 )); then
    add_many 3 "anche le live leggere possono fare al caso tuo" "${LIVE[@]}"
  fi
else
  add_many 1 "puoi permetterti sistemi più completi" "Ubuntu" "Fedora" "Pop_OS" "openSUSE" "Garuda_Linux"
fi

# 22
print_question_header 22
print_question "Preferisci strumenti grafici invece del terminale quando possibile?"
q22=$(ask_yes_no)
if [[ "$q22" == "s" ]]; then
  add_many 3 "preferisci una gestione più grafica" "Ubuntu" "Linux_Mint" "Zorin_OS" "Pop_OS" "openSUSE" "Manjaro" "Garuda_Linux" "MX_Linux"
else
  add_many 2 "non dipendi dagli strumenti grafici" "Arch_Linux" "Alpine_Linux" "Slackware" "Gentoo" "Endeavour_OS"
fi

# 23
print_question_header 23
print_question "Non hai problemi a utilizzare anche distribuzioni Linux meno diffuse o più particolari?"
q23=$(ask_yes_no)
if [[ "$q23" == "s" ]]; then
  add_many 3 "sei aperto anche a soluzioni meno comuni" "Solus" "Alpine_Linux" "Venom_Linux" "Bodhi_Linux" "Q4OS" "antiX" "CachyOS"
  if (( live_enabled == 1 )); then
    add_many 2 "accetti anche soluzioni particolari in live" "${LIVE[@]}"
  fi
else
  add_many 2 "preferisci qualcosa di più noto e collaudato" "Ubuntu" "Linux_Mint" "Fedora" "Debian" "openSUSE" "Manjaro"
fi

# 24
print_question_header 24
print_question "Ti interessa avere il massimo controllo sul sistema operativo?"
q24=$(ask_yes_no)
if [[ "$q24" == "s" ]]; then
  add_many 4 "vuoi grande controllo sul sistema" "Arch_Linux" "Gentoo" "Slackware" "Alpine_Linux" "Venom_Linux"
  add_score "Endeavour_OS" 2 "puoi apprezzare controllo e flessibilità"
else
  add_many 3 "preferisci una gestione più semplice" "Ubuntu" "Linux_Mint" "Zorin_OS" "Pop_OS"
fi

# 25
print_question_header 25
print_question "Preferisci un sistema semplice oppure potente ma complesso?"
print_option "1) Semplice"
print_option "2) Una via di mezzo"
print_option "3) Potente ma complesso"
echo ""
q25=$(ask_choice 1 3)
case "$q25" in
  1)
    add_many 4 "vuoi soprattutto semplicità" "${BEGINNER[@]}"
    add_many 2 "può servirti qualcosa di leggero ma facile" "${LIGHT[@]}" "${INTERMEDIATE[@]}"
    ;;
  2)
    add_many 3 "cerchi equilibrio" "${INTERMEDIATE[@]}"
    add_many 2 "puoi valutare anche qualcosa di più tecnico ma non estremo" "${ADVANCED[@]}"
    ;;
  3)
    add_many 4 "cerchi potenza e complessità" "${POWER[@]}" "${HARDCORE[@]}"
    add_many 2 "puoi apprezzare sistemi avanzati" "${ADVANCED[@]}"
    ;;
esac

# -------------------------
# Risultati
# -------------------------
mapfile -t top3 < <(make_result_lines | sort -t '|' -k1,1nr -k2,2 | head -n 3)

max_pts=0
if [[ ${#top3[@]} -gt 0 ]]; then
  max_pts="${top3[0]%%|*}"
fi

echo ""
printf "%b\n" "${CYAN}${BOLD}=========================================${NC}"
printf "%b\n" "${CYAN}${BOLD}RISULTATO DEL QUESTIONARIO${NC}"
printf "%b\n" "${CYAN}${BOLD}=========================================${NC}"
echo ""
printf "%b\n" "${YELLOW}Le distribuzioni Linux consigliate per te sono:${NC}"
echo ""

rank=1
for line in "${top3[@]}"; do
  distro="${line#*|}"
  pts="${line%%|*}"
  percent=$(compatibility_percent "$pts" "$max_pts")

  printf "%b\n" "${RED}${BOLD}${rank}) ${names[$distro]}${NC}"
  echo "   Compatibilità: ${percent}%"
  echo "   Punteggio: $pts"
  echo "   ${descriptions[$distro]}"
  if [[ -n "${reasons[$distro]}" ]]; then
    echo "   Motivi principali: ${reasons[$distro]}"
  fi
  echo ""
  ((rank++))
done

read -r -p "Premi Invio per chiudere..."
