-- 554833 - Vicenzo Massao
-- 556864 - Luiz Reimberg
-- 556862 - Erick Alves

-- 1)
select tf.nome as tipofonte, count(ps.id_projeto) as quantidadeprojetos from PF0645.projetos_sustentaveis ps
join PF0645.tipo_fontes tf on tf.id_tipo_fonte = ps.id_tipo_fonte
group by tf.nome
having count(ps.id_projeto) > 2
order by tf.nome;

-- 2)
select distinct ps.id_projeto as ID_PROJETO, ps.descricao as DESCRICAO, ps.custo as CUSTO from PF0645.projetos_sustentaveis ps
join PF0645.tipo_fontes tf on tf.ID_TIPO_FONTE = ps.ID_TIPO_FONTE
where tf.nome in ('Eólica', 'Solar')
order by ps.descricao;

-- 3)
select ps.id_projeto, ps.descricao, ps.status from PF0645.projetos_sustentaveis ps
where ps.custo > 500000 and ps.status = 'Em andamento'
order by ps.id_projeto;

-- 4)
select rs.nome as REGIAO, round(avg(ps.custo), 2) AS MEDIACUSTO from PF0645.projetos_sustentaveis ps
join PF0645.regioes_sustentaveis rs on rs.id_regiao = ps.id_regiao
group by rs.nome
order by MEDIACUSTO desc;

-- 5)
select rs.nome as REGIAO, tf.nome as TIPOFONTE, count(ps.id_projeto) as QUANTIDADEPROJETOS, round(avg(ec.emissao), 2) as MEDIAEMISSAO
FROM PF0645.projetos_sustentaveis ps
JOIN PF0645.tipo_fontes tf on tf.id_tipo_fonte = ps.id_tipo_fonte
JOIN PF0645.regioes_sustentaveis rs on rs.id_regiao = ps.id_regiao
JOIN PF0645.emissoes_carbono ec on ec.id_tipo_fonte = tf.id_tipo_fonte
group by rs.nome, tf.nome
having avg(ec.emissao) > 5000
order by REGIAO, TIPOFONTE;



