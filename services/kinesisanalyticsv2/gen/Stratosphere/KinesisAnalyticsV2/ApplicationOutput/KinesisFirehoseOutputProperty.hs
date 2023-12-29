module Stratosphere.KinesisAnalyticsV2.ApplicationOutput.KinesisFirehoseOutputProperty (
        KinesisFirehoseOutputProperty(..), mkKinesisFirehoseOutputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KinesisFirehoseOutputProperty
  = KinesisFirehoseOutputProperty {resourceARN :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKinesisFirehoseOutputProperty ::
  Value Prelude.Text -> KinesisFirehoseOutputProperty
mkKinesisFirehoseOutputProperty resourceARN
  = KinesisFirehoseOutputProperty {resourceARN = resourceARN}
instance ToResourceProperties KinesisFirehoseOutputProperty where
  toResourceProperties KinesisFirehoseOutputProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::ApplicationOutput.KinesisFirehoseOutput",
         supportsTags = Prelude.False,
         properties = ["ResourceARN" JSON..= resourceARN]}
instance JSON.ToJSON KinesisFirehoseOutputProperty where
  toJSON KinesisFirehoseOutputProperty {..}
    = JSON.object ["ResourceARN" JSON..= resourceARN]
instance Property "ResourceARN" KinesisFirehoseOutputProperty where
  type PropertyType "ResourceARN" KinesisFirehoseOutputProperty = Value Prelude.Text
  set newValue KinesisFirehoseOutputProperty {}
    = KinesisFirehoseOutputProperty {resourceARN = newValue, ..}