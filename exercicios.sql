use campeonato;

-- Selecione todos os campos da tabela "times".
select * from times;
select id, nome, uf, qtd_torcedores, fundacao, qtd_atletas from times;

-- Selecione apenas os campos "nome" e “uf” da tabela "times".
select nome, uf from times;

-- Selecione apenas os times que são do estado do Rio de Janeiro e que 
-- tem uma torcida maior que 3.6 milhões.
select * 
from times
where uf = 'RJ' and qtd_torcedores > 3600000;

-- Selecione apenas os times que têm mais de 10 milhões de torcedores.
select * 
from times
where qtd_torcedores > 10000000;

-- Selecione apenas os times fundados antes de 1912 e que são dos estados de SP e MG.
select *
from times
where uf in ('SP', 'MG')
and year(fundacao) < 1912;

-- Selecione apenas os times que têm menos de 25 atletas e que não são do estado de PE.
select *
from times
where uf not in ('PE')
and qtd_atletas < 25;

-- Selecione o time com o maior e menor número de torcedores.
(select * 
from times 
order by qtd_torcedores desc
limit 1)
union all
(select * 
from times 
order by qtd_torcedores asc
limit 1);

-- Selecione a média de torcedores de todos os times.
select avg(qtd_torcedores) as media from times;

-- Selecione os times que tem o nome iniciado com a letra S e que tem menos de 3 milhões de torcedores.
select * from times
where nome like 'S%' and qtd_torcedores < 3000000;

-- Selecione a quantidade de times que tem mais de 25 jogadores.
select count(*) from times where qtd_atletas > 25;

-- Selecione os times dos seguintes estados: RJ, SP e MG (Façam 2 sqls para esse item)
select * from times
where uf in ('RJ','SP','MG');

select * from times
where uf = 'RJ' or uf = 'SP' or uf = 'MG';

-- Selecione de forma única, a informação de UF dos times;
select distinct uf from times;

-- Selecione os time que tem data de fundação entre 01/01/1904 a 31/12/1930.
select * from times 
where fundacao between '1904-01-01' and '1930-12-31';

select * from times
where fundacao > '1904-01-01' and fundacao < '1930-12-31';

-- Exclua os times que tem no nome alguma letra f.
select count(*) from times;
delete from times where nome like '%f%';

-- Atualize a informação de quantidade de atletas dos time iniciados com a letra C para 40 jogadores.
