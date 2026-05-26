Referencias.
Devo continuar ou parar e ver essas informacoes faltantes? Falar com o professor da disciplina?

1. Dados Formais

- Titulo Provisorio: Arquitetura de Baixo Custo baseada em Redes Sem Fio para Monitoramento Centralizado de Experimentos em Laboratórios de Física

- Nome do Orientador: Claudio Alves de Amorim (o modelo e so um exemplo da estrutura)

2. Arquitetura e Stack Tecnologica

- Microcontrolador: atualmente estamos em uma duvida, porque o ESP32 tem Wi-Fi integrada e e minha preferencia, mas tem medicoes analogicas terriveis (exigiria um ADC externo). O Arduino Uno R3 e a preferencia maxima do orientador, por possuir boas leituras, mas nao possui Wi-Fi integrada. A solucao seria utilizar um modulo Wi-Fi como ESP-01 com comandos AT, mas essa opcao limita severamente as minhas opcoes de protocolos e afins. Raspberry Pi Pico ja foi descartado por outras razoes que nao lembro. Outras opcoes no ecossistema Arduino, como Arduino Uno R4 Wi-Fi, foram descartadas pelo alto custo (pretende-se ter mais de um microcontrolador por bancada, evidentemente). Entao isso ainda esta em aberto, e provavelmente deve fazer parte do processo de construcao e implementacao do trabalho. Isso e um problema?

- Backend: Python com Quart (Flask Assincrono), pela facilidade de desenvolvimento de aplicacoes MVC tradicional no ambiente Flask, com suporte a processamento assincrono. Ainda nao foi definido o protocolo, isso e um ponto critico por conta da escolha pendente da placa a ser utilizada, que como mencionado, pode limitar as minhas opcoes. Tive um pouco de dor de cabeca orquestrando solicitacoes HTTP nao bloqueantes no ESP32 em testes anteriores tentando validar a arquitetura. Processamento nao bloqueante pode nao ser exatamente um requisito por agora, mas isso e uma decisao que pode afetar a arquitetura significativamente. No caso de MQTT, provavelmente eu nem utilizaria um servidor, acho que Mosquitto + Grafana ja resolve.

- Banco de Dados: mesmas consideracoes. Se fosse fazer do zero, usaria Postgres. No caso de uma arquitetura baseada em MQTT, me pergunto se InfluxDB seria melhor.

- Frontend: com Quart, faria em HTML. No caso de MQTT, utilizaria algo como Grafana.

3. Experimento de Fisica

- Ainda nao definido o experimento. Devo ter isso logo? Essa escolha depende
