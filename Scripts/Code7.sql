use nomeSorteio;

insert into Sorteados (NomeCompleto)
select N.Nome + ' ' + S.Sobrenome
from Nomes N
cross join Sobrenomes S
order by RAND()
offset 0 rows
fetch next 10000 rows only;