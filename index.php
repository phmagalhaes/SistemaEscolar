<?php

require './app/core/Core.php';

require './config/Database/Connection.php';

require './app/controllers/ErroController.php';
require './app/controllers/LoginController.php';
require './app/controllers/HomeController.php';
require './app/controllers/CadastrarAtividadeController.php';
require './app/controllers/CadastrarTurmaController.php';
require './app/controllers/TurmaController.php';

require './app/models/Professores.php';

require './vendor/autoload.php';

$css = file_get_contents('./public/css/style.css');
$template = file_get_contents('./app/views/index.html');

if(isset($_GET['pagina'])){
    $pagina = ucfirst($_GET['pagina']);
} else{
    $pagina = 'Login';
}

ob_start();
    $core = new Core;
    $core->start($_GET);

    $saida = ob_get_contents();
ob_end_clean();

$tplPronto = str_replace('{{conteudo}}', $saida, $template);
$tplPronto = str_replace('{{css}}', "<style>$css</style>", $tplPronto);
if($pagina == "indexPage" || $pagina == "IndexPage"){
    $tplPronto = str_replace('{{title}}', "", $tplPronto);
} else{
    $tplPronto = str_replace('{{title}}', "| $pagina", $tplPronto);
}

echo $tplPronto;