module Stratosphere.QuickSight.Dashboard.DateTimeFormatConfigurationProperty (
        module Exports, DateTimeFormatConfigurationProperty(..),
        mkDateTimeFormatConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.NullValueFormatConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.NumericFormatConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DateTimeFormatConfigurationProperty
  = DateTimeFormatConfigurationProperty {dateTimeFormat :: (Prelude.Maybe (Value Prelude.Text)),
                                         nullValueFormatConfiguration :: (Prelude.Maybe NullValueFormatConfigurationProperty),
                                         numericFormatConfiguration :: (Prelude.Maybe NumericFormatConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDateTimeFormatConfigurationProperty ::
  DateTimeFormatConfigurationProperty
mkDateTimeFormatConfigurationProperty
  = DateTimeFormatConfigurationProperty
      {dateTimeFormat = Prelude.Nothing,
       nullValueFormatConfiguration = Prelude.Nothing,
       numericFormatConfiguration = Prelude.Nothing}
instance ToResourceProperties DateTimeFormatConfigurationProperty where
  toResourceProperties DateTimeFormatConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.DateTimeFormatConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DateTimeFormat" Prelude.<$> dateTimeFormat,
                            (JSON..=) "NullValueFormatConfiguration"
                              Prelude.<$> nullValueFormatConfiguration,
                            (JSON..=) "NumericFormatConfiguration"
                              Prelude.<$> numericFormatConfiguration])}
instance JSON.ToJSON DateTimeFormatConfigurationProperty where
  toJSON DateTimeFormatConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DateTimeFormat" Prelude.<$> dateTimeFormat,
               (JSON..=) "NullValueFormatConfiguration"
                 Prelude.<$> nullValueFormatConfiguration,
               (JSON..=) "NumericFormatConfiguration"
                 Prelude.<$> numericFormatConfiguration]))
instance Property "DateTimeFormat" DateTimeFormatConfigurationProperty where
  type PropertyType "DateTimeFormat" DateTimeFormatConfigurationProperty = Value Prelude.Text
  set newValue DateTimeFormatConfigurationProperty {..}
    = DateTimeFormatConfigurationProperty
        {dateTimeFormat = Prelude.pure newValue, ..}
instance Property "NullValueFormatConfiguration" DateTimeFormatConfigurationProperty where
  type PropertyType "NullValueFormatConfiguration" DateTimeFormatConfigurationProperty = NullValueFormatConfigurationProperty
  set newValue DateTimeFormatConfigurationProperty {..}
    = DateTimeFormatConfigurationProperty
        {nullValueFormatConfiguration = Prelude.pure newValue, ..}
instance Property "NumericFormatConfiguration" DateTimeFormatConfigurationProperty where
  type PropertyType "NumericFormatConfiguration" DateTimeFormatConfigurationProperty = NumericFormatConfigurationProperty
  set newValue DateTimeFormatConfigurationProperty {..}
    = DateTimeFormatConfigurationProperty
        {numericFormatConfiguration = Prelude.pure newValue, ..}