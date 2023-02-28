module Stratosphere.KinesisAnalyticsV2.Application.KinesisFirehoseInputProperty (
        KinesisFirehoseInputProperty(..), mkKinesisFirehoseInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KinesisFirehoseInputProperty
  = KinesisFirehoseInputProperty {resourceARN :: (Value Prelude.Text)}
mkKinesisFirehoseInputProperty ::
  Value Prelude.Text -> KinesisFirehoseInputProperty
mkKinesisFirehoseInputProperty resourceARN
  = KinesisFirehoseInputProperty {resourceARN = resourceARN}
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
  set newValue KinesisFirehoseInputProperty {}
    = KinesisFirehoseInputProperty {resourceARN = newValue, ..}