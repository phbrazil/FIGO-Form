
<%-- 
    Created on : june 20, 2018, 11:13:17 PM
    Author     : paulo.bezerra
--%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Welcome to Opportunity</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/signin.css" rel="stylesheet">
    </head>

    <body class="text-center" background="img/PlanodefuntoPetMaster.png" style="background-color: white;">
        <form class="form-signin" action="Login"  method="POST">

            <br>
            <br>
            <br>
            <img class="mb-4" src="img/mci_logo.png" alt="logo MCI" width="200" height="200">
            <h1 class="h5 mb-3 font-weight-normal">FIGO Form</h1>
            <label for="inputEmail" class="sr-only">Email</label>
            <input type="email" id="inputEmail" class="form-control" placeholder="Email address" name = "username" required autofocus>
            <label for="inputPassword" class="sr-only">Senha</label>
            <input type="password" id="inputPassword" class="form-control" placeholder="Password" name = "password" required>
            <label>
                <a href ="Reset.jsp">Esqueci a senha</a>
            </label>
            <button class="btn btn-lg btn-secondary btn-block" type="submit">Entrar</button>
            <p class="mt-5 mb-3 text-muted">&copy; MCI Brasil</p>
        </form>
    </body>
    
        <script>
            
            var mensagem = "${mensagem}"
            
            if(mensagem =="Sess�o Expirada"){
                alert(mensagem)
            }


        var loginfailed = "${loginfailed}"



        if (loginfailed == "Usu�rio ou senha incorreto!") {
            
        alert(loginfailed)

        } 



    </script>
    
</html>
