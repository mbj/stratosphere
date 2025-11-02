module Stratosphere.KinesisFirehose.DeliveryStream.SplunkBufferingHintsProperty (
        SplunkBufferingHintsProperty(..), mkSplunkBufferingHintsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SplunkBufferingHintsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-splunkbufferinghints.html>
    SplunkBufferingHintsProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-splunkbufferinghints.html#cfn-kinesisfirehose-deliverystream-splunkbufferinghints-intervalinseconds>
                                  intervalInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-splunkbufferinghints.html#cfn-kinesisfirehose-deliverystream-splunkbufferinghints-sizeinmbs>
                                  sizeInMBs :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSplunkBufferingHintsProperty :: SplunkBufferingHintsProperty
mkSplunkBufferingHintsProperty
  = SplunkBufferingHintsProperty
      {haddock_workaround_ = (), intervalInSeconds = Prelude.Nothing,
       sizeInMBs = Prelude.Nothing}
instance ToResourceProperties SplunkBufferingHintsProperty where
  toResourceProperties SplunkBufferingHintsProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.SplunkBufferingHints",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IntervalInSeconds" Prelude.<$> intervalInSeconds,
                            (JSON..=) "SizeInMBs" Prelude.<$> sizeInMBs])}
instance JSON.ToJSON SplunkBufferingHintsProperty where
  toJSON SplunkBufferingHintsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IntervalInSeconds" Prelude.<$> intervalInSeconds,
               (JSON..=) "SizeInMBs" Prelude.<$> sizeInMBs]))
instance Property "IntervalInSeconds" SplunkBufferingHintsProperty where
  type PropertyType "IntervalInSeconds" SplunkBufferingHintsProperty = Value Prelude.Integer
  set newValue SplunkBufferingHintsProperty {..}
    = SplunkBufferingHintsProperty
        {intervalInSeconds = Prelude.pure newValue, ..}
instance Property "SizeInMBs" SplunkBufferingHintsProperty where
  type PropertyType "SizeInMBs" SplunkBufferingHintsProperty = Value Prelude.Integer
  set newValue SplunkBufferingHintsProperty {..}
    = SplunkBufferingHintsProperty
        {sizeInMBs = Prelude.pure newValue, ..}