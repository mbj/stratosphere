module Stratosphere.KinesisFirehose.DeliveryStream.SnowflakeRetryOptionsProperty (
        SnowflakeRetryOptionsProperty(..), mkSnowflakeRetryOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SnowflakeRetryOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-snowflakeretryoptions.html>
    SnowflakeRetryOptionsProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-snowflakeretryoptions.html#cfn-kinesisfirehose-deliverystream-snowflakeretryoptions-durationinseconds>
                                   durationInSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSnowflakeRetryOptionsProperty :: SnowflakeRetryOptionsProperty
mkSnowflakeRetryOptionsProperty
  = SnowflakeRetryOptionsProperty
      {haddock_workaround_ = (), durationInSeconds = Prelude.Nothing}
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
  set newValue SnowflakeRetryOptionsProperty {..}
    = SnowflakeRetryOptionsProperty
        {durationInSeconds = Prelude.pure newValue, ..}