module Stratosphere.KafkaConnect.Connector.KafkaClusterClientAuthenticationProperty (
        KafkaClusterClientAuthenticationProperty(..),
        mkKafkaClusterClientAuthenticationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KafkaClusterClientAuthenticationProperty
  = KafkaClusterClientAuthenticationProperty {authenticationType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKafkaClusterClientAuthenticationProperty ::
  Value Prelude.Text -> KafkaClusterClientAuthenticationProperty
mkKafkaClusterClientAuthenticationProperty authenticationType
  = KafkaClusterClientAuthenticationProperty
      {authenticationType = authenticationType}
instance ToResourceProperties KafkaClusterClientAuthenticationProperty where
  toResourceProperties KafkaClusterClientAuthenticationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KafkaConnect::Connector.KafkaClusterClientAuthentication",
         supportsTags = Prelude.False,
         properties = ["AuthenticationType" JSON..= authenticationType]}
instance JSON.ToJSON KafkaClusterClientAuthenticationProperty where
  toJSON KafkaClusterClientAuthenticationProperty {..}
    = JSON.object ["AuthenticationType" JSON..= authenticationType]
instance Property "AuthenticationType" KafkaClusterClientAuthenticationProperty where
  type PropertyType "AuthenticationType" KafkaClusterClientAuthenticationProperty = Value Prelude.Text
  set newValue KafkaClusterClientAuthenticationProperty {}
    = KafkaClusterClientAuthenticationProperty
        {authenticationType = newValue, ..}