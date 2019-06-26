<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Lista de Compras</title>
    <style>
    
        span{
            width: 5em;
            float: left; 
        }
        div{
            padding: 0.1em;
        }
        #botao{
            width: 253px;
            text-align: right;
        }
        body{
            background-image: url("compras.png");
            background-size: 30%;
            background-repeat: no-repeat; 
            background-position-x: 100%;
            background-position-y: 290px;
        }
        textarea{
            animation: 
        }
    </style>
</head>
<body>
    <h1>Lista de Compras:</h1>
    
    <form name="compras">
        <div>
            <label>
                <span>Produto:</span>
                <input type="text" name="produto" required>
            </label>
        </div> 
        <div>
            <label>
                <span>Quantidade:</span> 
                <input type="number" name="quant" required>
            </label>
        </div>
        <div id="botao">
            <input  type="submit" value="Adicionar">
        </div>
    </form>
    
    <textarea>Produtos e Quantidades:</textarea> 
    <ul></ul> 

    <button id="limpar">Limpar</button>
    
    <script>
        document.forms.compras.addEventListener("submit",processaEnvio)
        var lista = document.getElementsByTagName("ul")[0]
        var limpar = document.getElementById("limpar");
        function processaEnvio(e){
            e.preventDefault();
            
            var produto = document.forms.compras.produto.value
            var quantidade = Number(document.forms.compras.quant.value)
           
            //Novos elementos
            var novoLi = document.createElement("li")
            
            //Valores de cada li
            novoLi.textContent = produto+": "+quantidade
            
            //Adicionando novas tags na tabela
            lista.appendChild(novoLi)
            document.forms.compras.reset();
            document.forms.compras.produto.focus();
            
        }
        limpar.addEventListener("click",function(){
            lista.innerHTML="";
        })
    
        
    </script>
</body>
</html>
