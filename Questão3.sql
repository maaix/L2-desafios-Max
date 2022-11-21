CREATE  TABLE PESSOAS (
    ID INTEGER primary key,
    NOME varchar(40),
    CONTRATO_ID INTEGER,
    INADIMPLENTES VARCHAR(1),
    DT_COMPLETO DATE,
    FOREIGN KEY (CONTRATO_ID) REFERENCES CONTRATOS(ID)
  );
 
  
  CREATE TABLE CONTRATOS (
    ID INTEGER primary key,
    VALOR_PARCELA FLOAT,
    PARCELAS INT
  );
  
   CREATE TABLE PAGAMENTOS (
    ID INTEGER primary key,
    PESSOA_ID INT,
    DT_PAGAMENTO DATE,
    FOREIGN KEY (PESSOA_ID) REFERENCES PESSOAS(ID)  
  );
  
  
  insert into CONTRATOS VALUES (1,150,100);
   insert into CONTRATOS VALUES (2,300,48);
    insert into CONTRATOS VALUES (3,550,24);
     insert into CONTRATOS VALUES (4,1000,12);
     
     
  
     
     select * from CONTRATOS;
     
     
   insert into PESSOAS VALUES (1,'Cristian Ghyprievy',2,'S', NULL);
   insert into PESSOAS  VALUES (2,'Joana Cabel',1,'S',NULL);
   insert into PESSOAS  VALUES (3,'John Serial',3,'S',NULL);
   insert into PESSOAS VALUES (4,'Michael Seven',2,'N','2021-09-25');
   
   select * from PESSOAS;
   
   
   insert into PAGAMENTOS values (1,4,'2021-09-01');
   insert into PAGAMENTOS values (2,3,'2021-09-05');
   insert into PAGAMENTOS values (3,1,'2021-09-19');
   insert into PAGAMENTOS values (4,2,'2021-09-25');
   
   select * from PAGAMENTOS;
   
   
   select DISTINCT ON(P.nome) P.nome, extract(DAY FROM PAG.dt_pagamento) as DIA_MES, C.valor_parcela
   from PESSOAS AS P,PAGAMENTOS AS PAG,CONTRATOS AS C
   where P.INADIMPLENTES = 'S' and p.contrato_id = C.id and p.id = pag.pessoa_id
   
   select distinct on (p.nome) p.nome, (c.valor_parcela * c.parcelas) as valor_total
   from pessoas as P, contratos as c
   where p.dt_completo is not null  and p.contrato_id = c.id
   
 
   