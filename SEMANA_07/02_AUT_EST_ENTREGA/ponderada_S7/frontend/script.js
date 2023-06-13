

$(document).ready(function() {
    $('#meuBotao').click(function() {
    $.ajax({
        url: 'http://127.0.0.1:3071/contato', 
        method: 'GET',
        contentType: 'application/json',
        
        
        success: function(response) {
        const responseData =  response[0]

        $('#informacoes').html(`Instagram: ${responseData.instagram}<br> Linkedin: ${responseData.linkedin} <br>Email: ${responseData.email}`);
            
            
        },        

        error: function() {
        console.log('Erro na requisição.');
        }
    });
    });
});