<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Excluir Categorias</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel = "stylesheet">
</head>
<body>
    <div class ="container">
        <h1> Excluir Categoria</h1>
        <p> tem certeza que deseja remover a categoria "${categoria.nome}"? </p>
        <form action="/categoria/delete" method="post">
            <input type="hidden" name="id" value="${categoria.id}" />
            <br />
            <a href="/categoria/list" class="btn btn-primary"> voltar</a>
            <button type ="submit" class="btn btn-sucess"> salvar </button>
        </form>
    </div>
</body>
</html>
