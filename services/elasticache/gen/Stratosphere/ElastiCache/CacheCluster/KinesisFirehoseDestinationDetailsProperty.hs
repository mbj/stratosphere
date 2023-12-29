module Stratosphere.ElastiCache.CacheCluster.KinesisFirehoseDestinationDetailsProperty (
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
  deriving stock (Prelude.Eq, Prelude.Show)
mkKinesisFirehoseDestinationDetailsProperty ::
  Value Prelude.Text -> KinesisFirehoseDestinationDetailsProperty
mkKinesisFirehoseDestinationDetailsProperty deliveryStream
  = KinesisFirehoseDestinationDetailsProperty
      {deliveryStream = deliveryStream}
instance ToResourceProperties KinesisFirehoseDestinationDetailsProperty where
  toResourceProperties KinesisFirehoseDestinationDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElastiCache::CacheCluster.KinesisFirehoseDestinationDetails",
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