module Stratosphere.KinesisAnalyticsV2.ApplicationOutput.KinesisStreamsOutputProperty (
        KinesisStreamsOutputProperty(..), mkKinesisStreamsOutputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KinesisStreamsOutputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-kinesisstreamsoutput.html>
    KinesisStreamsOutputProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-kinesisstreamsoutput.html#cfn-kinesisanalyticsv2-applicationoutput-kinesisstreamsoutput-resourcearn>
                                  resourceARN :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKinesisStreamsOutputProperty ::
  Value Prelude.Text -> KinesisStreamsOutputProperty
mkKinesisStreamsOutputProperty resourceARN
  = KinesisStreamsOutputProperty
      {haddock_workaround_ = (), resourceARN = resourceARN}
instance ToResourceProperties KinesisStreamsOutputProperty where
  toResourceProperties KinesisStreamsOutputProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::ApplicationOutput.KinesisStreamsOutput",
         supportsTags = Prelude.False,
         properties = ["ResourceARN" JSON..= resourceARN]}
instance JSON.ToJSON KinesisStreamsOutputProperty where
  toJSON KinesisStreamsOutputProperty {..}
    = JSON.object ["ResourceARN" JSON..= resourceARN]
instance Property "ResourceARN" KinesisStreamsOutputProperty where
  type PropertyType "ResourceARN" KinesisStreamsOutputProperty = Value Prelude.Text
  set newValue KinesisStreamsOutputProperty {..}
    = KinesisStreamsOutputProperty {resourceARN = newValue, ..}