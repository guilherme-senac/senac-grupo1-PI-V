-- INSERT DATAWAREHOUSE
insert into datawarehouse.dim_calendario
select * from condo.dim_calendario;

insert into datawarehouse.aviso
select * from condo.aviso;

insert into datawarehouse.condominio
select * from condo.condominio;

insert into datawarehouse.condominioaviso
select * from condo.condominioaviso;

insert into datawarehouse.tipomorador
select * from condo.tipomorador;

insert into datawarehouse.morador
select * from condo.morador;

insert into datawarehouse.tipoouvidoria
select * from condo.tipoouvidoria;

insert into datawarehouse.tpunidade
select * from condo.tpunidade;

insert into datawarehouse.unidadehabitacional
select * from condo.unidadehabitacional;

insert into datawarehouse.tiporeserva
select * from condo.tiporeserva;

insert into datawarehouse.reserva
select * from condo.reserva;

INSERT INTO datawarehouse.Ouvidoria (TipoOuvidoriaID, Descricao, DataRegistro, UnidadeHabitacionalid)
VALUES
(2, 'Problema com a iluminação da área comum.', '2024-03-10', 1000309),
(2, 'Elevador sempre com defeito e fora de serviço.', '2024-03-10', 1000010),
(2, 'Falta de manutenção nos jardins do condomínio.', '2024-03-10', 1000011),
(2, 'Vizinhos com barulho excessivo durante a madrugada.', '2024-03-10', 1000012),
(2, 'Água quente da torneira não está funcionando.', '2024-03-10', 1000013),
(2, 'Aquecimento central da piscina está desligado.', '2024-03-10', 1000014),
(2, 'Falta de limpeza nas áreas comuns.', '2024-03-10', 1000015),
(2, 'Bicicletário está desorganizado e sem manutenção.', '2024-03-10', 1000016),
(2, 'Problema com o sistema de segurança do condomínio.', '2024-03-10', 1000317),
(2, 'Portão eletrônico não está funcionando corretamente.', '2024-03-10', 1000318),
(2, 'Falta de sinalização adequada nos corredores.', '2024-03-10', 1000319),
(2, 'Problema com o sistema de câmeras de segurança.', '2024-03-10', 1000320),
(2, 'Mau cheiro no hall do prédio.', '2024-03-10', 1000321),
(2, 'Água da piscina está suja e mal cheirosa.', '2024-03-10', 1000022),
(2, 'Aquecimento das áreas comuns não está funcionando.', '2024-03-10', 1000023),
(2, 'Falta de limpeza nas caixas de correio.', '2024-03-10', 1000024),
(2, 'Insegurança nas entradas do condomínio.', '2024-03-10', 1000025),
(2, 'Água vazando do teto em uma unidade.', '2024-03-10', 1000026),
(2, 'Falta de vigilância durante a noite.', '2024-03-10', 1000027),
(2, 'Problema com o sistema de fechaduras eletrônicas.', '2024-03-10', 1000028),
(2, 'Elevadores com demora excessiva para chegar aos andares.', '2024-03-10', 1000029),
(2, 'Água quente do chuveiro não está funcionando.', '2024-03-10', 1000030),
(2, 'Falta de Wi-Fi nas áreas comuns do prédio.', '2024-03-10', 1000031),
(2, 'Piso do hall do prédio quebrado e perigoso.', '2024-03-10', 1000032),
(2, 'Falta de ventilação nas escadas de emergência.', '2024-03-10', 1000033),
(2, 'Sistema de interfone não está funcionando corretamente.', '2024-03-10', 1000034),
(2, 'Portaria não atende as solicitações com agilidade.', '2024-03-10', 1000035),
(2, 'Escadas de emergência com iluminação insuficiente.', '2024-03-10', 1000036),
(2, 'Ar condicionado nas áreas comuns não está funcionando.', '2024-03-10', 1000037),
(2, 'Falta de atualização no quadro de avisos.', '2024-03-10', 1000038),
(2, 'Problema com o sistema de alarme contra incêndio.', '2024-03-10', 1000039),
(2, 'Elevador quebrado há mais de uma semana.', '2024-03-10', 1000040),
(2, 'Ruídos constantes vindo da área de lazer.', '2024-03-10', 1000041),
(2, 'Mau cheiro nos banheiros das áreas comuns.', '2024-03-10', 1000042),
(2, 'Portões de acesso do condomínio não fecham corretamente.', '2024-03-10', 1000043),
(2, 'Elevador com cheiro de mofo.', '2024-03-10', 1000044),
(2, 'Falta de sinalização de emergência nas saídas do prédio.', '2024-03-10', 1000045),
(2, 'Problema com a iluminação do estacionamento.', '2024-03-10', 1000046),
(2, 'Falta de limpeza nas calçadas ao redor do condomínio.', '2024-03-10', 1000047),
(2, 'Área de lazer com móveis quebrados.', '2024-03-10', 1000048),
(2, 'Sistema de monitoramento sem imagem clara nas câmeras.', '2024-03-10', 1000049),
(2, 'Água da torneira com cor estranha e imprópria para consumo.', '2024-03-10', 1000050),
(2, 'O corredor de acesso aos apartamentos está sujo e com lixo acumulado.', '2024-03-10', 1000051),
(2, 'Barulho constante de obras nas áreas comuns.', '2024-03-10', 1000052),
(2, 'Falta de manutenção no sistema de água quente da piscina.', '2024-03-10', 1000053),
(2, 'Desorganização no local de recebimento de encomendas.', '2024-03-10', 1000054),
(2, 'Problema com o fornecimento de gás nas unidades.', '2024-03-10', 1000055),
(2, 'Falta de segurança nas áreas de entrada do prédio.', '2024-03-10', 1000056),
(2, 'Câmeras de segurança sem cobertura em algumas áreas do prédio.', '2024-03-10', 1000357),
(2, 'Sistema de controle de acesso falhando constantemente.', '2024-03-10', 1000458),
(2, 'Falta de atendimento rápido para reclamações feitas à portaria.', '2024-03-10', 1000459),
(2, 'Sistema de esgoto da unidade entupido.', '2024-03-10', 1000460),
(1, 'Gostaria de saber qual o horário de funcionamento da academia.', '2024-03-10', 1000409),
(1, 'Quais são as regras para a utilização da churrasqueira?', '2024-03-10', 1000410),
(1, 'Há alguma taxa adicional para utilização da piscina?', '2024-03-10', 1000011),
(1, 'Como faço para reservar o salão de festas?', '2024-03-10', 1000012),
(1, 'Qual é o procedimento para receber correspondências no condomínio?', '2024-03-10', 1000013),
(1, 'Gostaria de saber como funciona o sistema de câmeras de segurança.', '2024-03-10', 1000014),
(1, 'Quais os critérios para solicitar manutenção na área comum?', '2024-03-10', 1000515),
(1, 'Qual é o horário de funcionamento da portaria?', '2024-03-10', 1000616),
(1, 'O que fazer em caso de perda da chave do portão de acesso?', '2024-03-10', 1000617),
(1, 'Quais são as regras para o uso do bicicletário?', '2024-03-10', 1000618),
(1, 'O que devo fazer se eu notar um vazamento em minha unidade?', '2024-03-10', 1000619),
(1, 'Gostaria de saber o que é permitido em relação a reformas nas unidades.', '2024-03-10', 1000620),
(1, 'Quais são os horários de silêncio no condomínio?', '2024-03-10', 1000721),
(1, 'Há alguma restrição para receber visitas no condomínio?', '2024-03-10', 1000722),
(1, 'Como posso solicitar o desligamento do serviço de gás?', '2024-03-10', 1000723),
(1, 'Qual é o procedimento para fazer uma reserva de vaga de garagem?', '2024-03-10', 1000724),
(1, 'Quais os documentos necessários para o cadastro de um novo morador?', '2024-03-10', 1000725),
(1, 'Como posso reportar uma situação de insegurança no condomínio?', '2024-03-10', 1000826),
(1, 'Qual o horário de funcionamento da limpeza das áreas comuns?', '2024-03-10', 1000227),
(1, 'Gostaria de saber se o condomínio oferece Wi-Fi nas áreas comuns.', '2024-03-10', 1000328),
(1, 'Como posso solicitar uma segunda chave do portão?', '2024-03-10', 1000329),
(1, 'Qual é o processo para pagamento da taxa de condomínio?', '2024-03-10', 1000330),
(1, 'Qual é o procedimento caso eu perceba um problema no sistema elétrico do meu apartamento?', '2024-03-10', 1000031),
(1, 'Como posso consultar o saldo devedor do meu condomínio?', '2024-03-10', 1000032),
(1, 'O que faço caso a fechadura da minha unidade apresente defeito?', '2024-03-10', 1000033),
(1, 'Qual é a previsão para manutenção do elevador?', '2024-03-10', 1000034),
(1, 'Como posso realizar uma sugestão para melhorias no condomínio?', '2024-03-10', 1000035),
(1, 'Quais são as regras para descarte de lixo reciclável?', '2024-03-10', 1000036),
(1, 'Como posso ser notificado sobre as reuniões do condomínio?', '2024-03-10', 1000037),
(1, 'Como funciona o processo de solicitação de reparo nas áreas comuns?', '2024-03-10', 1000038),
(1, 'Quais são os critérios para a utilização da sala de jogos?', '2024-03-10', 1000039),
(1, 'Como faço para atualizar meus dados cadastrais no condomínio?', '2024-03-10', 1000040),
(1, 'Qual é o procedimento para solicitar mudança de unidade?', '2024-03-10', 1000041),
(1, 'Como posso saber se há vagas disponíveis no estacionamento?', '2024-03-10', 1000042),
(1, 'O que fazer caso eu perca minha chave da garagem?', '2024-03-10', 1000043),
(1, 'Quais são as opções de pagamento para a taxa de condomínio?', '2024-03-10', 1000044),
(1, 'Como funciona o processo para solicitar o uso da quadra esportiva?', '2024-03-10', 1000045),
(1, 'Há algum procedimento para a mudança de morador nas unidades?', '2024-03-10', 1000046),
(1, 'Como posso reservar o estacionamento para visitas?', '2024-03-10', 1000047),
(1, 'Qual o procedimento para alterar o horário de funcionamento das áreas comuns?', '2024-03-10', 1000048),
(1, 'Quais são as regras para o uso da churrasqueira?', '2024-03-10', 1000049),
(1, 'Onde posso encontrar o regulamento interno do condomínio?', '2024-03-10', 1000450),
(1, 'Onde posso encontrar o regulamento interno do condomínio?', '2024-03-10', 50),
(3, 'Solicito reparo na torneira da minha unidade que está vazando.', '2024-03-10', 1000089),
(3, 'Gostaria de solicitar limpeza na área da piscina, que está suja.', '2024-03-10', 1000010),
(3, 'Solicito a instalação de uma tomada extra na sala da minha unidade.', '2024-03-10', 1000011),
(3, 'Solicito a instalação de um interfone na minha unidade.', '2024-03-10', 1000012),
(3, 'Gostaria de solicitar que o elevador fosse limpo e descontaminado.', '2024-03-10', 1000013),
(3, 'Solicito manutenção na iluminação da garagem, está muito fraca.', '2024-03-10', 1000014),
(3, 'Gostaria de solicitar o reparo no sistema de ar-condicionado da minha unidade.', '2024-03-10', 1000015),
(3, 'Solicito a troca da lâmpada no corredor próximo à minha unidade.', '2024-03-10', 1000016),
(3, 'Gostaria de solicitar a limpeza do hall do prédio, pois está muito sujo.', '2024-03-10', 1000017),
(3, 'Solicito a instalação de uma barra de apoio no banheiro da minha unidade.', '2024-03-10', 1000018),
(3, 'Gostaria de solicitar que a piscina fosse aquecida durante o inverno.', '2024-03-10', 1000019),
(3, 'Solicito a troca do tapete no salão de festas, que está muito sujo.', '2024-03-10', 1000020),
(3, 'Solicito que o portão de acesso à garagem seja reparado, está travando.', '2024-03-10', 1000021),
(3, 'Gostaria de solicitar um novo código de acesso ao prédio, pois perdi o anterior.', '2024-03-10', 1000022),
(3, 'Solicito reparo no sistema de alarme do condomínio, ele está disparando sem motivo.', '2024-03-10', 1000023),
(3, 'Gostaria de solicitar a troca da fechadura do meu apartamento, está quebrada.', '2024-03-10', 1000224),
(3, 'Solicito a instalação de câmeras de segurança na entrada do bloco.', '2024-03-10', 1000345),
(3, 'Gostaria de solicitar a mudança de horário de funcionamento da academia.', '2024-03-10', 1000426),
(3, 'Solicito a remoção do lixo acumulado no jardim próximo ao bloco.', '2024-03-10', 1000427),
(3, 'Gostaria de solicitar a revisão do sistema de gás da minha unidade.', '2024-03-10', 1000528),
(3, 'Solicito a manutenção do sistema de água quente nas áreas comuns.', '2024-03-10', 1000629),
(3, 'Solicito a instalação de mais bancos nas áreas externas do condomínio.', '2024-03-10', 1000630),
(3, 'Gostaria de solicitar a troca da chave de acesso à garagem.', '2024-03-10', 1000731),
(3, 'Solicito a instalação de um parquímetro na vaga de estacionamento.', '2024-03-10', 1000832),
(3, 'Gostaria de solicitar que a academia fosse aberta aos sábados à tarde.', '2024-03-10', 1000933),
(3, 'Solicito a instalação de ventiladores na área do salão de festas.', '2024-03-10', 1000834),
(3, 'Gostaria de solicitar a instalação de uma rampa de acesso para cadeirantes.', '2024-03-10', 1000435),
(3, 'Solicito que a área do bicicletário seja ampliada, está muito cheia.', '2024-03-10', 1000536),
(3, 'Gostaria de solicitar a troca da piscina para um modelo aquecível.', '2024-03-10', 1000837),
(3, 'Solicito o reparo do sistema de esgoto que está com problemas de vazamento.', '2024-03-10', 1000438),
(3, 'Gostaria de solicitar que o portão da entrada principal fosse reparado.', '2024-03-10', 1000329),
(3, 'Solicito a instalação de mais vagas para visitantes no estacionamento.', '2024-03-10', 1000402),
(3, 'Gostaria de solicitar a instalação de um parquinho para crianças.', '2024-03-10', 1000461),
(3, 'Solicito a instalação de uma rede de proteção no andar da minha unidade.', '2024-03-10', 1000424),
(3, 'Gostaria de solicitar o aumento da frequência de limpeza nas escadas do prédio.', '2024-03-10', 1000432),
(3, 'Solicito que o sistema de controle de acesso seja revisado, está com falhas.', '2024-03-10', 1000434),
(3, 'Gostaria de solicitar a instalação de um bebedouro na área do jardim.', '2024-03-10', 1000465),
(3, 'Solicito que o salão de festas seja pintado, está com as paredes descascadas.', '2024-03-10', 1000466),
(3, 'Gostaria de solicitar uma reunião com o síndico para discutir o aumento da taxa de condomínio.', '2024-03-10', 1000437),
(3, 'Solicito a troca do tapete no corredor, está muito sujo.', '2024-03-10', 1000485),
(3, 'Gostaria de solicitar o reparo nas portas dos banheiros das áreas comuns.', '2024-03-10', 1001000),
(3, 'Solicito a instalação de um sistema de climatização nas áreas comuns.', '2024-03-10', 1001004);

insert into datawarehouse.dim_condominio
select * from datawarehouse.condominio;

insert into datawarehouse.dim_morador
select * from datawarehouse.morador;

insert into datawarehouse.dim_tipo_ouvidoria
select * from datawarehouse.tipoouvidoria;

insert into datawarehouse.dim_unidade_habitacional
select * from datawarehouse.unidadehabitacional;

insert into datawarehouse.dim_ouvidoria
select * from datawarehouse.ouvidoria;

insert into datawarehouse.dim_status_reserva (id, descricao) values
(0, 'cancelado'),
(1, 'confirmado'),
(2, 'concluído');

insert into datawarehouse.dim_tipo_reserva
select * from datawarehouse.tiporeserva;

INSERT INTO `datawarehouse`.`fato_reservas` (`MoradorID`, `CondominioID`, `DataID`, `TipoReservaID`, `StatusReservaID`, `Quantidade`)  
SELECT  
    m.Id AS MoradorID,  
    c.Id AS CondominioID,  
    d.DATA AS DataID,  
    t.Id AS TipoReservaID,  
    s.Id AS StatusReservaID,  
    COUNT(r.Id) AS Quantidade  
FROM `datawarehouse`.`reserva` r  
JOIN `datawarehouse`.`dim_morador` m ON r.MoradorID = m.Id  
join `datawarehouse`.`dim_unidade_habitacional` u ON u.moradorid = m.id
JOIN `datawarehouse`.`dim_condominio` c ON u.condominioID = c.Id  
JOIN `datawarehouse`.`dim_calendario` d ON r.Data = d.DATA  
JOIN `datawarehouse`.`dim_tipo_reserva` t ON r.TipoReservaID = t.Id  
JOIN `datawarehouse`.`dim_status_reserva` s ON r.Status = s.Id  
GROUP BY m.Id, c.Id, d.DATA, t.Id, s.Id;


INSERT INTO `fato_ouvidorias` (  `UnidadeHabitacionalID`,   `OuvidoriaId`,   `TipoOuvidoriaID`,   `Data`,   `Descricao`)
select 
	uh.id as UnidadeHabitacionalID,
    o.id as OuvidoriaId,
    t.id as TipoOuvidoriaId,
    c.data as Data,
    t.descricao as Descricao
from
dim_unidade_habitacional uh
inner join dim_ouvidoria o ON o.UnidadeHabitacionalid = uh.id
inner join dim_tipo_ouvidoria t on t.id = o.TipoOuvidoriaID
inner join dim_calendario c on c.data = o.dataregistro;