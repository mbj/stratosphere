module Stratosphere.KinesisAnalytics.ApplicationOutput.KinesisFirehoseOutputProperty (
        KinesisFirehoseOutputProperty(..), mkKinesisFirehoseOutputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KinesisFirehoseOutputProperty
  = KinesisFirehoseOutputProperty {resourceARN :: (Value Prelude.Text),
                                   roleARN :: (Value Prelude.Text)}
mkKinesisFirehoseOutputProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> KinesisFirehoseOutputProperty
mkKinesisFirehoseOutputProperty resourceARN roleARN
  = KinesisFirehoseOutputProperty
      {resourceARN = resourceARN, roleARN = roleARN}
instance ToResourceProperties KinesisFirehoseOutputProperty where
  toResourceProperties KinesisFirehoseOutputProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalytics::ApplicationOutput.KinesisFirehoseOutput",
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