module Stratosphere.SSMIncidents.ResponsePlan.DynamicSsmParameterValueProperty (
        DynamicSsmParameterValueProperty(..),
        mkDynamicSsmParameterValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DynamicSsmParameterValueProperty
  = DynamicSsmParameterValueProperty {variable :: (Prelude.Maybe (Value Prelude.Text))}
mkDynamicSsmParameterValueProperty ::
  DynamicSsmParameterValueProperty
mkDynamicSsmParameterValueProperty
  = DynamicSsmParameterValueProperty {variable = Prelude.Nothing}
instance ToResourceProperties DynamicSsmParameterValueProperty where
  toResourceProperties DynamicSsmParameterValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSMIncidents::ResponsePlan.DynamicSsmParameterValue",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Variable" Prelude.<$> variable])}
instance JSON.ToJSON DynamicSsmParameterValueProperty where
  toJSON DynamicSsmParameterValueProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Variable" Prelude.<$> variable]))
instance Property "Variable" DynamicSsmParameterValueProperty where
  type PropertyType "Variable" DynamicSsmParameterValueProperty = Value Prelude.Text
  set newValue DynamicSsmParameterValueProperty {}
    = DynamicSsmParameterValueProperty
        {variable = Prelude.pure newValue, ..}