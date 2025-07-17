use DB_Jaiane;
-- Criação da tabela Cliente

create table Cliente (
	id_cliente int not null auto_increment comment 'Idenficador do cliente',
	nome varchar(100) not null comment 'Nome do cliente',
	email varchar(100) not null comment 'Email do cliente',
	telefone varchar(20) not null comment 'Telefone do cliente',
	primary key (id_cliente)
	)
ENGINE=InnoDB DEFAULT CHARSET = utf8mb4;
	/* 
	ENGINE=InnoDB define o mecanismo de armazenamento usado pela tabela.
	DEFAULT CHARSET = utf8mb4 define o padrão do texto.
	Esse aceita números, letras, símbolos, caracteres especiais, emojis etc.
	*/
	
-- Criação da tabela Produto

create table Produto (
	id_produto int not null auto_increment comment 'Identificador do produto',
	descricao varchar(100) not null,
	preco decimal(10,2) not null,
	primary key (id_produto)
	)
ENGINE=InnoDB DEFAULT CHARSET = utf8mb4;


-- Criação da tabela Venda

create table Venda (
	id_venda int not null auto_increment comment 'Identificador da venda',
	data_venda date not null comment 'Data da execução da venda',
    cliente_id_cliente int,
    
	primary key (id_venda),
    
    CONSTRAINT fk_Venda_Cliente -- Comando de restrição que garante que só vai registrar vendas com clientes que existem
		FOREIGN KEY (cliente_id_cliente)
		REFERENCES Cliente(id_cliente)
		ON DELETE SET NULL -- Se um cliente for apagado do sistema, o campo id_cliente da venda vira NULL
        ON UPDATE CASCADE, -- Se o id do cliente mudar, todas as vendas serão migradas junto automaticamente

	INDEX idx_Venda_Cliente (Cliente_id_cliente) -- Índice na tabela Venda para acelerar as pesquisas por cliente
	)
ENGINE=InnoDB DEFAULT CHARSET = utf8mb4;
	
-- Criação da tabela ItemVenda

create table ItemVenda (
	id_item int not null auto_increment comment 'Identificador do item da venda',
	venda_id_venda int not null,
	quantidade int not null comment 'Quantidade de itens',
	subtotal decimal(10,2) not null comment 'Subtotal dos itens',
	produto_id_produto int,
    
	primary key (id_item),
		
        CONSTRAINT fk_ItemVenda_Venda
		FOREIGN KEY (venda_id_venda)
		REFERENCES Venda(id_venda)
		ON DELETE CASCADE, -- Se uma venda for excluída, todos os itens dessa venda serão removidos automaticamente

	FOREIGN KEY (produto_id_produto)
	REFERENCES Produto(id_produto) ON DELETE SET NULL -- Se o produto for excluído do cadastro, o resgistro de que ele foi vendido continua salvo e o produto vira NULL
)
ENGINE=InnoDB DEFAULT CHARSET = utf8mb4;
	
-- Criação da tabela Pagamento

create table Pagamento (
	id_pagamento int not null auto_increment comment 'Identificador de cada pagamento',
	forma_pagamento varchar(50) not null comment 'Meio de pagamento utilizado',
	valor_pago decimal(10,2) not null comment 'Valor total do pagamento',
	parcelas int,
	venda_id_venda int not null,
	
    primary key (id_pagamento),
		
	CONSTRAINT fk_Pagamento_Venda
		FOREIGN KEY (venda_id_venda)
		REFERENCES Venda(id_venda) 
		ON DELETE CASCADE,

UNIQUE INDEX uk_Pagamento_Venda (venda_id_venda) -- Esse comando define que o relacionamento das entidades Pagamento e Venda são 1:1
	)
ENGINE=InnoDB DEFAULT CHARSET = utf8mb4;

ALTER TABLE ItemVenda
	ADD CONSTRAINT fk_ItemVenda_Produto
		FOREIGN KEY (produto_id_produto)
        REFERENCES Produto(id_produto)
        ON DELETE SET NULL
        ON UPDATE CASCADE;