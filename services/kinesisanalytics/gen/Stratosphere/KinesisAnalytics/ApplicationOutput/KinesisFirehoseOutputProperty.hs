module Stratosphere.KinesisAnalytics.ApplicationOutput.KinesisFirehoseOutputProperty (
        KinesisFirehoseOutputProperty(..), mkKinesisFirehoseOutputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KinesisFirehoseOutputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-kinesisfirehoseoutput.html>
    KinesisFirehoseOutputProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-kinesisfirehoseoutput.html#cfn-kinesisanalytics-applicationoutput-kinesisfirehoseoutput-resourcearn>
                                   resourceARN :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-kinesisfirehoseoutput.html#cfn-kinesisanalytics-applicationoutput-kinesisfirehoseoutput-rolearn>
                                   roleARN :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKinesisFirehoseOutputProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> KinesisFirehoseOutputProperty
mkKinesisFirehoseOutputProperty resourceARN roleARN
  = KinesisFirehoseOutputProperty
      {haddock_workaround_ = (), resourceARN = resourceARN,
       roleARN = roleARN}
instance ToResourceProperties KinesisFirehoseOutputProperty where
  toResourceProperties KinesisFirehoseOutputProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalytics::ApplicationOutput.KinesisFirehoseOutput",
         supportsTags = Prelude.False,
         properties = ["ResourceARN" JSON..= resourceARN,
                       "RoleARN" JSON..= roleARN]}
instance JSON.ToJSON KinesisFirehoseOutputProperty where
  toJSON KinesisFirehoseOutputProperty {..}
    = JSON.object
        ["ResourceARN" JSON..= resourceARN, "RoleARN" JSON..= roleARN]
instance Property "ResourceARN" KinesisFirehoseOutputProperty where
  type PropertyType "ResourceARN" KinesisFirehoseOutputProperty = Value Prelude.Text
  set newValue KinesisFirehoseOutputProperty {..}
    = KinesisFirehoseOutputProperty {resourceARN = newValue, ..}
instance Property "RoleARN" KinesisFirehoseOutputProperty where
  type PropertyType "RoleARN" KinesisFirehoseOutputProperty = Value Prelude.Text
  set newValue KinesisFirehoseOutputProperty {..}
    = KinesisFirehoseOutputProperty {roleARN = newValue, ..}