<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/BALP/1.1.3/MeasureReport-ex-measurereport.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/ITI/BALP/1.1.3/MeasureReport-ex-measurereport.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/ITI/BALP/1.1.3/MeasureReport-ex-measurereport.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/BALP/1.1.3/MeasureReport-ex-measurereport.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/ITI/BALP/1.1.3/MeasureReport-ex-measurereport.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/ITI/BALP/1.1.3/MeasureReport-ex-measurereport.html');
else 
  Redirect('https://profiles.ihe.net/ITI/BALP/1.1.3/MeasureReport-ex-measurereport.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
