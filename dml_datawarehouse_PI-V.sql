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