module Stratosphere.DMS.Endpoint.RedisSettingsProperty (
        RedisSettingsProperty(..), mkRedisSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RedisSettingsProperty
  = RedisSettingsProperty {authPassword :: (Prelude.Maybe (Value Prelude.Text)),
                           authType :: (Prelude.Maybe (Value Prelude.Text)),
                           authUserName :: (Prelude.Maybe (Value Prelude.Text)),
                           port :: (Prelude.Maybe (Value Prelude.Double)),
                           serverName :: (Prelude.Maybe (Value Prelude.Text)),
                           sslCaCertificateArn :: (Prelude.Maybe (Value Prelude.Text)),
                           sslSecurityProtocol :: (Prelude.Maybe (Value Prelude.Text))}
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