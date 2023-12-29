module Stratosphere.PinpointEmail.ConfigurationSetEventDestination.KinesisFirehoseDestinationProperty (
        KinesisFirehoseDestinationProperty(..),
        mkKinesisFirehoseDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KinesisFirehoseDestinationProperty
  = KinesisFirehoseDestinationProperty {deliveryStreamArn :: (Value Prelude.Text),
                                        iamRoleArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKinesisFirehoseDestinationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> KinesisFirehoseDestinationProperty
mkKinesisFirehoseDestinationProperty deliveryStreamArn iamRoleArn
  = KinesisFirehoseDestinationProperty
      {deliveryStreamArn = deliveryStreamArn, iamRoleArn = iamRoleArn}
instance ToResourceProperties KinesisFirehoseDestinationProperty where
  toResourceProperties KinesisFirehoseDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::PinpointEmail::ConfigurationSetEventDestination.KinesisFirehoseDestination",
         supportsTags = Prelude.False,
         properties = ["DeliveryStreamArn" JSON..= deliveryStreamArn,
                       "IamRoleArn" JSON..= iamRoleArn]}
instance JSON.ToJSON KinesisFirehoseDestinationProperty where
  toJSON KinesisFirehoseDestinationProperty {..}
    = JSON.object
        ["DeliveryStreamArn" JSON..= deliveryStreamArn,
         "IamRoleArn" JSON..= iamRoleArn]
instance Property "DeliveryStreamArn" KinesisFirehoseDestinationProperty where
  type PropertyType "DeliveryStreamArn" KinesisFirehoseDestinationProperty = Value Prelude.Text
  set newValue KinesisFirehoseDestinationProperty {..}
    = KinesisFirehoseDestinationProperty
        {deliveryStreamArn = newValue, ..}
instance Property "IamRoleArn" KinesisFirehoseDestinationProperty where
  type PropertyType "IamRoleArn" KinesisFirehoseDestinationProperty = Value Prelude.Text
  set newValue KinesisFirehoseDestinationProperty {..}
    = KinesisFirehoseDestinationProperty {iamRoleArn = newValue, ..}