use Compra
select a.nome_prod,a.valor_unit,b.quant_venda,a.valor_unit*b.quant_venda as valor_total from Produto as a join Venda as b on a.cod_Prod=b.cod_Prod
