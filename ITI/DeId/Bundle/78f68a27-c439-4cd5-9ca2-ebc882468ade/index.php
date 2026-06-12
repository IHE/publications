<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/DeId/2.0.0-comment/Bundle-78f68a27-c439-4cd5-9ca2-ebc882468ade.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/ITI/DeId/2.0.0-comment/Bundle-78f68a27-c439-4cd5-9ca2-ebc882468ade.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/ITI/DeId/2.0.0-comment/Bundle-78f68a27-c439-4cd5-9ca2-ebc882468ade.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/DeId/2.0.0-comment/Bundle-78f68a27-c439-4cd5-9ca2-ebc882468ade.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/ITI/DeId/2.0.0-comment/Bundle-78f68a27-c439-4cd5-9ca2-ebc882468ade.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/ITI/DeId/2.0.0-comment/Bundle-78f68a27-c439-4cd5-9ca2-ebc882468ade.html');
else 
  Redirect('https://profiles.ihe.net/ITI/DeId/2.0.0-comment/Bundle-78f68a27-c439-4cd5-9ca2-ebc882468ade.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
