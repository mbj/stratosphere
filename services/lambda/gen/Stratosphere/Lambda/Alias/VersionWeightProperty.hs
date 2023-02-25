module Stratosphere.Lambda.Alias.VersionWeightProperty (
        VersionWeightProperty(..), mkVersionWeightProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VersionWeightProperty
  = VersionWeightProperty {functionVersion :: (Value Prelude.Text),
                           functionWeight :: (Value Prelude.Double)}
mkVersionWeightProperty ::
  Value Prelude.Text -> Value Prelude.Double -> VersionWeightProperty
mkVersionWeightProperty functionVersion functionWeight
  = VersionWeightProperty
      {functionVersion = functionVersion,
       functionWeight = functionWeight}
instance ToResourceProperties VersionWeightProperty where
  toResourceProperties VersionWeightProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::Alias.VersionWeight",
         properties = ["FunctionVersion" JSON..= functionVersion,
                       "FunctionWeight" JSON..= functionWeight]}
instance JSON.ToJSON VersionWeightProperty where
  toJSON VersionWeightProperty {..}
    = JSON.object
        ["FunctionVersion" JSON..= functionVersion,
         "FunctionWeight" JSON..= functionWeight]
instance Property "FunctionVersion" VersionWeightProperty where
  type PropertyType "FunctionVersion" VersionWeightProperty = Value Prelude.Text
  set newValue VersionWeightProperty {..}
    = VersionWeightProperty {functionVersion = newValue, ..}
instance Property "FunctionWeight" VersionWeightProperty where
  type PropertyType "FunctionWeight" VersionWeightProperty = Value Prelude.Double
  set newValue VersionWeightProperty {..}
    = VersionWeightProperty {functionWeight = newValue, ..}