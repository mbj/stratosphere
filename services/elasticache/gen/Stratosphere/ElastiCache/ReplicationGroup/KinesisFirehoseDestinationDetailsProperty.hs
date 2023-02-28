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
  = KinesisFirehoseDestinationDetailsProperty {deliveryStream :: (Value Prelude.Text)}
mkKinesisFirehoseDestinationDetailsProperty ::
  Value Prelude.Text -> KinesisFirehoseDestinationDetailsProperty
mkKinesisFirehoseDestinationDetailsProperty deliveryStream
  = KinesisFirehoseDestinationDetailsProperty
      {deliveryStream = deliveryStream}
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
  set newValue KinesisFirehoseDestinationDetailsProperty {}
    = KinesisFirehoseDestinationDetailsProperty
        {deliveryStream = newValue, ..}