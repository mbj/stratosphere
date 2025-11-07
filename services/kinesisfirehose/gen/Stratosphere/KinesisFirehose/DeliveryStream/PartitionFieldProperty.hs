module Stratosphere.KinesisFirehose.DeliveryStream.PartitionFieldProperty (
        PartitionFieldProperty(..), mkPartitionFieldProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PartitionFieldProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-partitionfield.html>
    PartitionFieldProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-partitionfield.html#cfn-kinesisfirehose-deliverystream-partitionfield-sourcename>
                            sourceName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPartitionFieldProperty ::
  Value Prelude.Text -> PartitionFieldProperty
mkPartitionFieldProperty sourceName
  = PartitionFieldProperty
      {haddock_workaround_ = (), sourceName = sourceName}
instance ToResourceProperties PartitionFieldProperty where
  toResourceProperties PartitionFieldProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.PartitionField",
         supportsTags = Prelude.False,
         properties = ["SourceName" JSON..= sourceName]}
instance JSON.ToJSON PartitionFieldProperty where
  toJSON PartitionFieldProperty {..}
    = JSON.object ["SourceName" JSON..= sourceName]
instance Property "SourceName" PartitionFieldProperty where
  type PropertyType "SourceName" PartitionFieldProperty = Value Prelude.Text
  set newValue PartitionFieldProperty {..}
    = PartitionFieldProperty {sourceName = newValue, ..}