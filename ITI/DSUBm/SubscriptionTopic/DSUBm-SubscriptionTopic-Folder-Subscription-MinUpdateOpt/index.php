<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/DSUBm/1.0.0/SubscriptionTopic-DSUBm-SubscriptionTopic-Folder-Subscription-MinUpdateOpt.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/ITI/DSUBm/1.0.0/SubscriptionTopic-DSUBm-SubscriptionTopic-Folder-Subscription-MinUpdateOpt.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/ITI/DSUBm/1.0.0/SubscriptionTopic-DSUBm-SubscriptionTopic-Folder-Subscription-MinUpdateOpt.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/DSUBm/1.0.0/SubscriptionTopic-DSUBm-SubscriptionTopic-Folder-Subscription-MinUpdateOpt.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/ITI/DSUBm/1.0.0/SubscriptionTopic-DSUBm-SubscriptionTopic-Folder-Subscription-MinUpdateOpt.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/ITI/DSUBm/1.0.0/SubscriptionTopic-DSUBm-SubscriptionTopic-Folder-Subscription-MinUpdateOpt.html');
else 
  Redirect('https://profiles.ihe.net/ITI/DSUBm/1.0.0/SubscriptionTopic-DSUBm-SubscriptionTopic-Folder-Subscription-MinUpdateOpt.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
