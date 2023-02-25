module Stratosphere.Lambda.Function.SnapStartProperty (
        SnapStartProperty(..), mkSnapStartProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SnapStartProperty
  = SnapStartProperty {applyOn :: (Value Prelude.Text)}
mkSnapStartProperty :: Value Prelude.Text -> SnapStartProperty
mkSnapStartProperty applyOn = SnapStartProperty {applyOn = applyOn}
instance ToResourceProperties SnapStartProperty where
  toResourceProperties SnapStartProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::Function.SnapStart",
         properties = ["ApplyOn" JSON..= applyOn]}
instance JSON.ToJSON SnapStartProperty where
  toJSON SnapStartProperty {..}
    = JSON.object ["ApplyOn" JSON..= applyOn]
instance Property "ApplyOn" SnapStartProperty where
  type PropertyType "ApplyOn" SnapStartProperty = Value Prelude.Text
  set newValue SnapStartProperty {}
    = SnapStartProperty {applyOn = newValue, ..}