<%-- 
    Created on : june 20, 2018, 11:13:17 PM
    Author     : paulo.bezerra
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <script type="text/javascript" >

            function limpa_formulário_cep() {
                //Limpa valores do formulário de cep.
                document.getElementById('rua').value = ("");
                document.getElementById('bairro').value = ("");
                document.getElementById('cidade').value = ("");
                document.getElementById('uf').value = ("");
            }

            function meu_callback(conteudo) {
                if (!("erro" in conteudo)) {
                    //Atualiza os campos com os valores.
                    document.getElementById('rua').value = (conteudo.logradouro);
                    document.getElementById('bairro').value = (conteudo.bairro);
                    document.getElementById('cidade').value = (conteudo.localidade);
                    document.getElementById('uf').value = (conteudo.uf);
                } //end if.
                else {
                    //CEP não Encontrado.
                    limpa_formulário_cep();
                    alert("CEP não encontrado.");
                }
            }

            function pesquisacep(valor) {

                //Nova variável "cep" somente com dígitos.
                var cep = valor.replace(/\D/g, '');

                //Verifica se campo cep possui valor informado.
                if (cep != "") {

                    //Expressão regular para validar o CEP.
                    var validacep = /^[0-9]{8}$/;

                    //Valida o formato do CEP.
                    if (validacep.test(cep)) {

                        //Preenche os campos com "..." enquanto consulta webservice.
                        document.getElementById('rua').value = "...";
                        document.getElementById('bairro').value = "...";
                        document.getElementById('cidade').value = "...";
                        document.getElementById('uf').value = "...";

                        //Cria um elemento javascript.
                        var script = document.createElement('script');

                        //Sincroniza com o callback.
                        script.src = 'https://viacep.com.br/ws/' + cep + '/json/?callback=meu_callback';

                        //Insere script no documento e carrega o conteúdo.
                        document.body.appendChild(script);

                    } //end if.
                    else {
                        //cep é inválido.
                        limpa_formulário_cep();
                        alert("Formato de CEP inválido.");
                    }
                } //end if.
                else {
                    //cep sem valor, limpa formulário.
                    limpa_formulário_cep();
                }
            }
            ;

        </script>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template -->
        <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:100,200,300,400,500,600,700,800,900" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="vendor/devicons/css/devicons.min.css" rel="stylesheet">
        <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="topodapagina.css" rel="stylesheet">



        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Prospect</title>

    </head>



    <body id="page-top">



        <form name = "CadastrarProspect" action="${pageContext.request.contextPath}/ProspectsServlet" method="POST">

            <div id="includedContent"></div>

            <%@include  file="navbar.jsp" %>


            <div align ="center">
                <div class="container">
                    <div class="py-5 text-center">
                        <!--img class="d-block mx-auto mb-4" src="img/LogoPetMaster.png" alt="" width="200" height="200"-->
                        <h2>Cadastrar Prospect</h2>
                    </div>
                </div>


                <div class="col-md-8 order-md-1">



                    <div class="mb-3">
                        <label>Empresa</label>
                        <div class="input-group">
                            <input name="empresa" type="text" class="form-control" id="empresa" placeholder="" value="" name="nomecliente" maxlength ="60" required>
                            <div class="invalid-feedback">
                                Nome da Empresa necessário
                            </div>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label>Nome do Contato</label>
                        <div class="input-group">
                            <input name="nomecontato" type="text" class="form-control" id="nomecontato" placeholder="" value="" maxlength ="60" required>
                            <div class="invalid-feedback">
                                Contato necessário
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3 mb-3">
                            <label>Telefone 1</label>
                            <input onkeydown="javascript: fMasc(this, mTel);" name = "telefone1" type="text" class="form-control" id="tel1" placeholder="(xx)xxxxx-xxxx" maxlength="14" value = "">
                            <div class="invalid-feedback">
                                Telefone obrigatório
                            </div>
                        </div>
                        <div class="col-md-3 mb-3">
                            <label>Telefone 2</label>
                            <input onkeydown="javascript: fMasc(this, mTel);" name = "telefone2" type="text" class="form-control" id="tel2" placeholder="(xx)xxxxx-xxxx" maxlength="14" value = "">
                            <div class="invalid-feedback">
                                Telefone obrigatório
                            </div>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label>Email</span></label>
                            <input name ="email" type="email" class="form-control" id="email" placeholder="cliente@exemplo.com" maxlength ="30" value ="">
                            <div class="invalid-feedback">
                                Favor inserir um email válido.
                            </div>

                        </div>
                        <div class="col-md-4 mb-3">
                            <label>Cargo/Depto</label>
                            <div class="input-group">
                                <input name="cargo" type="text" class="form-control" id="cargo" placeholder="" value="" maxlength ="60" required>
                                <div class="invalid-feedback">
                                    Cargo necessário
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 mb-3">
                            <label>Nacional / Internacional</label>
                            <select name = "origem" class="custom-select d-block w-100" id="origem"  required>
                                <option>Nacional</option>
                                <option>Internacional</option>
                            </select>

                            <div class="invalid-feedback">
                                Favor selecionar a Origem..
                            </div>
                        </div>
                        <div class="col-md-2 mb-3">
                            <label>HUB</label>
                            <select name = "hub" class="custom-select d-block w-100" id="hub"  required>
                                <option>Selecionar...</option>
                                <option>Sim</option>
                                <option>Não</option>
                            </select>

                            <div class="invalid-feedback">
                                Favor selecionar o HUB..
                            </div>
                        </div>
                        <div class="col-md-3 mb-3">
                            <label>Travel</label>
                            <select name = "travel" class="custom-select d-block w-100" id="travel"  required>
                                <option>Selecionar...</option>
                                <option>Sim</option>
                                <option>Não</option>
                            </select>

                            <div class="invalid-feedback">
                                Favor selecionar o Travel..
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label>Contato MCI</label>
                            <div class="input-group">
                                <input name="contatomci" type="text" class="form-control" id="contatomci" placeholder="" value="" maxlength ="60" required>
                                <div class="invalid-feedback">
                                    Contato necessário
                                </div>
                            </div>
                        </div>



                    </div>

                    <hr class="mb-4">
                    <button class="btn btn-primary btn-lg btn-block" type="submit" name = "gravarcliente">Gravar</button>
                </div>
            </div>

            <footer class="my-5 pt-5 text-muted text-center text-small">
                <p class="mb-1">&copy; MCI Brasil</p>
            </footer>
        </div>

    </form>




    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="../../../../assets/js/vendor/popper.min.js"></script>
    <script src="../../../../dist/js/bootstrap.min.js"></script>
    <script src="../../../../assets/js/vendor/holder.min.js"></script>

    <script>
                                // Example starter JavaScript for disabling form submissions if there are invalid fields
                                (function () {
                                    'use strict';

                                    window.addEventListener('load', function () {
                                        // Fetch all the forms we want to apply custom Bootstrap validation styles to
                                        var forms = document.getElementsByClassName('needs-validation');

                                        // Loop over them and prevent submission
                                        var validation = Array.prototype.filter.call(forms, function (form) {
                                            form.addEventListener('submit', function (event) {
                                                if (form.checkValidity() === false) {
                                                    event.preventDefault();
                                                    event.stopPropagation();
                                                }
                                                form.classList.add('was-validated');
                                            }, false);
                                        });
                                    }, false);
                                }
                                )();


    </script>

    <script type="text/javascript">
        function fMasc(objeto, mascara) {
            obj = objeto
            masc = mascara
            setTimeout("fMascEx()", 1)
        }
        function fMascEx() {
            obj.value = masc(obj.value)
        }
        function mTel(tel) {
            tel = tel.replace(/\D/g, "")
            tel = tel.replace(/^(\d)/, "($1")
            tel = tel.replace(/(.{3})(\d)/, "$1)$2")
            if (tel.length == 9) {
                tel = tel.replace(/(.{1})$/, "-$1")
            } else if (tel.length == 10) {
                tel = tel.replace(/(.{2})$/, "-$1")
            } else if (tel.length == 11) {
                tel = tel.replace(/(.{3})$/, "-$1")
            } else if (tel.length == 12) {
                tel = tel.replace(/(.{4})$/, "-$1")
            } else if (tel.length > 12) {
                tel = tel.replace(/(.{4})$/, "-$1")
            }
            return tel;
        }
        function mCNPJ(cnpj) {
            cnpj = cnpj.replace(/\D/g, "")
            cnpj = cnpj.replace(/^(\d{2})(\d)/, "$1.$2")
            cnpj = cnpj.replace(/^(\d{2})\.(\d{3})(\d)/, "$1.$2.$3")
            cnpj = cnpj.replace(/\.(\d{3})(\d)/, ".$1/$2")
            cnpj = cnpj.replace(/(\d{4})(\d)/, "$1-$2")
            return cnpj
        }
        function mCPF(cpf) {
            cpf = cpf.replace(/\D/g, "")
            cpf = cpf.replace(/(\d{3})(\d)/, "$1.$2")
            cpf = cpf.replace(/(\d{3})(\d)/, "$1.$2")
            cpf = cpf.replace(/(\d{3})(\d{1,2})$/, "$1-$2")
            return cpf
        }
        function mRG(rg) {
            rg = rg.replace(/\D/g, "")
            rg = rg.replace(/(\d{2})(\d)/, "$1.$2")
            rg = rg.replace(/(\d{3})(\d)/, "$1.$2")
            rg = rg.replace(/(\d{3})(\d{1})$/, "$1-$2")
            return rg
        }
        function mCEP(cep) {
            cep = cep.replace(/\D/g, "")
            cep = cep.replace(/^(\d{2})(\d)/, "$1$2")
            cep = cep.replace(/\.(\d{3})(\d)/, ".$1$2")
            return cep
        }
        function mNum(num) {
            num = num.replace(/\D/g, "")
            return num
        }
    </script>

    <script>


        var mensagem = "${mensagem}"



        if (mensagem == "Prospect Cadastrado") {
            alert(mensagem)

        }
    </script>


</body>
</html>
