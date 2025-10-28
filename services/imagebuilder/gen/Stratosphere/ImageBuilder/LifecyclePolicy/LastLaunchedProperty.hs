module Stratosphere.ImageBuilder.LifecyclePolicy.LastLaunchedProperty (
        LastLaunchedProperty(..), mkLastLaunchedProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LastLaunchedProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-lifecyclepolicy-lastlaunched.html>
    LastLaunchedProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-lifecyclepolicy-lastlaunched.html#cfn-imagebuilder-lifecyclepolicy-lastlaunched-unit>
                          unit :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-lifecyclepolicy-lastlaunched.html#cfn-imagebuilder-lifecyclepolicy-lastlaunched-value>
                          value :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLastLaunchedProperty ::
  Value Prelude.Text -> Value Prelude.Integer -> LastLaunchedProperty
mkLastLaunchedProperty unit value
  = LastLaunchedProperty
      {haddock_workaround_ = (), unit = unit, value = value}
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