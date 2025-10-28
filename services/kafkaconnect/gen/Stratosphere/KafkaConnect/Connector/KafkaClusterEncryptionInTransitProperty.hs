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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-connector-kafkaclusterencryptionintransit.html>
    KafkaClusterEncryptionInTransitProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-connector-kafkaclusterencryptionintransit.html#cfn-kafkaconnect-connector-kafkaclusterencryptionintransit-encryptiontype>
                                             encryptionType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKafkaClusterEncryptionInTransitProperty ::
  Value Prelude.Text -> KafkaClusterEncryptionInTransitProperty
mkKafkaClusterEncryptionInTransitProperty encryptionType
  = KafkaClusterEncryptionInTransitProperty
      {haddock_workaround_ = (), encryptionType = encryptionType}
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
  set newValue KafkaClusterEncryptionInTransitProperty {..}
    = KafkaClusterEncryptionInTransitProperty
        {encryptionType = newValue, ..}