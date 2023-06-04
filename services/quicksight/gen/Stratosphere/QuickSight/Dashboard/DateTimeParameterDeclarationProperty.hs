module Stratosphere.QuickSight.Dashboard.DateTimeParameterDeclarationProperty (
        module Exports, DateTimeParameterDeclarationProperty(..),
        mkDateTimeParameterDeclarationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DateTimeDefaultValuesProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DateTimeValueWhenUnsetConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.MappedDataSetParameterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DateTimeParameterDeclarationProperty
  = DateTimeParameterDeclarationProperty {defaultValues :: (Prelude.Maybe DateTimeDefaultValuesProperty),
                                          mappedDataSetParameters :: (Prelude.Maybe [MappedDataSetParameterProperty]),
                                          name :: (Value Prelude.Text),
                                          timeGranularity :: (Prelude.Maybe (Value Prelude.Text)),
                                          valueWhenUnset :: (Prelude.Maybe DateTimeValueWhenUnsetConfigurationProperty)}
mkDateTimeParameterDeclarationProperty ::
  Value Prelude.Text -> DateTimeParameterDeclarationProperty
mkDateTimeParameterDeclarationProperty name
  = DateTimeParameterDeclarationProperty
      {name = name, defaultValues = Prelude.Nothing,
       mappedDataSetParameters = Prelude.Nothing,
       timeGranularity = Prelude.Nothing,
       valueWhenUnset = Prelude.Nothing}
instance ToResourceProperties DateTimeParameterDeclarationProperty where
  toResourceProperties DateTimeParameterDeclarationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.DateTimeParameterDeclaration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "DefaultValues" Prelude.<$> defaultValues,
                               (JSON..=) "MappedDataSetParameters"
                                 Prelude.<$> mappedDataSetParameters,
                               (JSON..=) "TimeGranularity" Prelude.<$> timeGranularity,
                               (JSON..=) "ValueWhenUnset" Prelude.<$> valueWhenUnset]))}
instance JSON.ToJSON DateTimeParameterDeclarationProperty where
  toJSON DateTimeParameterDeclarationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "DefaultValues" Prelude.<$> defaultValues,
                  (JSON..=) "MappedDataSetParameters"
                    Prelude.<$> mappedDataSetParameters,
                  (JSON..=) "TimeGranularity" Prelude.<$> timeGranularity,
                  (JSON..=) "ValueWhenUnset" Prelude.<$> valueWhenUnset])))
instance Property "DefaultValues" DateTimeParameterDeclarationProperty where
  type PropertyType "DefaultValues" DateTimeParameterDeclarationProperty = DateTimeDefaultValuesProperty
  set newValue DateTimeParameterDeclarationProperty {..}
    = DateTimeParameterDeclarationProperty
        {defaultValues = Prelude.pure newValue, ..}
instance Property "MappedDataSetParameters" DateTimeParameterDeclarationProperty where
  type PropertyType "MappedDataSetParameters" DateTimeParameterDeclarationProperty = [MappedDataSetParameterProperty]
  set newValue DateTimeParameterDeclarationProperty {..}
    = DateTimeParameterDeclarationProperty
        {mappedDataSetParameters = Prelude.pure newValue, ..}
instance Property "Name" DateTimeParameterDeclarationProperty where
  type PropertyType "Name" DateTimeParameterDeclarationProperty = Value Prelude.Text
  set newValue DateTimeParameterDeclarationProperty {..}
    = DateTimeParameterDeclarationProperty {name = newValue, ..}
instance Property "TimeGranularity" DateTimeParameterDeclarationProperty where
  type PropertyType "TimeGranularity" DateTimeParameterDeclarationProperty = Value Prelude.Text
  set newValue DateTimeParameterDeclarationProperty {..}
    = DateTimeParameterDeclarationProperty
        {timeGranularity = Prelude.pure newValue, ..}
instance Property "ValueWhenUnset" DateTimeParameterDeclarationProperty where
  type PropertyType "ValueWhenUnset" DateTimeParameterDeclarationProperty = DateTimeValueWhenUnsetConfigurationProperty
  set newValue DateTimeParameterDeclarationProperty {..}
    = DateTimeParameterDeclarationProperty
        {valueWhenUnset = Prelude.pure newValue, ..}