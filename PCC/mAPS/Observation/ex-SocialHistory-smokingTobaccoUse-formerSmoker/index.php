<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/PCC/mAPS/1.0.0-comment/Observation-ex-SocialHistory-smokingTobaccoUse-formerSmoker.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/PCC/mAPS/1.0.0-comment/Observation-ex-SocialHistory-smokingTobaccoUse-formerSmoker.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/PCC/mAPS/1.0.0-comment/Observation-ex-SocialHistory-smokingTobaccoUse-formerSmoker.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/PCC/mAPS/1.0.0-comment/Observation-ex-SocialHistory-smokingTobaccoUse-formerSmoker.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/PCC/mAPS/1.0.0-comment/Observation-ex-SocialHistory-smokingTobaccoUse-formerSmoker.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/PCC/mAPS/1.0.0-comment/Observation-ex-SocialHistory-smokingTobaccoUse-formerSmoker.html');
else 
  Redirect('https://profiles.ihe.net/PCC/mAPS/1.0.0-comment/Observation-ex-SocialHistory-smokingTobaccoUse-formerSmoker.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
