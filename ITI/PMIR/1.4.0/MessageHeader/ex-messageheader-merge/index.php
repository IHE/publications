<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.4.0/MessageHeader-ex-messageheader-merge.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.4.0/MessageHeader-ex-messageheader-merge.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.4.0/MessageHeader-ex-messageheader-merge.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.4.0/MessageHeader-ex-messageheader-merge.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.4.0/MessageHeader-ex-messageheader-merge.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.4.0/MessageHeader-ex-messageheader-merge.html');
else 
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.4.0/MessageHeader-ex-messageheader-merge.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
