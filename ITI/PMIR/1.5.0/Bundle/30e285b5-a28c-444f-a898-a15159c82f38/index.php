<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.5.0/Bundle-30e285b5-a28c-444f-a898-a15159c82f38.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.5.0/Bundle-30e285b5-a28c-444f-a898-a15159c82f38.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.5.0/Bundle-30e285b5-a28c-444f-a898-a15159c82f38.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.5.0/Bundle-30e285b5-a28c-444f-a898-a15159c82f38.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.5.0/Bundle-30e285b5-a28c-444f-a898-a15159c82f38.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.5.0/Bundle-30e285b5-a28c-444f-a898-a15159c82f38.html');
else 
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.5.0/Bundle-30e285b5-a28c-444f-a898-a15159c82f38.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
