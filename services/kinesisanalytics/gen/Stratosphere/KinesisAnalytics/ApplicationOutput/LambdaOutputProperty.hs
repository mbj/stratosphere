module Stratosphere.KinesisAnalytics.ApplicationOutput.LambdaOutputProperty (
        LambdaOutputProperty(..), mkLambdaOutputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LambdaOutputProperty
  = LambdaOutputProperty {resourceARN :: (Value Prelude.Text),
                          roleARN :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLambdaOutputProperty ::
  Value Prelude.Text -> Value Prelude.Text -> LambdaOutputProperty
mkLambdaOutputProperty resourceARN roleARN
  = LambdaOutputProperty
      {resourceARN = resourceARN, roleARN = roleARN}
instance ToResourceProperties LambdaOutputProperty where
  toResourceProperties LambdaOutputProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalytics::ApplicationOutput.LambdaOutput",
         supportsTags = Prelude.False,
         properties = ["ResourceARN" JSON..= resourceARN,
                       "RoleARN" JSON..= roleARN]}
instance JSON.ToJSON LambdaOutputProperty where
  toJSON LambdaOutputProperty {..}
    = JSON.object
        ["ResourceARN" JSON..= resourceARN, "RoleARN" JSON..= roleARN]
instance Property "ResourceARN" LambdaOutputProperty where
  type PropertyType "ResourceARN" LambdaOutputProperty = Value Prelude.Text
  set newValue LambdaOutputProperty {..}
    = LambdaOutputProperty {resourceARN = newValue, ..}
instance Property "RoleARN" LambdaOutputProperty where
  type PropertyType "RoleARN" LambdaOutputProperty = Value Prelude.Text
  set newValue LambdaOutputProperty {..}
    = LambdaOutputProperty {roleARN = newValue, ..}