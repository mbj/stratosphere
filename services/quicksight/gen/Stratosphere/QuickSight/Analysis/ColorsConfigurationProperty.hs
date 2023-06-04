module Stratosphere.QuickSight.Analysis.ColorsConfigurationProperty (
        module Exports, ColorsConfigurationProperty(..),
        mkColorsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.CustomColorProperty as Exports
import Stratosphere.ResourceProperties
data ColorsConfigurationProperty
  = ColorsConfigurationProperty {customColors :: (Prelude.Maybe [CustomColorProperty])}
mkColorsConfigurationProperty :: ColorsConfigurationProperty
mkColorsConfigurationProperty
  = ColorsConfigurationProperty {customColors = Prelude.Nothing}
instance ToResourceProperties ColorsConfigurationProperty where
  toResourceProperties ColorsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.ColorsConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomColors" Prelude.<$> customColors])}
instance JSON.ToJSON ColorsConfigurationProperty where
  toJSON ColorsConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomColors" Prelude.<$> customColors]))
instance Property "CustomColors" ColorsConfigurationProperty where
  type PropertyType "CustomColors" ColorsConfigurationProperty = [CustomColorProperty]
  set newValue ColorsConfigurationProperty {}
    = ColorsConfigurationProperty
        {customColors = Prelude.pure newValue, ..}