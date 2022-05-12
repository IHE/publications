<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.4.0/Bundle-d0bceb02-ddc1-4855-98a0-00bc364f24eb.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.4.0/Bundle-d0bceb02-ddc1-4855-98a0-00bc364f24eb.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.4.0/Bundle-d0bceb02-ddc1-4855-98a0-00bc364f24eb.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.4.0/Bundle-d0bceb02-ddc1-4855-98a0-00bc364f24eb.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.4.0/Bundle-d0bceb02-ddc1-4855-98a0-00bc364f24eb.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.4.0/Bundle-d0bceb02-ddc1-4855-98a0-00bc364f24eb.html');
else 
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.4.0/Bundle-d0bceb02-ddc1-4855-98a0-00bc364f24eb.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
