use bd_sim_fontes;

select
	f.protocolo as protocolo,
    d.dt        as dt_protocolo,
    f.servico   as servico,
    f.atributo  as atributo,
    f.tipo      as tipo,
    f.valor     as valor
from
	form as f
    
left join (
	select
		t.protocolo                     as protocolo,
		min(t.`Data e Hora de criação`) as dt
	from tasks as t
	group by t.protocolo
) as d on f.protocolo = d.protocolo
;
