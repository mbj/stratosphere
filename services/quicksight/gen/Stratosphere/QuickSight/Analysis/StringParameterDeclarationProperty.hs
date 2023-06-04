module Stratosphere.QuickSight.Analysis.StringParameterDeclarationProperty (
        module Exports, StringParameterDeclarationProperty(..),
        mkStringParameterDeclarationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.MappedDataSetParameterProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.StringDefaultValuesProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.StringValueWhenUnsetConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StringParameterDeclarationProperty
  = StringParameterDeclarationProperty {defaultValues :: (Prelude.Maybe StringDefaultValuesProperty),
                                        mappedDataSetParameters :: (Prelude.Maybe [MappedDataSetParameterProperty]),
                                        name :: (Value Prelude.Text),
                                        parameterValueType :: (Value Prelude.Text),
                                        valueWhenUnset :: (Prelude.Maybe StringValueWhenUnsetConfigurationProperty)}
mkStringParameterDeclarationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> StringParameterDeclarationProperty
mkStringParameterDeclarationProperty name parameterValueType
  = StringParameterDeclarationProperty
      {name = name, parameterValueType = parameterValueType,
       defaultValues = Prelude.Nothing,
       mappedDataSetParameters = Prelude.Nothing,
       valueWhenUnset = Prelude.Nothing}
instance ToResourceProperties StringParameterDeclarationProperty where
  toResourceProperties StringParameterDeclarationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.StringParameterDeclaration",
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
instance JSON.ToJSON StringParameterDeclarationProperty where
  toJSON StringParameterDeclarationProperty {..}
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
instance Property "DefaultValues" StringParameterDeclarationProperty where
  type PropertyType "DefaultValues" StringParameterDeclarationProperty = StringDefaultValuesProperty
  set newValue StringParameterDeclarationProperty {..}
    = StringParameterDeclarationProperty
        {defaultValues = Prelude.pure newValue, ..}
instance Property "MappedDataSetParameters" StringParameterDeclarationProperty where
  type PropertyType "MappedDataSetParameters" StringParameterDeclarationProperty = [MappedDataSetParameterProperty]
  set newValue StringParameterDeclarationProperty {..}
    = StringParameterDeclarationProperty
        {mappedDataSetParameters = Prelude.pure newValue, ..}
instance Property "Name" StringParameterDeclarationProperty where
  type PropertyType "Name" StringParameterDeclarationProperty = Value Prelude.Text
  set newValue StringParameterDeclarationProperty {..}
    = StringParameterDeclarationProperty {name = newValue, ..}
instance Property "ParameterValueType" StringParameterDeclarationProperty where
  type PropertyType "ParameterValueType" StringParameterDeclarationProperty = Value Prelude.Text
  set newValue StringParameterDeclarationProperty {..}
    = StringParameterDeclarationProperty
        {parameterValueType = newValue, ..}
instance Property "ValueWhenUnset" StringParameterDeclarationProperty where
  type PropertyType "ValueWhenUnset" StringParameterDeclarationProperty = StringValueWhenUnsetConfigurationProperty
  set newValue StringParameterDeclarationProperty {..}
    = StringParameterDeclarationProperty
        {valueWhenUnset = Prelude.pure newValue, ..}