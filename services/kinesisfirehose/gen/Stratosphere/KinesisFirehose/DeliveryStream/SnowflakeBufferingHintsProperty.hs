module Stratosphere.KinesisFirehose.DeliveryStream.SnowflakeBufferingHintsProperty (
        SnowflakeBufferingHintsProperty(..),
        mkSnowflakeBufferingHintsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SnowflakeBufferingHintsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-snowflakebufferinghints.html>
    SnowflakeBufferingHintsProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-snowflakebufferinghints.html#cfn-kinesisfirehose-deliverystream-snowflakebufferinghints-intervalinseconds>
                                     intervalInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-snowflakebufferinghints.html#cfn-kinesisfirehose-deliverystream-snowflakebufferinghints-sizeinmbs>
                                     sizeInMBs :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSnowflakeBufferingHintsProperty ::
  SnowflakeBufferingHintsProperty
mkSnowflakeBufferingHintsProperty
  = SnowflakeBufferingHintsProperty
      {haddock_workaround_ = (), intervalInSeconds = Prelude.Nothing,
       sizeInMBs = Prelude.Nothing}
instance ToResourceProperties SnowflakeBufferingHintsProperty where
  toResourceProperties SnowflakeBufferingHintsProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.SnowflakeBufferingHints",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IntervalInSeconds" Prelude.<$> intervalInSeconds,
                            (JSON..=) "SizeInMBs" Prelude.<$> sizeInMBs])}
instance JSON.ToJSON SnowflakeBufferingHintsProperty where
  toJSON SnowflakeBufferingHintsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IntervalInSeconds" Prelude.<$> intervalInSeconds,
               (JSON..=) "SizeInMBs" Prelude.<$> sizeInMBs]))
instance Property "IntervalInSeconds" SnowflakeBufferingHintsProperty where
  type PropertyType "IntervalInSeconds" SnowflakeBufferingHintsProperty = Value Prelude.Integer
  set newValue SnowflakeBufferingHintsProperty {..}
    = SnowflakeBufferingHintsProperty
        {intervalInSeconds = Prelude.pure newValue, ..}
instance Property "SizeInMBs" SnowflakeBufferingHintsProperty where
  type PropertyType "SizeInMBs" SnowflakeBufferingHintsProperty = Value Prelude.Integer
  set newValue SnowflakeBufferingHintsProperty {..}
    = SnowflakeBufferingHintsProperty
        {sizeInMBs = Prelude.pure newValue, ..}