clear
echo Create a Verification Request via Call
echo
echo Request
echo curl "https://verify.twilio.com/v2/Services/\$VERIFY_SID/Verifications" -X POST
echo -d "To=\$USER_PHONE" 
echo -d "Channel=\$CHANNEL_CALL" 
echo -d "Locale=\$LOCALE"
echo -u "\$ACCOUNT_SID:\$AUTH_TOKEN"
echo
echo
echo
echo Response
curl "https://verify.twilio.com/v2/Services/$VERIFY_SID/Verifications" -s -X POST \
--data-urlencode "To=$USER_PHONE" \
--data-urlencode "Channel=$CHANNEL_CALL" \
--data-urlencode "Locale=$LOCALE" \
-u "$ACCOUNT_SID:$AUTH_TOKEN" 
echo
