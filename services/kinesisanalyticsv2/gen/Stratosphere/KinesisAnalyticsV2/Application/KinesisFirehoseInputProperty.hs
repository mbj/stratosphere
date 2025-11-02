module Stratosphere.KinesisAnalyticsV2.Application.KinesisFirehoseInputProperty (
        KinesisFirehoseInputProperty(..), mkKinesisFirehoseInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KinesisFirehoseInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-kinesisfirehoseinput.html>
    KinesisFirehoseInputProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-kinesisfirehoseinput.html#cfn-kinesisanalyticsv2-application-kinesisfirehoseinput-resourcearn>
                                  resourceARN :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKinesisFirehoseInputProperty ::
  Value Prelude.Text -> KinesisFirehoseInputProperty
mkKinesisFirehoseInputProperty resourceARN
  = KinesisFirehoseInputProperty
      {haddock_workaround_ = (), resourceARN = resourceARN}
instance ToResourceProperties KinesisFirehoseInputProperty where
  toResourceProperties KinesisFirehoseInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.KinesisFirehoseInput",
         supportsTags = Prelude.False,
         properties = ["ResourceARN" JSON..= resourceARN]}
instance JSON.ToJSON KinesisFirehoseInputProperty where
  toJSON KinesisFirehoseInputProperty {..}
    = JSON.object ["ResourceARN" JSON..= resourceARN]
instance Property "ResourceARN" KinesisFirehoseInputProperty where
  type PropertyType "ResourceARN" KinesisFirehoseInputProperty = Value Prelude.Text
  set newValue KinesisFirehoseInputProperty {..}
    = KinesisFirehoseInputProperty {resourceARN = newValue, ..}