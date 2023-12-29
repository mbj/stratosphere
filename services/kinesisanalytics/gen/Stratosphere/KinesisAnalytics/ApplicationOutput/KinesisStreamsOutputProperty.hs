module Stratosphere.KinesisAnalytics.ApplicationOutput.KinesisStreamsOutputProperty (
        KinesisStreamsOutputProperty(..), mkKinesisStreamsOutputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KinesisStreamsOutputProperty
  = KinesisStreamsOutputProperty {resourceARN :: (Value Prelude.Text),
                                  roleARN :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKinesisStreamsOutputProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> KinesisStreamsOutputProperty
mkKinesisStreamsOutputProperty resourceARN roleARN
  = KinesisStreamsOutputProperty
      {resourceARN = resourceARN, roleARN = roleARN}
instance ToResourceProperties KinesisStreamsOutputProperty where
  toResourceProperties KinesisStreamsOutputProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalytics::ApplicationOutput.KinesisStreamsOutput",
         supportsTags = Prelude.False,
         properties = ["ResourceARN" JSON..= resourceARN,
                       "RoleARN" JSON..= roleARN]}
instance JSON.ToJSON KinesisStreamsOutputProperty where
  toJSON KinesisStreamsOutputProperty {..}
    = JSON.object
        ["ResourceARN" JSON..= resourceARN, "RoleARN" JSON..= roleARN]
instance Property "ResourceARN" KinesisStreamsOutputProperty where
  type PropertyType "ResourceARN" KinesisStreamsOutputProperty = Value Prelude.Text
  set newValue KinesisStreamsOutputProperty {..}
    = KinesisStreamsOutputProperty {resourceARN = newValue, ..}
instance Property "RoleARN" KinesisStreamsOutputProperty where
  type PropertyType "RoleARN" KinesisStreamsOutputProperty = Value Prelude.Text
  set newValue KinesisStreamsOutputProperty {..}
    = KinesisStreamsOutputProperty {roleARN = newValue, ..}