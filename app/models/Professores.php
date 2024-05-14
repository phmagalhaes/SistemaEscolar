<?php
session_start();
class Professores
{
    public static function login($dadosPost)
    {
        $email = $dadosPost['email'];
        $senha = $dadosPost['senha'];

        $con = Connection::getConn();
        $sql = "SELECT * FROM sistemaescolar.professores where email='$email' and senha='$senha'";
        $result = $con->query($sql);
        $rows = $result->fetchAll();
        if($rows == array()){
            unset($_SESSION['email']);
            unset($_SESSION['senha']);
            header('Location: ?pagina=login');
        }
        else{
            $_SESSION['cpf'] = $cpf;
            $_SESSION['senha'] = $senha;
            header('Location: ?pagina=home');
        }
    }
}