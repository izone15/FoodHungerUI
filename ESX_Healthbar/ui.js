$(document).ready(function() {
    window.addEventListener('message', function(event) {
        var data = event.data;
        $(".container").css("display",data.show? "none":"block");
        $("#boxHeal").css("width",data.health + "%");
        $("#boxArmor").css("width",data.armor + "%");
        $("#boxOxygen").css("width",data.oxygen + "%");
        if (event.data.action == "updateStatus") {
            updateStatus(event.data.st);
        }
    })
})


function updateStatus(status){
    $('#boxHunger').css('width', status[0].percent+'%')
    $('#boxThirst').css('width', status[1].percent+'%')
}