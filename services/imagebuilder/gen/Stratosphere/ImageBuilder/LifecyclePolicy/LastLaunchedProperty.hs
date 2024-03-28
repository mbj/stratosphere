module Stratosphere.ImageBuilder.LifecyclePolicy.LastLaunchedProperty (
        LastLaunchedProperty(..), mkLastLaunchedProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LastLaunchedProperty
  = LastLaunchedProperty {unit :: (Value Prelude.Text),
                          value :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLastLaunchedProperty ::
  Value Prelude.Text -> Value Prelude.Integer -> LastLaunchedProperty
mkLastLaunchedProperty unit value
  = LastLaunchedProperty {unit = unit, value = value}
instance ToResourceProperties LastLaunchedProperty where
  toResourceProperties LastLaunchedProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::LifecyclePolicy.LastLaunched",
         supportsTags = Prelude.False,
         properties = ["Unit" JSON..= unit, "Value" JSON..= value]}
instance JSON.ToJSON LastLaunchedProperty where
  toJSON LastLaunchedProperty {..}
    = JSON.object ["Unit" JSON..= unit, "Value" JSON..= value]
instance Property "Unit" LastLaunchedProperty where
  type PropertyType "Unit" LastLaunchedProperty = Value Prelude.Text
  set newValue LastLaunchedProperty {..}
    = LastLaunchedProperty {unit = newValue, ..}
instance Property "Value" LastLaunchedProperty where
  type PropertyType "Value" LastLaunchedProperty = Value Prelude.Integer
  set newValue LastLaunchedProperty {..}
    = LastLaunchedProperty {value = newValue, ..}