select count(i.formation_id),c.cin
from inscrits_formations i,condidats c , formations f
where c.id_condidat=i.id_condidat
and f.formation_id=i.formation_id
and c.cin='H575531'