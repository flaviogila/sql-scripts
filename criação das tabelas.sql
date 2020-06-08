USE MASTER;
 -- CRIANDO BANCO DE DADOS COMERCIAL SANTOS.
 CREATE DATABASE BD_COMERCIAL_SANTOS;

--  REFERENCIANDO O BD_COMERCIAL_SANTOS
USE BD_COMERCIAL_SANTOS;

-- TABELAS QUE SERÃO CRIADAS DENTRO DO BD_COMERCIAL_SANTOS.
--CLIENTE
CREATE TABLE PESSOA
(id_pessoa int not null,
 tipo_pessoa char (3) not null,
 nome_cli varchar (70) not null,
 ativo_s_n char (1) not null);

CREATE TABLE CLI_FISICO
(cpf_cli int not null,
 id_pessoa int not null,
 rg_cli varchar (12) not null);

CREATE TABLE CLI_JURIDICO
(cnpj_cli int not null,
id_pessoa int not null,
cnpj varchar (18) not null,
incricao_estadual varchar (15) not null);

CREATE TABLE DERPART_CONTATO_CLI
(id_contato		int			not null,
 id_pessoa		int			not null,
 numero_contato Varchar (10)not null,
 cli_contato	varchar (45)not null,
 cargo_contato	varchar (45)not null);
 
 -- DADOS PESSOAIS 

CREATE TABLE ENDERECO
(id_end		tinyint	  not null,
id_pessoa	int			not null,
cep_logra char (9)      not null,
tipo_end	varchar(3)		not null,
numero_end	varchar (10)not null,
compl_end	varchar (45)  null,
ref_end		varchar (190) null);


CREATE TABLE LOGRADOURO
(cep_logra char (9) not null,
id_bairro int not null,
tipo_logra char (3) not null,
nome_logra varchar (70) not null);

CREATE TABLE BAIRRO 
(id_bairro int not null,
nome_bairo varchar (70),
id_cid int not null);

CREATE TABLE CIDADE
(id_cid int not null,
nome_cid varchar (45)not null,
uf_cid char (2) not null); 

CREATE TABLE TELEFONE_PESSOA
(id_tel int  not null,
id_pessoa int not null,
num_tell varchar (10) not null,
ddd_tel char (2) not null,
oper_tel varchar (10) not null,
tipo_tel varchar (3)not null);

CREATE TABLE EMAIL_PESSOA
(id_email int not null,
id_pessoa int not null,
end_email varchar (45) not null);

-- PEDIDO 
CREATE TABLE COMPRADOR
(id_comprador int not null,
num_ped int not null);

CREATE TABLE PAGAMENTO_PEDIDO
(num_ped int not null,
id_pag  tinyint not null,
quantidade_parcela tinyint not null,
dia_pag date null);

CREATE TABLE PAGAMENTO
(id_pag tinyint not null,
nome_tipo_pag varchar (10) not null,
vencimento_pag date not null);


CREATE TABLE PEDIDO 
(num_ped int not null,
cnpj_cli int  not null,
cpf_cli int not null,
id_comprador int not null,
id_fornecedor int not null,
data_ped date not null,
hora_ped  time not null,
notas_ped varchar (140) null,
obs_ped varchar (140) null);


CREATE TABLE PEDIDO_PRODUTO
(num_ped int not null,
ref_prod int not null,
qtd_prod tinyint not null,
tipo_quant_prod char (3) not null,
troca_prod char (1) not null,
desconto_prod tinyint null);

CREATE TABLE PRODUTO
(ref_prod int not null,
id_fornecedor int not null,
descr_prod varchar (70) not null,
medidada_prod char(3) not null,
valor_venda_un decimal (6,2) not null,
lucro_prod decimal (6,2) null,
ativo_s_n char (1) null );

-- FORNECEDORES(FABRICA)
CREATE TABLE FORNECEDORES
(id_fornecedor int not null,
id_pessoa int not null,
nome_fabr varchar (70) not null,
forma_entrega varchar(10) not null);

