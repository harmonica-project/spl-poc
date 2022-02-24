{% if data_storage=="onchain" %}
function sendToBC(){
    console.log("sent to BC from Web3")
}
{% else %}

function sendToBC(){
    console.log("sent to BC from backend")
}
{% endif %}