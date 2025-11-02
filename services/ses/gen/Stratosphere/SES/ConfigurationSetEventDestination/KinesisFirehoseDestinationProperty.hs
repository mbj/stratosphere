module Stratosphere.SES.ConfigurationSetEventDestination.KinesisFirehoseDestinationProperty (
        KinesisFirehoseDestinationProperty(..),
        mkKinesisFirehoseDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KinesisFirehoseDestinationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-kinesisfirehosedestination.html>
    KinesisFirehoseDestinationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-kinesisfirehosedestination.html#cfn-ses-configurationseteventdestination-kinesisfirehosedestination-deliverystreamarn>
                                        deliveryStreamARN :: (Value Prelude.Text),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-kinesisfirehosedestination.html#cfn-ses-configurationseteventdestination-kinesisfirehosedestination-iamrolearn>
                                        iAMRoleARN :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKinesisFirehoseDestinationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> KinesisFirehoseDestinationProperty
mkKinesisFirehoseDestinationProperty deliveryStreamARN iAMRoleARN
  = KinesisFirehoseDestinationProperty
      {haddock_workaround_ = (), deliveryStreamARN = deliveryStreamARN,
       iAMRoleARN = iAMRoleARN}
instance ToResourceProperties KinesisFirehoseDestinationProperty where
  toResourceProperties KinesisFirehoseDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::ConfigurationSetEventDestination.KinesisFirehoseDestination",
         supportsTags = Prelude.False,
         properties = ["DeliveryStreamARN" JSON..= deliveryStreamARN,
                       "IAMRoleARN" JSON..= iAMRoleARN]}
instance JSON.ToJSON KinesisFirehoseDestinationProperty where
  toJSON KinesisFirehoseDestinationProperty {..}
    = JSON.object
        ["DeliveryStreamARN" JSON..= deliveryStreamARN,
         "IAMRoleARN" JSON..= iAMRoleARN]
instance Property "DeliveryStreamARN" KinesisFirehoseDestinationProperty where
  type PropertyType "DeliveryStreamARN" KinesisFirehoseDestinationProperty = Value Prelude.Text
  set newValue KinesisFirehoseDestinationProperty {..}
    = KinesisFirehoseDestinationProperty
        {deliveryStreamARN = newValue, ..}
instance Property "IAMRoleARN" KinesisFirehoseDestinationProperty where
  type PropertyType "IAMRoleARN" KinesisFirehoseDestinationProperty = Value Prelude.Text
  set newValue KinesisFirehoseDestinationProperty {..}
    = KinesisFirehoseDestinationProperty {iAMRoleARN = newValue, ..}