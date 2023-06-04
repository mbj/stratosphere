module Stratosphere.QuickSight.Dashboard.IntegerParameterDeclarationProperty (
        module Exports, IntegerParameterDeclarationProperty(..),
        mkIntegerParameterDeclarationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.IntegerDefaultValuesProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.IntegerValueWhenUnsetConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.MappedDataSetParameterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IntegerParameterDeclarationProperty
  = IntegerParameterDeclarationProperty {defaultValues :: (Prelude.Maybe IntegerDefaultValuesProperty),
                                         mappedDataSetParameters :: (Prelude.Maybe [MappedDataSetParameterProperty]),
                                         name :: (Value Prelude.Text),
                                         parameterValueType :: (Value Prelude.Text),
                                         valueWhenUnset :: (Prelude.Maybe IntegerValueWhenUnsetConfigurationProperty)}
mkIntegerParameterDeclarationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> IntegerParameterDeclarationProperty
mkIntegerParameterDeclarationProperty name parameterValueType
  = IntegerParameterDeclarationProperty
      {name = name, parameterValueType = parameterValueType,
       defaultValues = Prelude.Nothing,
       mappedDataSetParameters = Prelude.Nothing,
       valueWhenUnset = Prelude.Nothing}
instance ToResourceProperties IntegerParameterDeclarationProperty where
  toResourceProperties IntegerParameterDeclarationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.IntegerParameterDeclaration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name,
                            "ParameterValueType" JSON..= parameterValueType]
                           (Prelude.catMaybes
                              [(JSON..=) "DefaultValues" Prelude.<$> defaultValues,
                               (JSON..=) "MappedDataSetParameters"
                                 Prelude.<$> mappedDataSetParameters,
                               (JSON..=) "ValueWhenUnset" Prelude.<$> valueWhenUnset]))}
instance JSON.ToJSON IntegerParameterDeclarationProperty where
  toJSON IntegerParameterDeclarationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name,
               "ParameterValueType" JSON..= parameterValueType]
              (Prelude.catMaybes
                 [(JSON..=) "DefaultValues" Prelude.<$> defaultValues,
                  (JSON..=) "MappedDataSetParameters"
                    Prelude.<$> mappedDataSetParameters,
                  (JSON..=) "ValueWhenUnset" Prelude.<$> valueWhenUnset])))
instance Property "DefaultValues" IntegerParameterDeclarationProperty where
  type PropertyType "DefaultValues" IntegerParameterDeclarationProperty = IntegerDefaultValuesProperty
  set newValue IntegerParameterDeclarationProperty {..}
    = IntegerParameterDeclarationProperty
        {defaultValues = Prelude.pure newValue, ..}
instance Property "MappedDataSetParameters" IntegerParameterDeclarationProperty where
  type PropertyType "MappedDataSetParameters" IntegerParameterDeclarationProperty = [MappedDataSetParameterProperty]
  set newValue IntegerParameterDeclarationProperty {..}
    = IntegerParameterDeclarationProperty
        {mappedDataSetParameters = Prelude.pure newValue, ..}
instance Property "Name" IntegerParameterDeclarationProperty where
  type PropertyType "Name" IntegerParameterDeclarationProperty = Value Prelude.Text
  set newValue IntegerParameterDeclarationProperty {..}
    = IntegerParameterDeclarationProperty {name = newValue, ..}
instance Property "ParameterValueType" IntegerParameterDeclarationProperty where
  type PropertyType "ParameterValueType" IntegerParameterDeclarationProperty = Value Prelude.Text
  set newValue IntegerParameterDeclarationProperty {..}
    = IntegerParameterDeclarationProperty
        {parameterValueType = newValue, ..}
instance Property "ValueWhenUnset" IntegerParameterDeclarationProperty where
  type PropertyType "ValueWhenUnset" IntegerParameterDeclarationProperty = IntegerValueWhenUnsetConfigurationProperty
  set newValue IntegerParameterDeclarationProperty {..}
    = IntegerParameterDeclarationProperty
        {valueWhenUnset = Prelude.pure newValue, ..}