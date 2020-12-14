
<script>
function closeIframe(){
	console.log("hiii");
}
window.addEventListener('message', function(e) {
	console.log("hii listener");
	console.log(e.data["val1"]);
	console.log(e.data["val2"]);
	document.getElementById("abc").remove();
	}, false);
</script>
<body>
<iframe id="abc" src="https://hondaservice.test2.adesa.com:9443/hondaservice/api/rest/cpo/cpoconfirmation?code=pZU9yDXB77yYJf2NAUEsxmuLJXRi65nTv8NS76NWmhKHFDe7pnev7b%2bs9qGcDZu9xtqQSDY0OB5I7Hz3V0LeMQ%3d%3d&state=STATE"></iframe>
</body>