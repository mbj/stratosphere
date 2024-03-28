module Stratosphere.KinesisFirehose.DeliveryStream.SnowflakeRetryOptionsProperty (
        SnowflakeRetryOptionsProperty(..), mkSnowflakeRetryOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SnowflakeRetryOptionsProperty
  = SnowflakeRetryOptionsProperty {durationInSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSnowflakeRetryOptionsProperty :: SnowflakeRetryOptionsProperty
mkSnowflakeRetryOptionsProperty
  = SnowflakeRetryOptionsProperty
      {durationInSeconds = Prelude.Nothing}
instance ToResourceProperties SnowflakeRetryOptionsProperty where
  toResourceProperties SnowflakeRetryOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.SnowflakeRetryOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DurationInSeconds" Prelude.<$> durationInSeconds])}
instance JSON.ToJSON SnowflakeRetryOptionsProperty where
  toJSON SnowflakeRetryOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DurationInSeconds" Prelude.<$> durationInSeconds]))
instance Property "DurationInSeconds" SnowflakeRetryOptionsProperty where
  type PropertyType "DurationInSeconds" SnowflakeRetryOptionsProperty = Value Prelude.Integer
  set newValue SnowflakeRetryOptionsProperty {}
    = SnowflakeRetryOptionsProperty
        {durationInSeconds = Prelude.pure newValue, ..}