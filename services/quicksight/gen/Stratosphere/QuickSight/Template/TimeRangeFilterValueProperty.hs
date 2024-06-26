module Stratosphere.QuickSight.Template.TimeRangeFilterValueProperty (
        module Exports, TimeRangeFilterValueProperty(..),
        mkTimeRangeFilterValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.RollingDateConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimeRangeFilterValueProperty
  = TimeRangeFilterValueProperty {parameter :: (Prelude.Maybe (Value Prelude.Text)),
                                  rollingDate :: (Prelude.Maybe RollingDateConfigurationProperty),
                                  staticValue :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTimeRangeFilterValueProperty :: TimeRangeFilterValueProperty
mkTimeRangeFilterValueProperty
  = TimeRangeFilterValueProperty
      {parameter = Prelude.Nothing, rollingDate = Prelude.Nothing,
       staticValue = Prelude.Nothing}
instance ToResourceProperties TimeRangeFilterValueProperty where
  toResourceProperties TimeRangeFilterValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.TimeRangeFilterValue",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Parameter" Prelude.<$> parameter,
                            (JSON..=) "RollingDate" Prelude.<$> rollingDate,
                            (JSON..=) "StaticValue" Prelude.<$> staticValue])}
instance JSON.ToJSON TimeRangeFilterValueProperty where
  toJSON TimeRangeFilterValueProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Parameter" Prelude.<$> parameter,
               (JSON..=) "RollingDate" Prelude.<$> rollingDate,
               (JSON..=) "StaticValue" Prelude.<$> staticValue]))
instance Property "Parameter" TimeRangeFilterValueProperty where
  type PropertyType "Parameter" TimeRangeFilterValueProperty = Value Prelude.Text
  set newValue TimeRangeFilterValueProperty {..}
    = TimeRangeFilterValueProperty
        {parameter = Prelude.pure newValue, ..}
instance Property "RollingDate" TimeRangeFilterValueProperty where
  type PropertyType "RollingDate" TimeRangeFilterValueProperty = RollingDateConfigurationProperty
  set newValue TimeRangeFilterValueProperty {..}
    = TimeRangeFilterValueProperty
        {rollingDate = Prelude.pure newValue, ..}
instance Property "StaticValue" TimeRangeFilterValueProperty where
  type PropertyType "StaticValue" TimeRangeFilterValueProperty = Value Prelude.Text
  set newValue TimeRangeFilterValueProperty {..}
    = TimeRangeFilterValueProperty
        {staticValue = Prelude.pure newValue, ..}