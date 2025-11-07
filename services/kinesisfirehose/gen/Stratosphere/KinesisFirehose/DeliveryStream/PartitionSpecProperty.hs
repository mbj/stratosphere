module Stratosphere.KinesisFirehose.DeliveryStream.PartitionSpecProperty (
        module Exports, PartitionSpecProperty(..), mkPartitionSpecProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.PartitionFieldProperty as Exports
import Stratosphere.ResourceProperties
data PartitionSpecProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-partitionspec.html>
    PartitionSpecProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-partitionspec.html#cfn-kinesisfirehose-deliverystream-partitionspec-identity>
                           identity :: (Prelude.Maybe [PartitionFieldProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPartitionSpecProperty :: PartitionSpecProperty
mkPartitionSpecProperty
  = PartitionSpecProperty
      {haddock_workaround_ = (), identity = Prelude.Nothing}
instance ToResourceProperties PartitionSpecProperty where
  toResourceProperties PartitionSpecProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.PartitionSpec",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Identity" Prelude.<$> identity])}
instance JSON.ToJSON PartitionSpecProperty where
  toJSON PartitionSpecProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Identity" Prelude.<$> identity]))
instance Property "Identity" PartitionSpecProperty where
  type PropertyType "Identity" PartitionSpecProperty = [PartitionFieldProperty]
  set newValue PartitionSpecProperty {..}
    = PartitionSpecProperty {identity = Prelude.pure newValue, ..}