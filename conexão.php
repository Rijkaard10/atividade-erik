<?php
$servidor = "localhost";
$usuario = "root";
$senha = "aluno123";
$banco = "loja_bolos";

// Conexão
$conexao = new mysqli($servidor, $usuario, $senha, $banco, 3306);

// Verificar
if ($conexao->connect_error) {
    die("Falha na conexão: " . $conexao->connect_error);
}
?>
