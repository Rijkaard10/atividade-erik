<?php
include("conexao.php");

if (!$conexao) {
    die("A variável \$conexao não está definida ou é nula.");
}
?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Loja de Bolos</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<h1>🍰 Loja de Bolos</h1>

<?php
$sql = "SELECT * FROM bolos";
$resultado = $conexao->query($sql);

if ($resultado->num_rows > 0) {
    while($bolo = $resultado->fetch_assoc()) {
        echo "<div class='bolo'>";
        echo "<h2>" . $bolo["nome"] . "</h2>";
        echo "<a href='" . $bolo["url_imagem"] . "' target='_blank'>" . $bolo["url_imagem"] . "</a><br>";
        echo "<p><strong>Preço original:</strong> R$ " . number_format($bolo["valor"], 2, ',', '.') . "</p>";
        echo "<p><strong>Com desconto:</strong> R$ " . number_format($bolo["preco_desconto"], 2, ',', '.') . "</p>";
        echo "</div>";
    }
} else {
    echo "<p>Nenhum bolo cadastrado.</p>";
}

$conexao->close();
?>

</body>
</html>
