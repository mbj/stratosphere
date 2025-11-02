module Stratosphere.KinesisAnalytics.Application.KinesisFirehoseInputProperty (
        KinesisFirehoseInputProperty(..), mkKinesisFirehoseInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KinesisFirehoseInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-kinesisfirehoseinput.html>
    KinesisFirehoseInputProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-kinesisfirehoseinput.html#cfn-kinesisanalytics-application-kinesisfirehoseinput-resourcearn>
                                  resourceARN :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-kinesisfirehoseinput.html#cfn-kinesisanalytics-application-kinesisfirehoseinput-rolearn>
                                  roleARN :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKinesisFirehoseInputProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> KinesisFirehoseInputProperty
mkKinesisFirehoseInputProperty resourceARN roleARN
  = KinesisFirehoseInputProperty
      {haddock_workaround_ = (), resourceARN = resourceARN,
       roleARN = roleARN}
instance ToResourceProperties KinesisFirehoseInputProperty where
  toResourceProperties KinesisFirehoseInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalytics::Application.KinesisFirehoseInput",
         supportsTags = Prelude.False,
         properties = ["ResourceARN" JSON..= resourceARN,
                       "RoleARN" JSON..= roleARN]}
instance JSON.ToJSON KinesisFirehoseInputProperty where
  toJSON KinesisFirehoseInputProperty {..}
    = JSON.object
        ["ResourceARN" JSON..= resourceARN, "RoleARN" JSON..= roleARN]
instance Property "ResourceARN" KinesisFirehoseInputProperty where
  type PropertyType "ResourceARN" KinesisFirehoseInputProperty = Value Prelude.Text
  set newValue KinesisFirehoseInputProperty {..}
    = KinesisFirehoseInputProperty {resourceARN = newValue, ..}
instance Property "RoleARN" KinesisFirehoseInputProperty where
  type PropertyType "RoleARN" KinesisFirehoseInputProperty = Value Prelude.Text
  set newValue KinesisFirehoseInputProperty {..}
    = KinesisFirehoseInputProperty {roleARN = newValue, ..}