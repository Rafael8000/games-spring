<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Novo Jogo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel = "stylesheet">
</head>
<body>
    <div class ="container">
        <h1> Novo jogo</h1>
        <form action="/jogo/insert" method="post">
            <div class="form-group">
                <label for = "titulo">Titulo:</label>
                <input type="text" name="titulo" class="form-control" />
            </div>
            <div class = "form-group">
                <label for = "categoria"> Categoria:</label>
                <select name = "categoria" class="form-select">
                    <c:forEach var="c" items ="${categorias}">
                        <option value="${c.id}">${c.nome}</option>
                    </c:forEach>
                    </select>
            </div>
            <div class = "form-group">
                <label for = "plataforma"> Plataforma(s):</label>
                <c:forEach var="p" items ="${plataformas}">
                    <div class="custom-control custom-checkbox">
                        <input type ="checkbox" class="custom-control-input" name="plataformas" value="${p.id}" id="${p.id}" />
                        <label class="custom-control-label" for="${p.id}">${p.name}</label>
                    </div>
                </c:forEach>
            <br />
            <a href="/jogo/list" class="btn btn-primary"> voltar</a>
            <button type ="submit" class="btn btn-sucess"> salvar </button>
        </form>
    </div>
</body>
</html>
