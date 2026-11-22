PRAGMA foreign_keys = ON;

INSERT INTO Edição (EdiçãoID, dataInício, dataFim)
VALUES 
    (1, '2025-06-01', '2025-06-10');

INSERT INTO Ciclista (CiclistaID, nome, nacionalidade, dataNascimento)
VALUES 
    (2242, 'Afonso Caldas', 'Portuguesa', '2007-05-27'),
    (7174, 'Micael Moreira', 'Finlandesa', '2007-03-01'),
    (1512, 'Hataro Rita', 'Japonesa', '2007-12-15');

INSERT INTO Equipa (sigla, nome, país, patrocinador)
VALUES 
    ('MM', 'Motas Montanhosas', 'Portugal', 'EDP'),
    ('UWU', 'Ultra Winner Unit', 'Japão', 'Toyota'),
    ('GW', 'Gonna Win', 'Finlândia', 'Supercell');

INSERT INTO Comissário(numLicença, nome)
VALUES 
    (351, 'Carla Lopes'),
    (777, 'Ricardo Rocha');

INSERT INTO EdiçãoComissário(EdiçãoID, numLicença)
VALUES
    (1, 351),
    (1, 777);

INSERT INTO Inscrição(EdiçãoID, dorsal, CiclistaID, sigla)
VALUES
    (1,1,2242, 'GW'),
    (1,2,7174, 'MM'),
    (1,3,1512, 'UWU');

INSERT INTO Etapa (EdiçãoID, número, partida, chegada, distância, data)
VALUES 
    (1, 1, 'Porto', 'Braga', 120, '2025-06-01'),
    (1, 2, 'Braga', 'Viseu', 140, '2025-06-02'),
    (1, 3, 'Viseu', 'Guarda', 30, '2025-06-03'),
    (1, 4, 'Guarda', 'Serra da Estrela', 170, '2025-06-04');

INSERT INTO EtapaContrarrelógio(EdiçãoID, número, tipo, intervaloPartida)
VALUES
    (1, 3, 'plana', '00:02:00');


INSERT INTO EtapaMontanha(EdiçãoID, número, ganhoElevação, altitudeMáxima)
VALUES
    (1, 4, 1130, 1400);

INSERT INTO Percurso(EdiçãoID, número, local)
VALUES 
    (1, 2, 'Travanca');

INSERT INTO PontoIntermédio(PontoIntermédioID, EdiçãoID, número, quilómetro)
VALUES
    (1,1,4, 67),
    (2,1,3, 69);

INSERT INTO Sprint(PontoIntermédioID, tempoBonificação)
VALUES
    (2, 60);

INSERT INTO PontoMontanha(PontoIntermédioID, categoria)
VALUES
    (1, '1ª');

INSERT INTO Participação(EdiçãoID, dorsal, número, posição, tempoBruto)
VALUES
    (1, 1, 1, 1, '02:33:16'),
    (1, 1, 2, 1, '02:47:20'),
    (1, 1, 3, 1, '00:31:10'),
    (1, 1, 4, 1, '03:07:03'),
    (1, 2, 1, 2, '02:35:39'),
    (1, 2, 2, 2, '02:51:00'),
    (1, 2, 3, 2, '00:32:00'),
    (1, 2, 4, 2, '03:19:12'),
    (1, 3, 1, 3, '02:40:53'),
    (1, 3, 2, 3, '02:54:22'),
    (1, 3, 3, 3, '00:32:01'),
    (1, 3, 4, 3, '03:21:43');

INSERT INTO Penalização(PenalizaçãoID, EdiçãoID, dorsal, número, motivo, tempoAdicionado)
VALUES
    (1, 1, 2, 4, 'Saiu do trilho estipulado', '00:02:00');

INSERT INTO Incidente(IncidenteID, EdiçãoID, dorsal, número, quilómetro, tipo)
VALUES
    (1,1,3, 1, 27, 'Queda em curva apertada');

INSERT INTO Bonificação (BonificaçãoID, EdiçãoID, dorsal, número, PontoIntermédioID, tempoDescontado)
VALUES
    (1,1,1,4,1,'00:02:00');