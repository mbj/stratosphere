module Stratosphere.KinesisAnalytics.Application.KinesisFirehoseInputProperty (
        KinesisFirehoseInputProperty(..), mkKinesisFirehoseInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KinesisFirehoseInputProperty
  = KinesisFirehoseInputProperty {resourceARN :: (Value Prelude.Text),
                                  roleARN :: (Value Prelude.Text)}
mkKinesisFirehoseInputProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> KinesisFirehoseInputProperty
mkKinesisFirehoseInputProperty resourceARN roleARN
  = KinesisFirehoseInputProperty
      {resourceARN = resourceARN, roleARN = roleARN}
instance ToResourceProperties KinesisFirehoseInputProperty where
  toResourceProperties KinesisFirehoseInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalytics::Application.KinesisFirehoseInput",
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