module Stratosphere.KinesisAnalyticsV2.Application.KinesisStreamsInputProperty (
        KinesisStreamsInputProperty(..), mkKinesisStreamsInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KinesisStreamsInputProperty
  = KinesisStreamsInputProperty {resourceARN :: (Value Prelude.Text)}
mkKinesisStreamsInputProperty ::
  Value Prelude.Text -> KinesisStreamsInputProperty
mkKinesisStreamsInputProperty resourceARN
  = KinesisStreamsInputProperty {resourceARN = resourceARN}
instance ToResourceProperties KinesisStreamsInputProperty where
  toResourceProperties KinesisStreamsInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.KinesisStreamsInput",
         properties = ["ResourceARN" JSON..= resourceARN]}
instance JSON.ToJSON KinesisStreamsInputProperty where
  toJSON KinesisStreamsInputProperty {..}
    = JSON.object ["ResourceARN" JSON..= resourceARN]
instance Property "ResourceARN" KinesisStreamsInputProperty where
  type PropertyType "ResourceARN" KinesisStreamsInputProperty = Value Prelude.Text
  set newValue KinesisStreamsInputProperty {}
    = KinesisStreamsInputProperty {resourceARN = newValue, ..}