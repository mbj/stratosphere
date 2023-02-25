module Stratosphere.KinesisAnalytics.Application.KinesisStreamsInputProperty (
        KinesisStreamsInputProperty(..), mkKinesisStreamsInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KinesisStreamsInputProperty
  = KinesisStreamsInputProperty {resourceARN :: (Value Prelude.Text),
                                 roleARN :: (Value Prelude.Text)}
mkKinesisStreamsInputProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> KinesisStreamsInputProperty
mkKinesisStreamsInputProperty resourceARN roleARN
  = KinesisStreamsInputProperty
      {resourceARN = resourceARN, roleARN = roleARN}
instance ToResourceProperties KinesisStreamsInputProperty where
  toResourceProperties KinesisStreamsInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalytics::Application.KinesisStreamsInput",
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