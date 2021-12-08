$(function()
{
    $('.weapon').hide();
    window.addEventListener('message', function(event)
    {
        $('#' + event.data.jsweapon).show();
    }, false);

});

document.onreadystatechange = () => {
    if (document.readyState === 'complete') {
        $(document).keyup(function(event) {
            if (event.key === '[') {
                $.post('https://Battlefield_2042_Plus_System/close', JSON.stringify({ message: null }));
                $('.weapon').hide();
            }
        });
    }
}

function getclick(comp, weapon)
{
    $.post('https://Battlefield_2042_Plus_System/datasend', JSON.stringify({
        compc: comp,
        weaponc: weapon
    }))
}