<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Jogos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel = "stylesheet">
</head>
<body>
    <div class = "container">
        <h1>Jogos</h1>
        <a href="/jogo/insert" class="btn btn-primary"> Novo Categoria</a>
        <table class = "table">
            <tr>
                <th>Id</th>
                <th>Titulo</th>
                <th>Categoria</th>
                <th>Plataforma</th>
                <th>&nbsp;</th>
            </tr>
            <c:forEach var = "item" itens="${jogos}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.nome}</td>
                    <td>${item.categoria.nome}</td>
                    <td>
                        <c:forEach var ="p" varStatus="s" items="${item.platformas}">
                            ${s.getCount() > 1 ? ", " : ""}
                            ${p.nome}
                        </c:forEach>
                        <a href="/jogo/update?id=${item.id}" class = "btn btn-warning"> Editar</a>
                        <a href="/jogo/delete?id=${item.id}" class = "btn btn-danger"> Excluir</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div> 
</body>
</html>