$(function () {
    $("button").click(function () {
        $.ajax({
            async: true,
            url: 'https://api.fixer.io/latest ',
            method: "GET",
        })
            .done(successFunction)
            .fail(failFunction)

        function successFunction(data) {

            var sek = data.rates.SEK;
            var nor = data.rates.NOK;
            var dkk = data.rates.DKK;
            var gbp = data.rates.GBP;
            var usd = data.rates.USD;
            var cad = data.rates.CAD;
            var pkr = data.rates.INR;
            var temp = $('#curr_number').val();
            console.log(temp);
            $(".pkrSek").text(((pkr / sek) * temp * 1.7).toFixed(3));
            $(".canSek").text(((cad / sek) * temp).toFixed(3));
            $(".usaSek").text(((usd / sek) * temp).toFixed(3));
            $(".norSek").text(((nor / sek) * temp).toFixed(3));
            $(".denSek").text(((dkk / sek) * temp).toFixed(3));
            $(".engSek").text(((gbp / sek) * temp).toFixed(3));

            console.log(nor);
            console.log(dkk);
            console.log(gbp);
            console.log(usd);
            console.log(cad);
        }
        function failFunction(request, textStatus, errorThrown) {
            console.log('Funkar ej.. ');
        }
    });
});