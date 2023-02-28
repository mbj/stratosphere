module Stratosphere.Pipes.Pipe.MQBrokerAccessCredentialsProperty (
        MQBrokerAccessCredentialsProperty(..),
        mkMQBrokerAccessCredentialsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MQBrokerAccessCredentialsProperty
  = MQBrokerAccessCredentialsProperty {basicAuth :: (Value Prelude.Text)}
mkMQBrokerAccessCredentialsProperty ::
  Value Prelude.Text -> MQBrokerAccessCredentialsProperty
mkMQBrokerAccessCredentialsProperty basicAuth
  = MQBrokerAccessCredentialsProperty {basicAuth = basicAuth}
instance ToResourceProperties MQBrokerAccessCredentialsProperty where
  toResourceProperties MQBrokerAccessCredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.MQBrokerAccessCredentials",
         supportsTags = Prelude.False,
         properties = ["BasicAuth" JSON..= basicAuth]}
instance JSON.ToJSON MQBrokerAccessCredentialsProperty where
  toJSON MQBrokerAccessCredentialsProperty {..}
    = JSON.object ["BasicAuth" JSON..= basicAuth]
instance Property "BasicAuth" MQBrokerAccessCredentialsProperty where
  type PropertyType "BasicAuth" MQBrokerAccessCredentialsProperty = Value Prelude.Text
  set newValue MQBrokerAccessCredentialsProperty {}
    = MQBrokerAccessCredentialsProperty {basicAuth = newValue, ..}