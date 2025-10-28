module Stratosphere.KinesisFirehose.DeliveryStream.RetryOptionsProperty (
        RetryOptionsProperty(..), mkRetryOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RetryOptionsProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-retryoptions.html>
    RetryOptionsProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-retryoptions.html#cfn-kinesisfirehose-deliverystream-retryoptions-durationinseconds>
                          durationInSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRetryOptionsProperty :: RetryOptionsProperty
mkRetryOptionsProperty
  = RetryOptionsProperty {durationInSeconds = Prelude.Nothing}
instance ToResourceProperties RetryOptionsProperty where
  toResourceProperties RetryOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.RetryOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DurationInSeconds" Prelude.<$> durationInSeconds])}
instance JSON.ToJSON RetryOptionsProperty where
  toJSON RetryOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DurationInSeconds" Prelude.<$> durationInSeconds]))
instance Property "DurationInSeconds" RetryOptionsProperty where
  type PropertyType "DurationInSeconds" RetryOptionsProperty = Value Prelude.Integer
  set newValue RetryOptionsProperty {}
    = RetryOptionsProperty
        {durationInSeconds = Prelude.pure newValue, ..}