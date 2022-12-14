-- Databricks notebook source
select * 
from silver_olist.pedido
WHERE descSituacao = 'shipped'


-- COMMAND ----------

SELECT * 

FROM silver_olist.pedido

WHERE descSituacao = 'shipped'
AND year(dtPedido) = '2018'


-- COMMAND ----------

SELECT * 

FROM silver_olist.pedido

WHERE (descSituacao = 'shipped' OR  descSituacao = 'canceled')
AND year(dtPedido) = '2018'


-- COMMAND ----------

SELECT * 

FROM silver_olist.pedido

WHERE descSituacao in ('shipped','canceled')
AND year(dtPedido) = '2018'

-- leiase selcione todas as colunas da tabela...


-- COMMAND ----------

SELECT * 

FROM silver_olist.pedido

WHERE descSituacao in ('shipped','canceled')
AND year(dtPedido) = '2018'
AND datediff(dtEstimativaEntrega, dtAprovado) > 30

-- COMMAND ----------

SELECT *,
       datediff(dtEstimativaEntrega, dtAprovado) AS diffDataAprovadoEEstimativaDeEntrega

FROM silver_olist.pedido

WHERE descSituacao in ('shipped','canceled')
AND year(dtPedido) = '2018'
AND datediff(dtEstimativaEntrega, dtAprovado) > 30
