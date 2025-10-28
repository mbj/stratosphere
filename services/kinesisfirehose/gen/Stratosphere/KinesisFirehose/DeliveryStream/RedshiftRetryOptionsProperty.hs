module Stratosphere.KinesisFirehose.DeliveryStream.RedshiftRetryOptionsProperty (
        RedshiftRetryOptionsProperty(..), mkRedshiftRetryOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RedshiftRetryOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-redshiftretryoptions.html>
    RedshiftRetryOptionsProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-redshiftretryoptions.html#cfn-kinesisfirehose-deliverystream-redshiftretryoptions-durationinseconds>
                                  durationInSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRedshiftRetryOptionsProperty :: RedshiftRetryOptionsProperty
mkRedshiftRetryOptionsProperty
  = RedshiftRetryOptionsProperty
      {haddock_workaround_ = (), durationInSeconds = Prelude.Nothing}
instance ToResourceProperties RedshiftRetryOptionsProperty where
  toResourceProperties RedshiftRetryOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.RedshiftRetryOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DurationInSeconds" Prelude.<$> durationInSeconds])}
instance JSON.ToJSON RedshiftRetryOptionsProperty where
  toJSON RedshiftRetryOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DurationInSeconds" Prelude.<$> durationInSeconds]))
instance Property "DurationInSeconds" RedshiftRetryOptionsProperty where
  type PropertyType "DurationInSeconds" RedshiftRetryOptionsProperty = Value Prelude.Integer
  set newValue RedshiftRetryOptionsProperty {..}
    = RedshiftRetryOptionsProperty
        {durationInSeconds = Prelude.pure newValue, ..}