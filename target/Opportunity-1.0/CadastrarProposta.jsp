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
        <title>Cadastrar Proposta</title>

    </head>



    <body id="page-top">

        <style>

            span{
                position:relative;
                margin-right:-20px
            }
            input[type='number']{
                padding-left:20px;
                text-align:left;
            }


        </style>



        <form name = "Propostas" action="${pageContext.request.contextPath}/PropostasServlet" method="POST">

            <div id="includedContent"></div>

            <%@include  file="navbar.jsp" %>


            <div align ="center">

                <div class="container">
                    <div class="py-5 text-center">
                        <!--img class="d-block mx-auto mb-4" src="img/LogoPetMaster.png" alt="" width="200" height="200"-->
                        <h2>Cadastrar Proposta</h2>
                    </div>
                </div>


                <div class="col-md-8 order-md-1">


                    <div class="mb-3">
                        <label>Nome do Cliente</label>
                        <div class="input-group">
                            <input name="nomecliente" type="text" class="form-control" id="nomecliente" placeholder="" value="" name="nomecliente" maxlength ="50" required>
                            <div class="invalid-feedback">
                                Primeiro nome necessário
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label>Business Development Manager</label>
                        <div class="input-group">
                            <input name="businessmanager" type="text" class="form-control" id="businessmanager" placeholder="" value="" name="nomecliente" maxlength ="50" required>
                            <div class="invalid-feedback">
                                Resposta necessária
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label>Account Manager</label>
                        <div class="input-group">
                            <input name="accountmanager" type="text" class="form-control" id="accountmanager" placeholder="" value="" name="nomecliente" maxlength ="50" required>
                            <div class="invalid-feedback">
                                Resposta necessária
                            </div>
                        </div>
                        <div class="col-md-3 mb-3">
                            <label for="dataprospec">Data</label>
                            <input name = "nascimento" type="date" class="form-control" id="cep" placeholder="dd/mm/aaaa" maxlength="10" value = "" required>
                            <div class="invalid-feedback">
                                Data obrigatória
                            </div>
                        </div>
                    </div>



                    <div class="mb-3">
                        <span>Qual o potencial de budget para ativações e eventos no ano?</span>
                        <div class="input-group">
                            <input name = "questao1" type="number" class="form-control" min="0.00" step="0.01" max="2500" value="">
                            <div class="invalid-feedback">
                                Resposta necessária
                            </div>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label>Quantos solicitantes de eventos há na empresa?</label>
                        <div class="input-group">
                            <input name="questao2" type="number" class="form-control" id="questao2" placeholder="" value="" maxlength ="80" required>
                            <div class="invalid-feedback">
                                Resposta necessária
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label>Quem são os maiores solicitantes (mais verba destinada à eventos)? (nome/cargo/e-mail/telefone)</label>
                        <div class="input-group">
                            <input name="questao3" type="text" class="form-control" id="questao3" placeholder="" value="" maxlength ="80" required>
                            <div class="invalid-feedback">
                                Resposta necessária
                            </div>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label>Quem é o maior comprador?</label>
                        <div class="input-group">
                            <input name="questao4" type="text" class="form-control" id="questao4" placeholder="" value="" maxlength ="80" required>
                            <div class="invalid-feedback">
                                Resposta necessária
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label align = "left">Todos os BIDs passam por Compras? Descreva o processo de solicitações. Há uma área de Eventos na empresa?<br> O Departamento de Compras se envolve? A solicitação vem direto do marketing/trade?</label>
                        <div class="input-group">
                            <input name="questao5" type="text" class="form-control" id="questao5" placeholder="" value="" maxlength ="80" required>
                            <div class="invalid-feedback">
                                Resposta necessária
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label align = "left">Quais departamentos solicitam eventos? Que tipo de eventos cada um deles realiza?</label>
                        <div class="input-group">
                            <input name="questao6" type="text" class="form-control" id="questao6" placeholder="" value="" maxlength ="80" required>
                            <div class="invalid-feedback">
                                Resposta necessária
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label align = "left">O processo é job a job via homologação? (verificar contrato vigente)</label>
                        <div class="input-group">
                            <input name="questao7" type="text" class="form-control" id="questao7" placeholder="" value="" maxlength ="15" required>
                            <div class="invalid-feedback">
                                Resposta necessária
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label align = "left">Se homologação, há contrato? Quando será feita a próxima homologação?</label>
                        <div class="input-group">
                            <input name="questao8" type="text" class="form-control" id="questao8" placeholder="" value="" maxlength ="80" required>
                            <div class="invalid-feedback">
                                Resposta necessária
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label align = "left">Quanto comprou da MCI em 2017 / 2018?</label>
                        <div class="input-group">
                            <input name = "questao9" type="number" class="form-control" min="0.00" step="0.01" max="2500" value="">
                            <div class="invalid-feedback">
                                Resposta necessária
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label align = "left">Quais são as agências que estão dentro do cliente? (quem são nossos concorrentes?)</label>
                        <div class="input-group">
                            <input name="questao10" type="text" class="form-control" id="questao10" placeholder="" value="" maxlength ="80" required>
                            <div class="invalid-feedback">
                                Resposta necessária
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label align = "left">Vocês homologam empresa de Cenografia e AV? Se sim, quando será feita a próxima homologação?</label>
                        <div class="input-group">
                            <input name="questao11" type="text" class="form-control" id="questao11" placeholder="" value="" maxlength ="80" required>
                            <div class="invalid-feedback">
                                Resposta necessária
                            </div>
                        </div>
                    </div>

                    <hr class="mb-4">
                    <button class="btn btn-primary btn-lg btn-block" type="submit" name = "gravarprospeccao">Gravar</button>
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

        var cpfcliente = "${cpfcliente}"


        if (mensagem == "falha") {
            alert("O CPF " + cpfcliente + " já se encontra cadastrado")

        } else if (mensagem == "Cliente cadastrado com sucesso!") {

            alert(mensagem)

        }
    </script>


</body>
</html>
