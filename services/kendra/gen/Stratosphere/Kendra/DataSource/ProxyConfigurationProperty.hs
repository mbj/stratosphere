module Stratosphere.Kendra.DataSource.ProxyConfigurationProperty (
        ProxyConfigurationProperty(..), mkProxyConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProxyConfigurationProperty
  = ProxyConfigurationProperty {credentials :: (Prelude.Maybe (Value Prelude.Text)),
                                host :: (Value Prelude.Text),
                                port :: (Value Prelude.Integer)}
mkProxyConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Integer -> ProxyConfigurationProperty
mkProxyConfigurationProperty host port
  = ProxyConfigurationProperty
      {host = host, port = port, credentials = Prelude.Nothing}
instance ToResourceProperties ProxyConfigurationProperty where
  toResourceProperties ProxyConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.ProxyConfiguration",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Host" JSON..= host, "Port" JSON..= port]
                           (Prelude.catMaybes
                              [(JSON..=) "Credentials" Prelude.<$> credentials]))}
instance JSON.ToJSON ProxyConfigurationProperty where
  toJSON ProxyConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Host" JSON..= host, "Port" JSON..= port]
              (Prelude.catMaybes
                 [(JSON..=) "Credentials" Prelude.<$> credentials])))
instance Property "Credentials" ProxyConfigurationProperty where
  type PropertyType "Credentials" ProxyConfigurationProperty = Value Prelude.Text
  set newValue ProxyConfigurationProperty {..}
    = ProxyConfigurationProperty
        {credentials = Prelude.pure newValue, ..}
instance Property "Host" ProxyConfigurationProperty where
  type PropertyType "Host" ProxyConfigurationProperty = Value Prelude.Text
  set newValue ProxyConfigurationProperty {..}
    = ProxyConfigurationProperty {host = newValue, ..}
instance Property "Port" ProxyConfigurationProperty where
  type PropertyType "Port" ProxyConfigurationProperty = Value Prelude.Integer
  set newValue ProxyConfigurationProperty {..}
    = ProxyConfigurationProperty {port = newValue, ..}