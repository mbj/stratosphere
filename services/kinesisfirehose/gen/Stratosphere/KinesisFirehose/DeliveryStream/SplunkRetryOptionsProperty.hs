module Stratosphere.KinesisFirehose.DeliveryStream.SplunkRetryOptionsProperty (
        SplunkRetryOptionsProperty(..), mkSplunkRetryOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SplunkRetryOptionsProperty
  = SplunkRetryOptionsProperty {durationInSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
mkSplunkRetryOptionsProperty :: SplunkRetryOptionsProperty
mkSplunkRetryOptionsProperty
  = SplunkRetryOptionsProperty {durationInSeconds = Prelude.Nothing}
instance ToResourceProperties SplunkRetryOptionsProperty where
  toResourceProperties SplunkRetryOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.SplunkRetryOptions",
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
  set newValue SplunkRetryOptionsProperty {}
    = SplunkRetryOptionsProperty
        {durationInSeconds = Prelude.pure newValue, ..}