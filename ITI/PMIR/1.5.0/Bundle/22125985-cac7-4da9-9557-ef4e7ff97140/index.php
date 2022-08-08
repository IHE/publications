<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.5.0/Bundle-22125985-cac7-4da9-9557-ef4e7ff97140.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.5.0/Bundle-22125985-cac7-4da9-9557-ef4e7ff97140.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.5.0/Bundle-22125985-cac7-4da9-9557-ef4e7ff97140.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.5.0/Bundle-22125985-cac7-4da9-9557-ef4e7ff97140.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.5.0/Bundle-22125985-cac7-4da9-9557-ef4e7ff97140.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.5.0/Bundle-22125985-cac7-4da9-9557-ef4e7ff97140.html');
else 
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.5.0/Bundle-22125985-cac7-4da9-9557-ef4e7ff97140.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
