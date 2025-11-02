module Stratosphere.ElastiCache.ReplicationGroup.KinesisFirehoseDestinationDetailsProperty (
        KinesisFirehoseDestinationDetailsProperty(..),
        mkKinesisFirehoseDestinationDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KinesisFirehoseDestinationDetailsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-replicationgroup-kinesisfirehosedestinationdetails.html>
    KinesisFirehoseDestinationDetailsProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-replicationgroup-kinesisfirehosedestinationdetails.html#cfn-elasticache-replicationgroup-kinesisfirehosedestinationdetails-deliverystream>
                                               deliveryStream :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKinesisFirehoseDestinationDetailsProperty ::
  Value Prelude.Text -> KinesisFirehoseDestinationDetailsProperty
mkKinesisFirehoseDestinationDetailsProperty deliveryStream
  = KinesisFirehoseDestinationDetailsProperty
      {haddock_workaround_ = (), deliveryStream = deliveryStream}
instance ToResourceProperties KinesisFirehoseDestinationDetailsProperty where
  toResourceProperties KinesisFirehoseDestinationDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElastiCache::ReplicationGroup.KinesisFirehoseDestinationDetails",
         supportsTags = Prelude.False,
         properties = ["DeliveryStream" JSON..= deliveryStream]}
instance JSON.ToJSON KinesisFirehoseDestinationDetailsProperty where
  toJSON KinesisFirehoseDestinationDetailsProperty {..}
    = JSON.object ["DeliveryStream" JSON..= deliveryStream]
instance Property "DeliveryStream" KinesisFirehoseDestinationDetailsProperty where
  type PropertyType "DeliveryStream" KinesisFirehoseDestinationDetailsProperty = Value Prelude.Text
  set newValue KinesisFirehoseDestinationDetailsProperty {..}
    = KinesisFirehoseDestinationDetailsProperty
        {deliveryStream = newValue, ..}