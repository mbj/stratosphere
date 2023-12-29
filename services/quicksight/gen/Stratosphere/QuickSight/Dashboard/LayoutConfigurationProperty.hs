module Stratosphere.QuickSight.Dashboard.LayoutConfigurationProperty (
        module Exports, LayoutConfigurationProperty(..),
        mkLayoutConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.FreeFormLayoutConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.GridLayoutConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.SectionBasedLayoutConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data LayoutConfigurationProperty
  = LayoutConfigurationProperty {freeFormLayout :: (Prelude.Maybe FreeFormLayoutConfigurationProperty),
                                 gridLayout :: (Prelude.Maybe GridLayoutConfigurationProperty),
                                 sectionBasedLayout :: (Prelude.Maybe SectionBasedLayoutConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLayoutConfigurationProperty :: LayoutConfigurationProperty
mkLayoutConfigurationProperty
  = LayoutConfigurationProperty
      {freeFormLayout = Prelude.Nothing, gridLayout = Prelude.Nothing,
       sectionBasedLayout = Prelude.Nothing}
instance ToResourceProperties LayoutConfigurationProperty where
  toResourceProperties LayoutConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.LayoutConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FreeFormLayout" Prelude.<$> freeFormLayout,
                            (JSON..=) "GridLayout" Prelude.<$> gridLayout,
                            (JSON..=) "SectionBasedLayout" Prelude.<$> sectionBasedLayout])}
instance JSON.ToJSON LayoutConfigurationProperty where
  toJSON LayoutConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FreeFormLayout" Prelude.<$> freeFormLayout,
               (JSON..=) "GridLayout" Prelude.<$> gridLayout,
               (JSON..=) "SectionBasedLayout" Prelude.<$> sectionBasedLayout]))
instance Property "FreeFormLayout" LayoutConfigurationProperty where
  type PropertyType "FreeFormLayout" LayoutConfigurationProperty = FreeFormLayoutConfigurationProperty
  set newValue LayoutConfigurationProperty {..}
    = LayoutConfigurationProperty
        {freeFormLayout = Prelude.pure newValue, ..}
instance Property "GridLayout" LayoutConfigurationProperty where
  type PropertyType "GridLayout" LayoutConfigurationProperty = GridLayoutConfigurationProperty
  set newValue LayoutConfigurationProperty {..}
    = LayoutConfigurationProperty
        {gridLayout = Prelude.pure newValue, ..}
instance Property "SectionBasedLayout" LayoutConfigurationProperty where
  type PropertyType "SectionBasedLayout" LayoutConfigurationProperty = SectionBasedLayoutConfigurationProperty
  set newValue LayoutConfigurationProperty {..}
    = LayoutConfigurationProperty
        {sectionBasedLayout = Prelude.pure newValue, ..}