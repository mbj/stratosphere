module Stratosphere.QuickSight.Dashboard.FormatConfigurationProperty (
        module Exports, FormatConfigurationProperty(..),
        mkFormatConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DateTimeFormatConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.NumberFormatConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.StringFormatConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data FormatConfigurationProperty
  = FormatConfigurationProperty {dateTimeFormatConfiguration :: (Prelude.Maybe DateTimeFormatConfigurationProperty),
                                 numberFormatConfiguration :: (Prelude.Maybe NumberFormatConfigurationProperty),
                                 stringFormatConfiguration :: (Prelude.Maybe StringFormatConfigurationProperty)}
mkFormatConfigurationProperty :: FormatConfigurationProperty
mkFormatConfigurationProperty
  = FormatConfigurationProperty
      {dateTimeFormatConfiguration = Prelude.Nothing,
       numberFormatConfiguration = Prelude.Nothing,
       stringFormatConfiguration = Prelude.Nothing}
instance ToResourceProperties FormatConfigurationProperty where
  toResourceProperties FormatConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.FormatConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DateTimeFormatConfiguration"
                              Prelude.<$> dateTimeFormatConfiguration,
                            (JSON..=) "NumberFormatConfiguration"
                              Prelude.<$> numberFormatConfiguration,
                            (JSON..=) "StringFormatConfiguration"
                              Prelude.<$> stringFormatConfiguration])}
instance JSON.ToJSON FormatConfigurationProperty where
  toJSON FormatConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DateTimeFormatConfiguration"
                 Prelude.<$> dateTimeFormatConfiguration,
               (JSON..=) "NumberFormatConfiguration"
                 Prelude.<$> numberFormatConfiguration,
               (JSON..=) "StringFormatConfiguration"
                 Prelude.<$> stringFormatConfiguration]))
instance Property "DateTimeFormatConfiguration" FormatConfigurationProperty where
  type PropertyType "DateTimeFormatConfiguration" FormatConfigurationProperty = DateTimeFormatConfigurationProperty
  set newValue FormatConfigurationProperty {..}
    = FormatConfigurationProperty
        {dateTimeFormatConfiguration = Prelude.pure newValue, ..}
instance Property "NumberFormatConfiguration" FormatConfigurationProperty where
  type PropertyType "NumberFormatConfiguration" FormatConfigurationProperty = NumberFormatConfigurationProperty
  set newValue FormatConfigurationProperty {..}
    = FormatConfigurationProperty
        {numberFormatConfiguration = Prelude.pure newValue, ..}
instance Property "StringFormatConfiguration" FormatConfigurationProperty where
  type PropertyType "StringFormatConfiguration" FormatConfigurationProperty = StringFormatConfigurationProperty
  set newValue FormatConfigurationProperty {..}
    = FormatConfigurationProperty
        {stringFormatConfiguration = Prelude.pure newValue, ..}