module Stratosphere.SSMIncidents.ResponsePlan.DynamicSsmParameterProperty (
        module Exports, DynamicSsmParameterProperty(..),
        mkDynamicSsmParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SSMIncidents.ResponsePlan.DynamicSsmParameterValueProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DynamicSsmParameterProperty
  = DynamicSsmParameterProperty {key :: (Value Prelude.Text),
                                 value :: DynamicSsmParameterValueProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDynamicSsmParameterProperty ::
  Value Prelude.Text
  -> DynamicSsmParameterValueProperty -> DynamicSsmParameterProperty
mkDynamicSsmParameterProperty key value
  = DynamicSsmParameterProperty {key = key, value = value}
instance ToResourceProperties DynamicSsmParameterProperty where
  toResourceProperties DynamicSsmParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSMIncidents::ResponsePlan.DynamicSsmParameter",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON DynamicSsmParameterProperty where
  toJSON DynamicSsmParameterProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" DynamicSsmParameterProperty where
  type PropertyType "Key" DynamicSsmParameterProperty = Value Prelude.Text
  set newValue DynamicSsmParameterProperty {..}
    = DynamicSsmParameterProperty {key = newValue, ..}
instance Property "Value" DynamicSsmParameterProperty where
  type PropertyType "Value" DynamicSsmParameterProperty = DynamicSsmParameterValueProperty
  set newValue DynamicSsmParameterProperty {..}
    = DynamicSsmParameterProperty {value = newValue, ..}