module Stratosphere.KinesisAnalyticsV2.ApplicationOutput.LambdaOutputProperty (
        LambdaOutputProperty(..), mkLambdaOutputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LambdaOutputProperty
  = LambdaOutputProperty {resourceARN :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLambdaOutputProperty ::
  Value Prelude.Text -> LambdaOutputProperty
mkLambdaOutputProperty resourceARN
  = LambdaOutputProperty {resourceARN = resourceARN}
instance ToResourceProperties LambdaOutputProperty where
  toResourceProperties LambdaOutputProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::ApplicationOutput.LambdaOutput",
         supportsTags = Prelude.False,
         properties = ["ResourceARN" JSON..= resourceARN]}
instance JSON.ToJSON LambdaOutputProperty where
  toJSON LambdaOutputProperty {..}
    = JSON.object ["ResourceARN" JSON..= resourceARN]
instance Property "ResourceARN" LambdaOutputProperty where
  type PropertyType "ResourceARN" LambdaOutputProperty = Value Prelude.Text
  set newValue LambdaOutputProperty {}
    = LambdaOutputProperty {resourceARN = newValue, ..}