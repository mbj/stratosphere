module Stratosphere.KafkaConnect.Connector.KafkaClusterEncryptionInTransitProperty (
        KafkaClusterEncryptionInTransitProperty(..),
        mkKafkaClusterEncryptionInTransitProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KafkaClusterEncryptionInTransitProperty
  = KafkaClusterEncryptionInTransitProperty {encryptionType :: (Value Prelude.Text)}
mkKafkaClusterEncryptionInTransitProperty ::
  Value Prelude.Text -> KafkaClusterEncryptionInTransitProperty
mkKafkaClusterEncryptionInTransitProperty encryptionType
  = KafkaClusterEncryptionInTransitProperty
      {encryptionType = encryptionType}
instance ToResourceProperties KafkaClusterEncryptionInTransitProperty where
  toResourceProperties KafkaClusterEncryptionInTransitProperty {..}
    = ResourceProperties
        {awsType = "AWS::KafkaConnect::Connector.KafkaClusterEncryptionInTransit",
         supportsTags = Prelude.False,
         properties = ["EncryptionType" JSON..= encryptionType]}
instance JSON.ToJSON KafkaClusterEncryptionInTransitProperty where
  toJSON KafkaClusterEncryptionInTransitProperty {..}
    = JSON.object ["EncryptionType" JSON..= encryptionType]
instance Property "EncryptionType" KafkaClusterEncryptionInTransitProperty where
  type PropertyType "EncryptionType" KafkaClusterEncryptionInTransitProperty = Value Prelude.Text
  set newValue KafkaClusterEncryptionInTransitProperty {}
    = KafkaClusterEncryptionInTransitProperty
        {encryptionType = newValue, ..}