module Stratosphere.KinesisFirehose.DeliveryStream.BufferingHintsProperty (
        BufferingHintsProperty(..), mkBufferingHintsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BufferingHintsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-bufferinghints.html>
    BufferingHintsProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-bufferinghints.html#cfn-kinesisfirehose-deliverystream-bufferinghints-intervalinseconds>
                            intervalInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-bufferinghints.html#cfn-kinesisfirehose-deliverystream-bufferinghints-sizeinmbs>
                            sizeInMBs :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBufferingHintsProperty :: BufferingHintsProperty
mkBufferingHintsProperty
  = BufferingHintsProperty
      {haddock_workaround_ = (), intervalInSeconds = Prelude.Nothing,
       sizeInMBs = Prelude.Nothing}
instance ToResourceProperties BufferingHintsProperty where
  toResourceProperties BufferingHintsProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.BufferingHints",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IntervalInSeconds" Prelude.<$> intervalInSeconds,
                            (JSON..=) "SizeInMBs" Prelude.<$> sizeInMBs])}
instance JSON.ToJSON BufferingHintsProperty where
  toJSON BufferingHintsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IntervalInSeconds" Prelude.<$> intervalInSeconds,
               (JSON..=) "SizeInMBs" Prelude.<$> sizeInMBs]))
instance Property "IntervalInSeconds" BufferingHintsProperty where
  type PropertyType "IntervalInSeconds" BufferingHintsProperty = Value Prelude.Integer
  set newValue BufferingHintsProperty {..}
    = BufferingHintsProperty
        {intervalInSeconds = Prelude.pure newValue, ..}
instance Property "SizeInMBs" BufferingHintsProperty where
  type PropertyType "SizeInMBs" BufferingHintsProperty = Value Prelude.Integer
  set newValue BufferingHintsProperty {..}
    = BufferingHintsProperty {sizeInMBs = Prelude.pure newValue, ..}