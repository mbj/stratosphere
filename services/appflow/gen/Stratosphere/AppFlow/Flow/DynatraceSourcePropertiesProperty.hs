module Stratosphere.AppFlow.Flow.DynatraceSourcePropertiesProperty (
        DynatraceSourcePropertiesProperty(..),
        mkDynatraceSourcePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DynatraceSourcePropertiesProperty
  = DynatraceSourcePropertiesProperty {object :: (Value Prelude.Text)}
mkDynatraceSourcePropertiesProperty ::
  Value Prelude.Text -> DynatraceSourcePropertiesProperty
mkDynatraceSourcePropertiesProperty object
  = DynatraceSourcePropertiesProperty {object = object}
instance ToResourceProperties DynatraceSourcePropertiesProperty where
  toResourceProperties DynatraceSourcePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.DynatraceSourceProperties",
         properties = ["Object" JSON..= object]}
instance JSON.ToJSON DynatraceSourcePropertiesProperty where
  toJSON DynatraceSourcePropertiesProperty {..}
    = JSON.object ["Object" JSON..= object]
instance Property "Object" DynatraceSourcePropertiesProperty where
  type PropertyType "Object" DynatraceSourcePropertiesProperty = Value Prelude.Text
  set newValue DynatraceSourcePropertiesProperty {}
    = DynatraceSourcePropertiesProperty {object = newValue, ..}