module Stratosphere.EC2.VerifiedAccessInstance.KinesisDataFirehoseProperty (
        KinesisDataFirehoseProperty(..), mkKinesisDataFirehoseProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KinesisDataFirehoseProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccessinstance-kinesisdatafirehose.html>
    KinesisDataFirehoseProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccessinstance-kinesisdatafirehose.html#cfn-ec2-verifiedaccessinstance-kinesisdatafirehose-deliverystream>
                                 deliveryStream :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccessinstance-kinesisdatafirehose.html#cfn-ec2-verifiedaccessinstance-kinesisdatafirehose-enabled>
                                 enabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKinesisDataFirehoseProperty :: KinesisDataFirehoseProperty
mkKinesisDataFirehoseProperty
  = KinesisDataFirehoseProperty
      {haddock_workaround_ = (), deliveryStream = Prelude.Nothing,
       enabled = Prelude.Nothing}
instance ToResourceProperties KinesisDataFirehoseProperty where
  toResourceProperties KinesisDataFirehoseProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VerifiedAccessInstance.KinesisDataFirehose",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DeliveryStream" Prelude.<$> deliveryStream,
                            (JSON..=) "Enabled" Prelude.<$> enabled])}
instance JSON.ToJSON KinesisDataFirehoseProperty where
  toJSON KinesisDataFirehoseProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DeliveryStream" Prelude.<$> deliveryStream,
               (JSON..=) "Enabled" Prelude.<$> enabled]))
instance Property "DeliveryStream" KinesisDataFirehoseProperty where
  type PropertyType "DeliveryStream" KinesisDataFirehoseProperty = Value Prelude.Text
  set newValue KinesisDataFirehoseProperty {..}
    = KinesisDataFirehoseProperty
        {deliveryStream = Prelude.pure newValue, ..}
instance Property "Enabled" KinesisDataFirehoseProperty where
  type PropertyType "Enabled" KinesisDataFirehoseProperty = Value Prelude.Bool
  set newValue KinesisDataFirehoseProperty {..}
    = KinesisDataFirehoseProperty {enabled = Prelude.pure newValue, ..}