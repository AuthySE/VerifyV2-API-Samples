clear
echo Creating a Verification Service
echo 
echo Request
echo curl -X POST "https://verify.twilio.com/v2/Services" 
echo -d "FriendlyName: Demo - My Verify Service"
echo -u "\$ACCOUNT_SID:\$AUTHT_TOKEN"
echo 
echo
echo Response
curl -X POST "https://verify.twilio.com/v2/Services" \
-u "$ACCOUNT_SID:$AUTHT_TOKEN" \
-d "FriendlyName=Demo - My Verify Service" | jq	
echo