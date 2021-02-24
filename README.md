# ft_server

<h2>FT_SERVER</h2>

<div>
   <textarea id="1">docker run -p 80:80 -p 443:443 -it --name myname debian:buster
</textarea>
   <button onclick="copia('1')">copia</button>
</div>


<script>
  function copia(testo) {
    var input = document.createElement('input');
    var area = document.getElementById(testo).value;
    input.setAttribute('value', area);
    document.body.appendChild(input);
    input.select();
    var risultato = document.execCommand('copy');
    document.body.removeChild(input);
    alert('testo copiato: '+ area);
    return risultato;
 }
 </script>
