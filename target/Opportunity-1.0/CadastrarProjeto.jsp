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
        <title>Cadastrar Projeto</title>

    </head>



    <body id="page-top">



        <form name = "CadastrarCliente" action="${pageContext.request.contextPath}/CadastrarCliente" method="POST">

            <div id="includedContent"></div>

            <%@include  file="navbar.jsp" %>


            <div align ="center">
                <br>

                <div class="container">
                    <div class="py-5 text-center">
                        <!--img class="d-block mx-auto mb-4" src="img/LogoPetMaster.png" alt="" width="200" height="200"-->
                        <h2>Cadastrar Projeto</h2>
                    </div>
                </div>


                <div class="col-md-8 order-md-1">

                    <div class="mb-3">
                        <label for="cpf">CNPJ do cliente</label>
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"></span>
                            </div>

                            <input onkeydown="javascript: fMasc(this, mCNPJ());" type="text" class="form-control" id="cpf" name="cnpjcliente" maxlength="20" placeholder="0000.000.00000" required>

                            <div class="invalid-feedback" style="width: 100%;">
                                CNPJ obrigatório.
                            </div>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="primeironome">Nome do Cliente</label>
                        <div class="input-group">
                            <input name="nomecliente" type="text" class="form-control" id="nomecliente" placeholder="" value="" name="nomecliente" maxlength ="60" required>
                            <div class="invalid-feedback">
                                Primeiro nome necessário
                            </div>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="primeironome">Contato no Cliente</label>
                        <div class="input-group">
                            <input name="contatocliente" type="text" class="form-control" id="nomecliente" placeholder="" value="" maxlength ="60" required>
                            <div class="invalid-feedback">
                                Contato necessário
                            </div>
                        </div>
                    </div>


                    <div class="mb-3">
                        <label for="email">Email<span class="text-muted"> (Opcional)</span></label>
                        <input name ="email" type="email" class="form-control" id="email" placeholder="cliente@exemplo.com" maxlength ="30" value ="">
                        <div class="invalid-feedback">
                            Favor inserir um email válido.
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3 mb-3">

                            <label>CEP</label>
                            <input name ="cep" type="text" class="form-control" id="cep"   placeholder="00000000" size="10" maxlength="8" required onblur="pesquisacep(this.value);">
                            <div class="invalid-feedback">
                                CEP obrigatório
                            </div>
                        </div>

                        <div class="col-md-8 mb-3">
                            <label>Rua</label>
                            <input name ="rua" type="text" class="form-control" id="rua" placeholder="Rua hum 1234"  size="60" maxlength ="50" required>

                            <div class="invalid-feedback">
                                Favor inserir a Rua
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label>Bairro</label>
                        <input name ="bairro" type="text" class="form-control" id="bairro" placeholder="Bairro" size="40" maxlength ="50" required>
                        <div class="invalid-feedback">
                            Favor inserir o Bairro.
                        </div>
                    </div>
                    <div class="mb-3">
                        <label>Cidade</label>
                        <input name ="cidade" type="text" class="form-control" id="cidade" placeholder="Cidade" size = "40" maxlength ="50" required>
                        <div class="invalid-feedback">
                            Favor inserir a Cidade.
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-md-5 mb-3">
                            <label>País</label>
                            <select name ="pais" class="custom-select d-block w-100" id="pais" required>
                                <option>Brasil</option>
                            </select>
                            <div class="invalid-feedback">
                                Favor selecionar o país.
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label>Estado</label>
                            <select name = "estado" class="custom-select d-block w-100" id="estado"  required>
                                <option>Acre</option>
                                <option>Alagoas</option>
                                <option>Amapá</option>
                                <option>Amazonas</option>
                                <option>Bahia</option>
                                <option>Ceará</option>
                                <option>Distrito Federal</option>
                                <option>Espírito Santo</option>
                                <option>Goiás</option>
                                <option>Maranhão</option>
                                <option>Mato Grosso</option>
                                <option>Mato Grosso do Sul</option>
                                <option>Minas Gerais</option>
                                <option>Pará</option>
                                <option>Paraíba</option>
                                <option>Paraná</option>
                                <option>Pernambuco</option>
                                <option>Piauí</option>
                                <option>Rio de Janeiro</option>
                                <option>Rio Grande do Norte</option>
                                <option>Rio Grande do Sul</option>
                                <option>Rondônia</option>
                                <option>Roraima</option>
                                <option>Santa Catarina</option>
                                <option>São Paulo</option>
                                <option>Sergipe</option>
                                <option>Tocantins</option>
                            </select>

                            <div class="invalid-feedback">
                                Favor selecionar um Estado..
                            </div>
                        </div>

                        <div class="col-md-3 mb-3">
                            <label  for="uf">UF</label>
                            <select name = "uf" class="custom-select d-block w-100" id="uf"  required>
                                <option>AC</option>
                                <option>AL</option>
                                <option>AP</option>
                                <option>AM</option>
                                <option>BA</option>
                                <option>CE</option>
                                <option>DF</option>
                                <option>ES</option>
                                <option>GO</option>
                                <option>MA</option>
                                <option>MT</option>
                                <option>MS</option>
                                <option>MG</option>
                                <option>PA</option>
                                <option>PB</option>
                                <option>PR</option>
                                <option>PE</option>
                                <option>PI</option>
                                <option>RJ</option>
                                <option>RN</option>
                                <option>RS</option>
                                <option>RO</option>
                                <option>RR</option>
                                <option>SC</option>
                                <option>SP</option>
                                <option>SE</option>
                                <option>TO</option>
                            </select>

                            <div class="invalid-feedback">
                                Favor selecionar uma UF..
                            </div>
                        </div>
                        <div class="col-md-3 mb-3">
                            <label for="telefone">Telefone</label>
                            <input onkeydown="javascript: fMasc(this, mTel);" name = "telefone" type="text" class="form-control" id="tel" placeholder="(xx)xxxxx-xxxx" maxlength="14" value = "">
                            <div class="invalid-feedback">
                                Telefone obrigatório
                            </div>
                        </div>
                        <div class="col-md-3 mb-3">
                            <label for="celular">Celular</label>
                            <input onkeydown="javascript: fMasc(this, mTel);" name ="celular" type="text" class="form-control" id="cel" placeholder="(xx)xxxxx-xxxx" maxlength="14" value = "" required>
                            <div class="invalid-feedback">
                                Celular obrigatório
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

            var cpfcliente = "${cpfcliente}"


            if (mensagem == "falha") {
                alert("O CPF " + cpfcliente + " já se encontra cadastrado")

            } else if (mensagem == "Cliente cadastrado com sucesso!") {

                alert(mensagem)

            }
        </script>


    </body>
</html>
