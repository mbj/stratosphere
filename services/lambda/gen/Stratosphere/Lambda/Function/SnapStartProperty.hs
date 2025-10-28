module Stratosphere.Lambda.Function.SnapStartProperty (
        SnapStartProperty(..), mkSnapStartProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SnapStartProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-snapstart.html>
    SnapStartProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-snapstart.html#cfn-lambda-function-snapstart-applyon>
                       applyOn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSnapStartProperty :: Value Prelude.Text -> SnapStartProperty
mkSnapStartProperty applyOn
  = SnapStartProperty {haddock_workaround_ = (), applyOn = applyOn}
instance ToResourceProperties SnapStartProperty where
  toResourceProperties SnapStartProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::Function.SnapStart",
         supportsTags = Prelude.False,
         properties = ["ApplyOn" JSON..= applyOn]}
instance JSON.ToJSON SnapStartProperty where
  toJSON SnapStartProperty {..}
    = JSON.object ["ApplyOn" JSON..= applyOn]
instance Property "ApplyOn" SnapStartProperty where
  type PropertyType "ApplyOn" SnapStartProperty = Value Prelude.Text
  set newValue SnapStartProperty {..}
    = SnapStartProperty {applyOn = newValue, ..}