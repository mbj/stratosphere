module Stratosphere.KinesisFirehose.DeliveryStream.SplunkRetryOptionsProperty (
        SplunkRetryOptionsProperty(..), mkSplunkRetryOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SplunkRetryOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-splunkretryoptions.html>
    SplunkRetryOptionsProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-splunkretryoptions.html#cfn-kinesisfirehose-deliverystream-splunkretryoptions-durationinseconds>
                                durationInSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSplunkRetryOptionsProperty :: SplunkRetryOptionsProperty
mkSplunkRetryOptionsProperty
  = SplunkRetryOptionsProperty
      {haddock_workaround_ = (), durationInSeconds = Prelude.Nothing}
instance ToResourceProperties SplunkRetryOptionsProperty where
  toResourceProperties SplunkRetryOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.SplunkRetryOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DurationInSeconds" Prelude.<$> durationInSeconds])}
instance JSON.ToJSON SplunkRetryOptionsProperty where
  toJSON SplunkRetryOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DurationInSeconds" Prelude.<$> durationInSeconds]))
instance Property "DurationInSeconds" SplunkRetryOptionsProperty where
  type PropertyType "DurationInSeconds" SplunkRetryOptionsProperty = Value Prelude.Integer
  set newValue SplunkRetryOptionsProperty {..}
    = SplunkRetryOptionsProperty
        {durationInSeconds = Prelude.pure newValue, ..}