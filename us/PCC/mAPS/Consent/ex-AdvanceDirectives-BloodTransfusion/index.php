<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/us/PCC/mAPS/1.0.0-comment/Consent-ex-AdvanceDirectives-BloodTransfusion.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/us/PCC/mAPS/1.0.0-comment/Consent-ex-AdvanceDirectives-BloodTransfusion.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/us/PCC/mAPS/1.0.0-comment/Consent-ex-AdvanceDirectives-BloodTransfusion.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/us/PCC/mAPS/1.0.0-comment/Consent-ex-AdvanceDirectives-BloodTransfusion.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/us/PCC/mAPS/1.0.0-comment/Consent-ex-AdvanceDirectives-BloodTransfusion.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/us/PCC/mAPS/1.0.0-comment/Consent-ex-AdvanceDirectives-BloodTransfusion.html');
else 
  Redirect('https://profiles.ihe.net/us/PCC/mAPS/1.0.0-comment/Consent-ex-AdvanceDirectives-BloodTransfusion.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
