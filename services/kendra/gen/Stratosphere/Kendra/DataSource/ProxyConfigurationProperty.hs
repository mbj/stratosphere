module Stratosphere.Kendra.DataSource.ProxyConfigurationProperty (
        ProxyConfigurationProperty(..), mkProxyConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProxyConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-proxyconfiguration.html>
    ProxyConfigurationProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-proxyconfiguration.html#cfn-kendra-datasource-proxyconfiguration-credentials>
                                credentials :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-proxyconfiguration.html#cfn-kendra-datasource-proxyconfiguration-host>
                                host :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-proxyconfiguration.html#cfn-kendra-datasource-proxyconfiguration-port>
                                port :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProxyConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Integer -> ProxyConfigurationProperty
mkProxyConfigurationProperty host port
  = ProxyConfigurationProperty
      {haddock_workaround_ = (), host = host, port = port,
       credentials = Prelude.Nothing}
instance ToResourceProperties ProxyConfigurationProperty where
  toResourceProperties ProxyConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.ProxyConfiguration",
         supportsTags = Prelude.False,
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