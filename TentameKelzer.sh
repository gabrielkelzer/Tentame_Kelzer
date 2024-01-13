#!/bin/bash
unset MENU_PRINCIPAL



DESENHO_HELE(){
echo -e '\033[1;36m
                        __/)     (\__
                     .-´~~(       )~~´-.
                    /      \ ___ /      \
                   |      /_/◣_◢\_\      |
                   |     _(/( \033[0m\033[1;33mH\033[0m\033[1;36m )\)_     |
                   |   /  |/ \ / \| \    |
                    \  |  `` / \ ´´ |   /
                     \  )   /   \   (  /
                      )/   /     \   \(
                      `    `- - -`    `
\033[0m'
}





while [[ $MENU_PRINCIPAL -ne 4 ]]; do

   clear
   echo '
^-------------------------------------/\--.
||============================= \\\\\\  \/~\/\
||     SCRIPT DA HELÊSOFT        \\\\\\  \/
 |~~~~~~~~-________________-_________________\
 \---------|_________       ------~~~~~---   )
                     \ /~~~~\~~\   )--- \_/ (
                      ||     |  | \   (•)  \\
                      \\____/_ / ()\        \\
                       \~~~~~~~~~-. \        \\
                                   \ \   (•)  \\
                                    \ \        \\
                                     \ \        \\
                                      \ \        \\
                                       \ \  (•)   \|
                                        \_\________|
    SCRIPT: Tentame Kelzer
                             DESENVOLVEDOR: Gabriel Kelzer

         /-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-\
<--X-->  l / Serviço / Áudio falso no Whats    l  <--X-->
<--X-->  l-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-l  <--X-->
<--X-->  l [1] Como funciona a script.         l  <--X-->
<--X-->  l                                     l  <--X-->
<--X-->  l [2] Enviar -  Voz de Homem.         l  <--X-->
<--X-->  l                                     l  <--X-->
<--X-->  l [3] Enviar - Voz de Mulher.         l  <--X-->
<--X-->  l                                     l  <--X-->
<--X-->  l [4] Sair                            l  <--X-->
<--X-->  l                                     l  <--X-->
         \-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-/  

ツ - Escolha uma das opções acima !
' | lolcat
   read MENU_PRINCIPAL
   clear
   case "$MENU_PRINCIPAL" in

     1)
      #Tutorial da script
        echo -e '\033[1;36m
-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
= \033[1;33mSobre o Projeto Tentame Kelzer\033[0m \033[1;36m=
-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
\033[0m
\033[1;31mTentame Kelzer é um programa da HeleSoft, que tem por objetivo enviar áudio falso no Whatsapp. atualmente está na versão 1 desenvolvida pelo Gabriel Kelzer em Shell Script. 

A pergunta que não quer calar é "Como ele fez isso?" Ele implementou o programa espeak na sua script para fazer o termux falar e também utilizou um método que ele mesmo descobriu.

Caso você esteja em dúvida de como usar a script é só escolher a opção que deseja no menu principal e ler com atenção o passo a passo !\033[0m'
        echo
        echo -e "\033[1;33mAPERTE ENTER PARA PROSSEGUIR:\033[0m"
        read SEGUE;;
     2)
      #Parte que envia audio de homem
         unset CONT_SN
         while [[ $CONT_SN != "n" ]]
         do

            clear
            DESENHO_HELE
            echo -e '
         \033[1;31m DIGITE ALGUMA COISA PRO TERMUX FALAR:\033[0m  '
            read VOZ_DE_HOMEM
            clear
            DESENHO_HELE
            echo -e '\033[1;31m
         PRESTE BEM ATENÇÃO, IREI ABRIR O WHATSAPP NO SEU CELL
         E ASSIM QUE VC ESTIVER NO RESPECTIVO APP, ABRA A
         CONVERSA DA PESSOA QUE VC QUEIRA MANDAR O AUDIO
         FALSO E APERTE NO ICONE DE GRAVAÇÃO DE AUDIO.
         ESPERE 5 SEGUNDOS E O AUDIO SAIRA DO TERMUX E 
         PEGARÁ NO WHATSAPP. \033[0m'
            echo
            echo -e '\033[1;33mAPERTE ENTER PARA CONTINUAR: \033[0m'
            read ENTER
            #comando pra abrir o whatsapp
            termux-open https://play.google.com/store/apps/details?id=com.whatsapp
            #comando de fazer o termux falar
            sleep 6;echo "$VOZ_DE_HOMEM" | espeak -vpt-pt -k -20
            clear
            DESENHO_HELE
            echo -e '
 \033[1;33m        DESEJA GRAVAR MAIS AUDIOS NO WHATSAPP ? [s/n] \033[0m'
            read CONT_SN


         done;;
     3)
      #Parte que envia audio de mulher
         unset CONT_SN
         while [[ $CONT_SN != "n" ]]
         do

            clear
            DESENHO_HELE
            echo -e '
 \033[1;31m         DIGITE ALGUMA COISA PRO TERMUX FALAR:  \033[0m'
            read VOZ_DE_MULHER
            clear
            DESENHO_HELE
            echo -e '\033[1;31m
         PRESTE BEM ATENÇÃO, IREI ABRIR O WHATSAPP NO SEU CELL
         E ASSIM QUE VC ESTIVER NO RESPECTIVO APP, ABRA A
         CONVERSA DA PESSOA QUE VC QUEIRA MANDAR O AUDIO
         FALSO E APERTE NO ICONE DE GRAVAÇÃO DE AUDIO.
         ESPERE 5 SEGUNDOS E O AUDIO SAIRA DO TERMUX E
         PEGARÁ NO WHATSAPP. \033[0m'
            echo
            echo -e '\033[1;33mAPERTE ENTER PARA CONTINUAR: \033[0m'
            read ENTER
            #comando pra abrir o whatsapp
            termux-open https://play.google.com/store/apps/details?id=com.whatsapp
            #comando de fazer o termux falar
            sleep 6;echo "$VOZ_DE_MULHER" | espeak -k -20 -vpt+f5 -p 75 -s 85
            clear
            DESENHO_HELE
            echo -e '\033[1;33m
        DESEJA GRAVAR MAIS AUDIOS NO WHATSAPP ? [s/n] \033[0m'
            read CONT_SN


         done;;
     4) 
      #Opção de sair, aqui tbm aparece os creditos
          echo -e '\033[1;36m=-=-=-=-=-=-=\033[0m'
          sleep 0.5
          echo -e '\033[1;36m=\033[0m\033[1;33m CRÉDITOS:\033[0m\033[1;36m =\033[0m'
          sleep 0.5
          echo -e '\033[1;36m=-=-=-=-=-=-=\033[0m'
          sleep 0.5
          echo
          echo -e '\033[1;32mDESENVOLVEDOR:\033[0m'
          sleep 0.5
          echo -e '\033[1;34m     Gabriel Kelzer\033[0m'
          sleep 0.5
	  echo -e '\033[1;34m     Hellsing (Dessa vez ele quis inovar e colocou um B em alguma parte do script, esse cara e demais!)\033[0m'
	  sleep 0.5
          echo -e '\033[1;32mAJUDANTES:\033[0m'
          sleep 0.5
          echo -e '\033[1;34m     * SEM DADOS *\033[0m'
          sleep 0.5
          echo -e '\033[1;32mSALVES:\033[0m'
          sleep 0.5
          echo -e '\033[1;34m     Gabriel Flood.\033[0m'
          sleep 0.5
          echo -e '\033[1;34m     Niccolas Prudencio.\033[0m'
          sleep 0.5
          echo -e '\033[1;34m     Leo Azarelf.\033[0m'
          sleep 0.5
          echo -e '\033[1;32mGRUPOS APOIADORES:\033[0m'
          sleep 0.5
          echo -e '\033[1;34m      Família Flood \033[0m'
          sleep 0.5
          echo -e '\033[1;34m      Tecno Go \033[0m'
          sleep 0.5
          echo -e '\033[1;34m      Programando o mundo \033[0m'
          echo
          echo -e '\033[1;31mツ - APERTE ENTER PARA SAIR DA SCRIPT:\033[0m'
          read SEGUE;;
esac
done
