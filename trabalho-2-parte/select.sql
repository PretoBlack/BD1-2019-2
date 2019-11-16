--Mostra o titulo do audiobook e o nome do autor do titulo
SELECT aud.titulo, aut.nome as "AUTOR"
FROM audiobook aud INNER JOIN escreveu esc
ON aud.id_audiobook = esc.id_audiobook
INNER JOIN autor aut
ON aut.id_autor = esc.id_autor
ORDER BY aud.titulo ASC;

--Mostra o nome do Narrador e a quantidadede Audiobooks que ele narrou em cada Categoria, sendo maior que 4
SELECT nar.nome as "NARRADOR", cat.nome as "CATEGORIA",COUNT(*) as "QUANTIDADE"
FROM narrador nar INNER JOIN narra n
ON nar.id_narrador = n.id_narrador
INNER JOIN audiobook aud
ON aud.id_audiobook = n.id_audiobook
INNER JOIN pertence per
ON per.id_audiobook = aud.id_audiobook
INNER JOIN categoria cat
ON cat.id_categoria = per.id_categoria
GROUP BY nar.nome,cat.nome
HAVING COUNT(*) > 4;

--Mostra a soma das dura��es de todos os Audiobooks de cada Categoria
SELECT cat.nome as "CATEGORIA", SUM(aud.duracao) as "DURA��O TOTAL EM MINUTOS"
FROM categoria cat INNER JOIN pertence per
ON cat.id_categoria = per.id_categoria
INNER JOIN audiobook aud
ON aud.id_audiobook = per.id_audiobook
GROUP BY cat.nome;

--Mostra o e-mail e a data que o usuario ouviu um audiobook que tem mais de 180 de dura��o
SELECT usu.email, to_char(ouv.data_hora, 'dd/mm/yyyy hh24:mi')
FROM usuario usu INNER JOIN ouviu ouv
ON usu.id_usuario = ouv.id_usuario
INNER JOIN audiobook aud
ON aud.id_audiobook = ouv.id_audiobook
WHERE aud.duracao > 180;

--Mostra o nome e data de nascimento dos usuarios assinantes que nasceram entre 1990 e 2010
SELECT usu.nome, to_char(usu.data_nascimento, 'dd/mm/yyyy')
FROM assinante ass INNER JOIN usuario usu
ON ass.id_usuario = usu.id_usuario
WHERE usu.data_nascimento > to_date('1990', 'yyyy')
AND usu.data_nascimento < to_date('2010', 'yyyy');

-- Mostra de quais categorias os usu�rios j� ouviram audiobooks e a quantidade em cada categoria
SELECT  us.nome, cat.nome as "Categoria", count(*) as "Qtd por categoria"
FROM usuario us
INNER JOIN ouviu o ON us.id_usuario = o.id_usuario
INNER JOIN audiobook ab ON o.id_audiobook = ab.id_audiobook
INNER JOIN pertence p ON p.id_audiobook = ab.id_audiobook
INNER JOIN categoria cat ON cat.id_categoria = p.id_categoria
GROUP BY cat.nome, us.id_usuario, us.nome
ORDER BY us.nome ASC;

-- Mostra os autores que possuem mais de um audiobook no cat�logo e a quantidade
SELECT a.nome, count(*) as "n�mero de livros"
FROM autor a
INNER JOIN escreveu esc ON a.id_autor = esc.id_autor
INNER JOIN audiobook ab ON esc.id_audiobook = ab.id_audiobook
GROUP BY a.nome
HAVING count(*) > 1;

-- Mosta quais audiobooks os usu�rios assinantes escutaram
SELECT ab.titulo, us.nome
FROM audiobook ab
INNER JOIN ouviu o ON ab.id_audiobook = o.id_audiobook
INNER JOIN usuario us ON o.id_usuario = us.id_usuario
INNER JOIN assinante p ON us.id_usuario = p.id_usuario
WHERE us.id_usuario = p.id_usuario;