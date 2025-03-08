DELIMITER $$

CREATE TRIGGER after_insert_aviso
AFTER INSERT ON condo.aviso
FOR EACH ROW
BEGIN
    INSERT INTO dw.aviso (id, titulo, conteudo, datapublicacao)
    VALUES (NEW.id, NEW.titulo, NEW.conteudo, NEW.datapublicacao);
END $$

CREATE TRIGGER after_update_aviso
AFTER UPDATE ON condo.aviso
FOR EACH ROW
BEGIN
    UPDATE dw.aviso 
    SET titulo = NEW.titulo, 
        conteudo = NEW.conteudo, 
        datapublicacao = NEW.datapublicacao
    WHERE id = NEW.id;
END $$

CREATE TRIGGER after_delete_aviso
AFTER DELETE ON condo.aviso
FOR EACH ROW
BEGIN
    DELETE FROM dw.aviso WHERE id = OLD.id;
END $$

DELIMITER ;

DELIMITER $$

CREATE TRIGGER after_insert_condominio
AFTER INSERT ON condo.condominio
FOR EACH ROW
BEGIN
    INSERT INTO dw.condominio (id, NmCondominio, referencia, NmEndereco, NrEndereco, Estado)
    VALUES (NEW.id, NEW.NmCondominio, NEW.referencia, NEW.NmEndereco, NEW.NrEndereco, NEW.Estado);
END $$

CREATE TRIGGER after_update_condominio
AFTER UPDATE ON condo.condominio
FOR EACH ROW
BEGIN
    UPDATE dw.condominio 
    SET NmCondominio = NEW.NmCondominio,
        referencia = NEW.referencia,
        NmEndereco = NEW.NmEndereco,
        NrEndereco = NEW.NrEndereco,
        Estado = NEW.Estado
    WHERE id = NEW.id;
END $$

CREATE TRIGGER after_delete_condominio
AFTER DELETE ON condo.condominio
FOR EACH ROW
BEGIN
    DELETE FROM dw.condominio WHERE id = OLD.id;
END $$

DELIMITER ;


DELIMITER $$

CREATE TRIGGER after_insert_morador
AFTER INSERT ON condo.morador
FOR EACH ROW
BEGIN
    INSERT INTO dw.morador (id, nome, datanascimento, telefone, email, tipomoradorid)
    VALUES (NEW.id, NEW.nome, NEW.datanascimento, NEW.telefone, NEW.email, NEW.tipomoradorid);
END $$

CREATE TRIGGER after_update_morador
AFTER UPDATE ON condo.morador
FOR EACH ROW
BEGIN
    UPDATE dw.morador 
    SET nome = NEW.nome,
        datanascimento = NEW.datanascimento,
        telefone = NEW.telefone,
        email = NEW.email,
        tipomoradorid = NEW.tipomoradorid
    WHERE id = NEW.id;
END $$

CREATE TRIGGER after_delete_morador
AFTER DELETE ON condo.morador
FOR EACH ROW
BEGIN
    DELETE FROM dw.morador WHERE id = OLD.id;
END $$

DELIMITER ;

DELIMITER $$

CREATE TRIGGER after_insert_reserva
AFTER INSERT ON condo.reserva
FOR EACH ROW
BEGIN
    INSERT INTO dw.reserva (id, tiporeservaid, status, data, moradorid)
    VALUES (NEW.id, NEW.tiporeservaid, NEW.status, NEW.data, NEW.moradorid);
END $$

CREATE TRIGGER after_update_reserva
AFTER UPDATE ON condo.reserva
FOR EACH ROW
BEGIN
    UPDATE dw.reserva 
    SET tiporeservaid = NEW.tiporeservaid,
        status = NEW.status,
        data = NEW.data,
        moradorid = NEW.moradorid
    WHERE id = NEW.id;
END $$

CREATE TRIGGER after_delete_reserva
AFTER DELETE ON condo.reserva
FOR EACH ROW
BEGIN
    DELETE FROM dw.reserva WHERE id = OLD.id;
END $$

DELIMITER ;

DELIMITER $$

CREATE TRIGGER after_insert_ouvidoria
AFTER INSERT ON condo.ouvidoria
FOR EACH ROW
BEGIN
    INSERT INTO dw.ouvidoria (id, tipoouvidoriaid, descricao, dataregistro, unidadehabitacionalid)
    VALUES (NEW.id, NEW.tipoouvidoriaid, NEW.descricao, NEW.dataregistro, NEW.unidadehabitacionalid);
END $$

CREATE TRIGGER after_update_ouvidoria
AFTER UPDATE ON condo.ouvidoria
FOR EACH ROW
BEGIN
    UPDATE dw.ouvidoria 
    SET tipoouvidoriaid = NEW.tipoouvidoriaid,
        descricao = NEW.descricao,
        dataregistro = NEW.dataregistro,
        unidadehabitacionalid = NEW.unidadehabitacionalid
    WHERE id = NEW.id;
END $$

CREATE TRIGGER after_delete_ouvidoria
AFTER DELETE ON condo.ouvidoria
FOR EACH ROW
BEGIN
    DELETE FROM dw.ouvidoria WHERE id = OLD.id;
END $$

DELIMITER ;

DELIMITER $$

CREATE TRIGGER after_insert_condominioaviso
AFTER INSERT ON condo.condominioaviso
FOR EACH ROW
BEGIN
    INSERT INTO dw.condominioaviso (condominioid, avisoid)
    VALUES (NEW.condominioid, NEW.avisoid);
END $$

CREATE TRIGGER after_update_condominioaviso
AFTER UPDATE ON condo.condominioaviso
FOR EACH ROW
BEGIN
    UPDATE dw.condominioaviso 
    SET condominioid = NEW.condominioid,
        avisoid = NEW.avisoid
    WHERE condominioid = NEW.condominioid;
END $$

CREATE TRIGGER after_delete_condominioaviso
AFTER DELETE ON condo.condominioaviso
FOR EACH ROW
BEGIN
    DELETE FROM dw.condominioaviso WHERE condominioid = OLD.condominioid;
END $$

DELIMITER ;

DELIMITER $$

CREATE TRIGGER after_insert_tipomorador
AFTER INSERT ON condo.tipomorador
FOR EACH ROW
BEGIN
    INSERT INTO dw.tipomorador (id, descricao)
    VALUES (NEW.id, NEW.descricao);
END $$

CREATE TRIGGER after_update_tipomorador
AFTER UPDATE ON condo.tipomorador
FOR EACH ROW
BEGIN
    UPDATE dw.tipomorador 
    SET descricao = NEW.descricao
    WHERE id = NEW.id;
END $$

CREATE TRIGGER after_delete_tipomorador
AFTER DELETE ON condo.tipomorador
FOR EACH ROW
BEGIN
    DELETE FROM dw.tipomorador WHERE id = OLD.id;
END $$

DELIMITER ;

DELIMITER $$

CREATE TRIGGER after_insert_tipoouvidoria
AFTER INSERT ON condo.tipoouvidoria
FOR EACH ROW
BEGIN
    INSERT INTO dw.tipoouvidoria (id, descricao)
    VALUES (NEW.id, NEW.descricao);
END $$

CREATE TRIGGER after_update_tipoouvidoria
AFTER UPDATE ON condo.tipoouvidoria
FOR EACH ROW
BEGIN
    UPDATE dw.tipoouvidoria 
    SET descricao = NEW.descricao
    WHERE id = NEW.id;
END $$

CREATE TRIGGER after_delete_tipoouvidoria
AFTER DELETE ON condo.tipoouvidoria
FOR EACH ROW
BEGIN
    DELETE FROM dw.tipoouvidoria WHERE id = OLD.id;
END $$

DELIMITER ;

DELIMITER $$

CREATE TRIGGER after_insert_tiporeserva
AFTER INSERT ON condo.tiporeserva
FOR EACH ROW
BEGIN
    INSERT INTO dw.tiporeserva (id, descricao)
    VALUES (NEW.id, NEW.descricao);
END $$

CREATE TRIGGER after_update_tiporeserva
AFTER UPDATE ON condo.tiporeserva
FOR EACH ROW
BEGIN
    UPDATE dw.tiporeserva 
    SET descricao = NEW.descricao
    WHERE id = NEW.id;
END $$

CREATE TRIGGER after_delete_tiporeserva
AFTER DELETE ON condo.tiporeserva
FOR EACH ROW
BEGIN
    DELETE FROM dw.tiporeserva WHERE id = OLD.id;
END $$

DELIMITER ;

DELIMITER $$

CREATE TRIGGER after_insert_tpunidade
AFTER INSERT ON condo.tpunidade
FOR EACH ROW
BEGIN
    INSERT INTO dw.tpunidade (id, nmtpunidade)
    VALUES (NEW.id, NEW.nmtpunidade);
END $$

CREATE TRIGGER after_update_tpunidade
AFTER UPDATE ON condo.tpunidade
FOR EACH ROW
BEGIN
    UPDATE dw.tpunidade 
    SET nmtpunidade = NEW.nmtpunidade
    WHERE id = NEW.id;
END $$

CREATE TRIGGER after_delete_tpunidade
AFTER DELETE ON condo.tpunidade
FOR EACH ROW
BEGIN
    DELETE FROM dw.tpunidade WHERE id = OLD.id;
END $$

DELIMITER ;

DELIMITER $$

CREATE TRIGGER after_insert_unidadehabitacional
AFTER INSERT ON condo.unidadehabitacional
FOR EACH ROW
BEGIN
    INSERT INTO dw.unidadehabitacional (id, moradorid, nmbloco, nrbloco, condominioid, tpunidadeid)
    VALUES (NEW.id, NEW.moradorid, NEW.nmbloco, NEW.nrbloco, NEW.condominioid, NEW.tpunidadeid);
END $$

CREATE TRIGGER after_update_unidadehabitacional
AFTER UPDATE ON condo.unidadehabitacional
FOR EACH ROW
BEGIN
    UPDATE dw.unidadehabitacional 
    SET moradorid = NEW.moradorid,
        nmbloco = NEW.nmbloco,
        nrbloco = NEW.nrbloco,
        condominioid = NEW.condominioid,
        tpunidadeid = NEW.tpunidadeid
    WHERE id = NEW.id;
END $$

CREATE TRIGGER after_delete_unidadehabitacional
AFTER DELETE ON condo.unidadehabitacional
FOR EACH ROW
BEGIN
    DELETE FROM dw.unidadehabitacional WHERE id = OLD.id;
END $$

DELIMITER ;
