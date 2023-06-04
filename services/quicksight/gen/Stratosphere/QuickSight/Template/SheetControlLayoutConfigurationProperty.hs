module Stratosphere.QuickSight.Template.SheetControlLayoutConfigurationProperty (
        module Exports, SheetControlLayoutConfigurationProperty(..),
        mkSheetControlLayoutConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.GridLayoutConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data SheetControlLayoutConfigurationProperty
  = SheetControlLayoutConfigurationProperty {gridLayout :: (Prelude.Maybe GridLayoutConfigurationProperty)}
mkSheetControlLayoutConfigurationProperty ::
  SheetControlLayoutConfigurationProperty
mkSheetControlLayoutConfigurationProperty
  = SheetControlLayoutConfigurationProperty
      {gridLayout = Prelude.Nothing}
instance ToResourceProperties SheetControlLayoutConfigurationProperty where
  toResourceProperties SheetControlLayoutConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.SheetControlLayoutConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "GridLayout" Prelude.<$> gridLayout])}
instance JSON.ToJSON SheetControlLayoutConfigurationProperty where
  toJSON SheetControlLayoutConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "GridLayout" Prelude.<$> gridLayout]))
instance Property "GridLayout" SheetControlLayoutConfigurationProperty where
  type PropertyType "GridLayout" SheetControlLayoutConfigurationProperty = GridLayoutConfigurationProperty
  set newValue SheetControlLayoutConfigurationProperty {}
    = SheetControlLayoutConfigurationProperty
        {gridLayout = Prelude.pure newValue, ..}