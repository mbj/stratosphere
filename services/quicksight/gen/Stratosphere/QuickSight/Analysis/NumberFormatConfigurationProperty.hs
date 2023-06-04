module Stratosphere.QuickSight.Analysis.NumberFormatConfigurationProperty (
        module Exports, NumberFormatConfigurationProperty(..),
        mkNumberFormatConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.NumericFormatConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data NumberFormatConfigurationProperty
  = NumberFormatConfigurationProperty {formatConfiguration :: (Prelude.Maybe NumericFormatConfigurationProperty)}
mkNumberFormatConfigurationProperty ::
  NumberFormatConfigurationProperty
mkNumberFormatConfigurationProperty
  = NumberFormatConfigurationProperty
      {formatConfiguration = Prelude.Nothing}
instance ToResourceProperties NumberFormatConfigurationProperty where
  toResourceProperties NumberFormatConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.NumberFormatConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FormatConfiguration" Prelude.<$> formatConfiguration])}
instance JSON.ToJSON NumberFormatConfigurationProperty where
  toJSON NumberFormatConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FormatConfiguration" Prelude.<$> formatConfiguration]))
instance Property "FormatConfiguration" NumberFormatConfigurationProperty where
  type PropertyType "FormatConfiguration" NumberFormatConfigurationProperty = NumericFormatConfigurationProperty
  set newValue NumberFormatConfigurationProperty {}
    = NumberFormatConfigurationProperty
        {formatConfiguration = Prelude.pure newValue, ..}