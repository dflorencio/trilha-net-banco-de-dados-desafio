-- 1 
select nome, ano from filmes;

-- 2
select nome, ano from filmes order by ano;

-- 3
select nome, ano, duracao from filmes where nome='De Volta para o Futuro';

-- 4
select * from filmes where ano=1997;

-- 5 
select * from filmes where ano>2000;

-- 6 
select * from filmes where duracao>100 and duracao <150 order by duracao;

-- 7
select ano, count(*) as quantidade  from filmes group by ano order by quantidade desc;

-- 8 
select primeironome, ultimonome from atores where genero = 'm';
 
 -- 9 
 select primeironome, ultimonome from atores where genero='f' order by primeironome;

 -- 10 
 select f.nome, g.Genero
	from FilmesGenero as fg 
	inner join filmes as f
	on fg.IdFilme = f.Id
	inner join Generos as g
	on fg.IdGenero = g.id;

-- 11 
select f.nome, g.Genero
	from FilmesGenero as fg 
	inner join filmes as f
	on fg.IdFilme = f.Id
	inner join Generos as g
	on fg.IdGenero = g.id
	where g.Genero='Mistério';

-- 12 
select f.nome,a.PrimeiroNome, a.UltimoNome, e.Papel from elencofilme as e
inner join atores as a 
on e.IdAtor = a.Id
inner join Filmes as f
on e.IdFilme = f.Id;

