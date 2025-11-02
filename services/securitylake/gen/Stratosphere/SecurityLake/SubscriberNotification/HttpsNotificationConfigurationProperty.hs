module Stratosphere.SecurityLake.SubscriberNotification.HttpsNotificationConfigurationProperty (
        HttpsNotificationConfigurationProperty(..),
        mkHttpsNotificationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HttpsNotificationConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securitylake-subscribernotification-httpsnotificationconfiguration.html>
    HttpsNotificationConfigurationProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securitylake-subscribernotification-httpsnotificationconfiguration.html#cfn-securitylake-subscribernotification-httpsnotificationconfiguration-authorizationapikeyname>
                                            authorizationApiKeyName :: (Prelude.Maybe (Value Prelude.Text)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securitylake-subscribernotification-httpsnotificationconfiguration.html#cfn-securitylake-subscribernotification-httpsnotificationconfiguration-authorizationapikeyvalue>
                                            authorizationApiKeyValue :: (Prelude.Maybe (Value Prelude.Text)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securitylake-subscribernotification-httpsnotificationconfiguration.html#cfn-securitylake-subscribernotification-httpsnotificationconfiguration-endpoint>
                                            endpoint :: (Value Prelude.Text),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securitylake-subscribernotification-httpsnotificationconfiguration.html#cfn-securitylake-subscribernotification-httpsnotificationconfiguration-httpmethod>
                                            httpMethod :: (Prelude.Maybe (Value Prelude.Text)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securitylake-subscribernotification-httpsnotificationconfiguration.html#cfn-securitylake-subscribernotification-httpsnotificationconfiguration-targetrolearn>
                                            targetRoleArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHttpsNotificationConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> HttpsNotificationConfigurationProperty
mkHttpsNotificationConfigurationProperty endpoint targetRoleArn
  = HttpsNotificationConfigurationProperty
      {haddock_workaround_ = (), endpoint = endpoint,
       targetRoleArn = targetRoleArn,
       authorizationApiKeyName = Prelude.Nothing,
       authorizationApiKeyValue = Prelude.Nothing,
       httpMethod = Prelude.Nothing}
instance ToResourceProperties HttpsNotificationConfigurationProperty where
  toResourceProperties HttpsNotificationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecurityLake::SubscriberNotification.HttpsNotificationConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Endpoint" JSON..= endpoint,
                            "TargetRoleArn" JSON..= targetRoleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "AuthorizationApiKeyName"
                                 Prelude.<$> authorizationApiKeyName,
                               (JSON..=) "AuthorizationApiKeyValue"
                                 Prelude.<$> authorizationApiKeyValue,
                               (JSON..=) "HttpMethod" Prelude.<$> httpMethod]))}
instance JSON.ToJSON HttpsNotificationConfigurationProperty where
  toJSON HttpsNotificationConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Endpoint" JSON..= endpoint,
               "TargetRoleArn" JSON..= targetRoleArn]
              (Prelude.catMaybes
                 [(JSON..=) "AuthorizationApiKeyName"
                    Prelude.<$> authorizationApiKeyName,
                  (JSON..=) "AuthorizationApiKeyValue"
                    Prelude.<$> authorizationApiKeyValue,
                  (JSON..=) "HttpMethod" Prelude.<$> httpMethod])))
instance Property "AuthorizationApiKeyName" HttpsNotificationConfigurationProperty where
  type PropertyType "AuthorizationApiKeyName" HttpsNotificationConfigurationProperty = Value Prelude.Text
  set newValue HttpsNotificationConfigurationProperty {..}
    = HttpsNotificationConfigurationProperty
        {authorizationApiKeyName = Prelude.pure newValue, ..}
instance Property "AuthorizationApiKeyValue" HttpsNotificationConfigurationProperty where
  type PropertyType "AuthorizationApiKeyValue" HttpsNotificationConfigurationProperty = Value Prelude.Text
  set newValue HttpsNotificationConfigurationProperty {..}
    = HttpsNotificationConfigurationProperty
        {authorizationApiKeyValue = Prelude.pure newValue, ..}
instance Property "Endpoint" HttpsNotificationConfigurationProperty where
  type PropertyType "Endpoint" HttpsNotificationConfigurationProperty = Value Prelude.Text
  set newValue HttpsNotificationConfigurationProperty {..}
    = HttpsNotificationConfigurationProperty {endpoint = newValue, ..}
instance Property "HttpMethod" HttpsNotificationConfigurationProperty where
  type PropertyType "HttpMethod" HttpsNotificationConfigurationProperty = Value Prelude.Text
  set newValue HttpsNotificationConfigurationProperty {..}
    = HttpsNotificationConfigurationProperty
        {httpMethod = Prelude.pure newValue, ..}
instance Property "TargetRoleArn" HttpsNotificationConfigurationProperty where
  type PropertyType "TargetRoleArn" HttpsNotificationConfigurationProperty = Value Prelude.Text
  set newValue HttpsNotificationConfigurationProperty {..}
    = HttpsNotificationConfigurationProperty
        {targetRoleArn = newValue, ..}