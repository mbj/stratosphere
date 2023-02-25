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
  = KinesisFirehoseDestinationProperty {deliveryStreamARN :: (Value Prelude.Text),
                                        iAMRoleARN :: (Value Prelude.Text)}
mkKinesisFirehoseDestinationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> KinesisFirehoseDestinationProperty
mkKinesisFirehoseDestinationProperty deliveryStreamARN iAMRoleARN
  = KinesisFirehoseDestinationProperty
      {deliveryStreamARN = deliveryStreamARN, iAMRoleARN = iAMRoleARN}
instance ToResourceProperties KinesisFirehoseDestinationProperty where
  toResourceProperties KinesisFirehoseDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::ConfigurationSetEventDestination.KinesisFirehoseDestination",
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