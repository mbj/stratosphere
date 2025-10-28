module Stratosphere.KinesisAnalyticsV2.Application.KinesisStreamsInputProperty (
        KinesisStreamsInputProperty(..), mkKinesisStreamsInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KinesisStreamsInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-kinesisstreamsinput.html>
    KinesisStreamsInputProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-kinesisstreamsinput.html#cfn-kinesisanalyticsv2-application-kinesisstreamsinput-resourcearn>
                                 resourceARN :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKinesisStreamsInputProperty ::
  Value Prelude.Text -> KinesisStreamsInputProperty
mkKinesisStreamsInputProperty resourceARN
  = KinesisStreamsInputProperty
      {haddock_workaround_ = (), resourceARN = resourceARN}
instance ToResourceProperties KinesisStreamsInputProperty where
  toResourceProperties KinesisStreamsInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.KinesisStreamsInput",
         supportsTags = Prelude.False,
         properties = ["ResourceARN" JSON..= resourceARN]}
instance JSON.ToJSON KinesisStreamsInputProperty where
  toJSON KinesisStreamsInputProperty {..}
    = JSON.object ["ResourceARN" JSON..= resourceARN]
instance Property "ResourceARN" KinesisStreamsInputProperty where
  type PropertyType "ResourceARN" KinesisStreamsInputProperty = Value Prelude.Text
  set newValue KinesisStreamsInputProperty {..}
    = KinesisStreamsInputProperty {resourceARN = newValue, ..}