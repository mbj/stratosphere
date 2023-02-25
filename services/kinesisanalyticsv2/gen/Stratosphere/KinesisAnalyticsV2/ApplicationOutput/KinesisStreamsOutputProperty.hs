module Stratosphere.KinesisAnalyticsV2.ApplicationOutput.KinesisStreamsOutputProperty (
        KinesisStreamsOutputProperty(..), mkKinesisStreamsOutputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KinesisStreamsOutputProperty
  = KinesisStreamsOutputProperty {resourceARN :: (Value Prelude.Text)}
mkKinesisStreamsOutputProperty ::
  Value Prelude.Text -> KinesisStreamsOutputProperty
mkKinesisStreamsOutputProperty resourceARN
  = KinesisStreamsOutputProperty {resourceARN = resourceARN}
instance ToResourceProperties KinesisStreamsOutputProperty where
  toResourceProperties KinesisStreamsOutputProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::ApplicationOutput.KinesisStreamsOutput",
         properties = ["ResourceARN" JSON..= resourceARN]}
instance JSON.ToJSON KinesisStreamsOutputProperty where
  toJSON KinesisStreamsOutputProperty {..}
    = JSON.object ["ResourceARN" JSON..= resourceARN]
instance Property "ResourceARN" KinesisStreamsOutputProperty where
  type PropertyType "ResourceARN" KinesisStreamsOutputProperty = Value Prelude.Text
  set newValue KinesisStreamsOutputProperty {}
    = KinesisStreamsOutputProperty {resourceARN = newValue, ..}