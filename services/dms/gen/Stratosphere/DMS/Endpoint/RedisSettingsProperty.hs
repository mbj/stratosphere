module Stratosphere.DMS.Endpoint.RedisSettingsProperty (
        RedisSettingsProperty(..), mkRedisSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RedisSettingsProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-redissettings.html>
    RedisSettingsProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-redissettings.html#cfn-dms-endpoint-redissettings-authpassword>
                           authPassword :: (Prelude.Maybe (Value Prelude.Text)),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-redissettings.html#cfn-dms-endpoint-redissettings-authtype>
                           authType :: (Prelude.Maybe (Value Prelude.Text)),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-redissettings.html#cfn-dms-endpoint-redissettings-authusername>
                           authUserName :: (Prelude.Maybe (Value Prelude.Text)),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-redissettings.html#cfn-dms-endpoint-redissettings-port>
                           port :: (Prelude.Maybe (Value Prelude.Double)),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-redissettings.html#cfn-dms-endpoint-redissettings-servername>
                           serverName :: (Prelude.Maybe (Value Prelude.Text)),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-redissettings.html#cfn-dms-endpoint-redissettings-sslcacertificatearn>
                           sslCaCertificateArn :: (Prelude.Maybe (Value Prelude.Text)),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-redissettings.html#cfn-dms-endpoint-redissettings-sslsecurityprotocol>
                           sslSecurityProtocol :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRedisSettingsProperty :: RedisSettingsProperty
mkRedisSettingsProperty
  = RedisSettingsProperty
      {authPassword = Prelude.Nothing, authType = Prelude.Nothing,
       authUserName = Prelude.Nothing, port = Prelude.Nothing,
       serverName = Prelude.Nothing,
       sslCaCertificateArn = Prelude.Nothing,
       sslSecurityProtocol = Prelude.Nothing}
instance ToResourceProperties RedisSettingsProperty where
  toResourceProperties RedisSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DMS::Endpoint.RedisSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AuthPassword" Prelude.<$> authPassword,
                            (JSON..=) "AuthType" Prelude.<$> authType,
                            (JSON..=) "AuthUserName" Prelude.<$> authUserName,
                            (JSON..=) "Port" Prelude.<$> port,
                            (JSON..=) "ServerName" Prelude.<$> serverName,
                            (JSON..=) "SslCaCertificateArn" Prelude.<$> sslCaCertificateArn,
                            (JSON..=) "SslSecurityProtocol" Prelude.<$> sslSecurityProtocol])}
instance JSON.ToJSON RedisSettingsProperty where
  toJSON RedisSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AuthPassword" Prelude.<$> authPassword,
               (JSON..=) "AuthType" Prelude.<$> authType,
               (JSON..=) "AuthUserName" Prelude.<$> authUserName,
               (JSON..=) "Port" Prelude.<$> port,
               (JSON..=) "ServerName" Prelude.<$> serverName,
               (JSON..=) "SslCaCertificateArn" Prelude.<$> sslCaCertificateArn,
               (JSON..=) "SslSecurityProtocol" Prelude.<$> sslSecurityProtocol]))
instance Property "AuthPassword" RedisSettingsProperty where
  type PropertyType "AuthPassword" RedisSettingsProperty = Value Prelude.Text
  set newValue RedisSettingsProperty {..}
    = RedisSettingsProperty {authPassword = Prelude.pure newValue, ..}
instance Property "AuthType" RedisSettingsProperty where
  type PropertyType "AuthType" RedisSettingsProperty = Value Prelude.Text
  set newValue RedisSettingsProperty {..}
    = RedisSettingsProperty {authType = Prelude.pure newValue, ..}
instance Property "AuthUserName" RedisSettingsProperty where
  type PropertyType "AuthUserName" RedisSettingsProperty = Value Prelude.Text
  set newValue RedisSettingsProperty {..}
    = RedisSettingsProperty {authUserName = Prelude.pure newValue, ..}
instance Property "Port" RedisSettingsProperty where
  type PropertyType "Port" RedisSettingsProperty = Value Prelude.Double
  set newValue RedisSettingsProperty {..}
    = RedisSettingsProperty {port = Prelude.pure newValue, ..}
instance Property "ServerName" RedisSettingsProperty where
  type PropertyType "ServerName" RedisSettingsProperty = Value Prelude.Text
  set newValue RedisSettingsProperty {..}
    = RedisSettingsProperty {serverName = Prelude.pure newValue, ..}
instance Property "SslCaCertificateArn" RedisSettingsProperty where
  type PropertyType "SslCaCertificateArn" RedisSettingsProperty = Value Prelude.Text
  set newValue RedisSettingsProperty {..}
    = RedisSettingsProperty
        {sslCaCertificateArn = Prelude.pure newValue, ..}
instance Property "SslSecurityProtocol" RedisSettingsProperty where
  type PropertyType "SslSecurityProtocol" RedisSettingsProperty = Value Prelude.Text
  set newValue RedisSettingsProperty {..}
    = RedisSettingsProperty
        {sslSecurityProtocol = Prelude.pure newValue, ..}