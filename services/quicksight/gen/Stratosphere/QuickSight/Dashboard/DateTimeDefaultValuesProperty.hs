module Stratosphere.QuickSight.Dashboard.DateTimeDefaultValuesProperty (
        module Exports, DateTimeDefaultValuesProperty(..),
        mkDateTimeDefaultValuesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DynamicDefaultValueProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.RollingDateConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DateTimeDefaultValuesProperty
  = DateTimeDefaultValuesProperty {dynamicValue :: (Prelude.Maybe DynamicDefaultValueProperty),
                                   rollingDate :: (Prelude.Maybe RollingDateConfigurationProperty),
                                   staticValues :: (Prelude.Maybe (ValueList Prelude.Text))}
mkDateTimeDefaultValuesProperty :: DateTimeDefaultValuesProperty
mkDateTimeDefaultValuesProperty
  = DateTimeDefaultValuesProperty
      {dynamicValue = Prelude.Nothing, rollingDate = Prelude.Nothing,
       staticValues = Prelude.Nothing}
instance ToResourceProperties DateTimeDefaultValuesProperty where
  toResourceProperties DateTimeDefaultValuesProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.DateTimeDefaultValues",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DynamicValue" Prelude.<$> dynamicValue,
                            (JSON..=) "RollingDate" Prelude.<$> rollingDate,
                            (JSON..=) "StaticValues" Prelude.<$> staticValues])}
instance JSON.ToJSON DateTimeDefaultValuesProperty where
  toJSON DateTimeDefaultValuesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DynamicValue" Prelude.<$> dynamicValue,
               (JSON..=) "RollingDate" Prelude.<$> rollingDate,
               (JSON..=) "StaticValues" Prelude.<$> staticValues]))
instance Property "DynamicValue" DateTimeDefaultValuesProperty where
  type PropertyType "DynamicValue" DateTimeDefaultValuesProperty = DynamicDefaultValueProperty
  set newValue DateTimeDefaultValuesProperty {..}
    = DateTimeDefaultValuesProperty
        {dynamicValue = Prelude.pure newValue, ..}
instance Property "RollingDate" DateTimeDefaultValuesProperty where
  type PropertyType "RollingDate" DateTimeDefaultValuesProperty = RollingDateConfigurationProperty
  set newValue DateTimeDefaultValuesProperty {..}
    = DateTimeDefaultValuesProperty
        {rollingDate = Prelude.pure newValue, ..}
instance Property "StaticValues" DateTimeDefaultValuesProperty where
  type PropertyType "StaticValues" DateTimeDefaultValuesProperty = ValueList Prelude.Text
  set newValue DateTimeDefaultValuesProperty {..}
    = DateTimeDefaultValuesProperty
        {staticValues = Prelude.pure newValue, ..}