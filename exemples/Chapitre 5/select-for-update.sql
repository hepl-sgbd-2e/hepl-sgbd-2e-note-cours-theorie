select *
from EMPLOYES
where upper(PRENOM) like 'JAMES'
FOR UPDATE;