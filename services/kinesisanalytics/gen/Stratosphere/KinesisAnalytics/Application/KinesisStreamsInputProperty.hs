module Stratosphere.KinesisAnalytics.Application.KinesisStreamsInputProperty (
        KinesisStreamsInputProperty(..), mkKinesisStreamsInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KinesisStreamsInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-kinesisstreamsinput.html>
    KinesisStreamsInputProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-kinesisstreamsinput.html#cfn-kinesisanalytics-application-kinesisstreamsinput-resourcearn>
                                 resourceARN :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-kinesisstreamsinput.html#cfn-kinesisanalytics-application-kinesisstreamsinput-rolearn>
                                 roleARN :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKinesisStreamsInputProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> KinesisStreamsInputProperty
mkKinesisStreamsInputProperty resourceARN roleARN
  = KinesisStreamsInputProperty
      {haddock_workaround_ = (), resourceARN = resourceARN,
       roleARN = roleARN}
instance ToResourceProperties KinesisStreamsInputProperty where
  toResourceProperties KinesisStreamsInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalytics::Application.KinesisStreamsInput",
         supportsTags = Prelude.False,
         properties = ["ResourceARN" JSON..= resourceARN,
                       "RoleARN" JSON..= roleARN]}
instance JSON.ToJSON KinesisStreamsInputProperty where
  toJSON KinesisStreamsInputProperty {..}
    = JSON.object
        ["ResourceARN" JSON..= resourceARN, "RoleARN" JSON..= roleARN]
instance Property "ResourceARN" KinesisStreamsInputProperty where
  type PropertyType "ResourceARN" KinesisStreamsInputProperty = Value Prelude.Text
  set newValue KinesisStreamsInputProperty {..}
    = KinesisStreamsInputProperty {resourceARN = newValue, ..}
instance Property "RoleARN" KinesisStreamsInputProperty where
  type PropertyType "RoleARN" KinesisStreamsInputProperty = Value Prelude.Text
  set newValue KinesisStreamsInputProperty {..}
    = KinesisStreamsInputProperty {roleARN = newValue, ..}