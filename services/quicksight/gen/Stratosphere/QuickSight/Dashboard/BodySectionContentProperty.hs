module Stratosphere.QuickSight.Dashboard.BodySectionContentProperty (
        module Exports, BodySectionContentProperty(..),
        mkBodySectionContentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.SectionLayoutConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data BodySectionContentProperty
  = BodySectionContentProperty {layout :: (Prelude.Maybe SectionLayoutConfigurationProperty)}
mkBodySectionContentProperty :: BodySectionContentProperty
mkBodySectionContentProperty
  = BodySectionContentProperty {layout = Prelude.Nothing}
instance ToResourceProperties BodySectionContentProperty where
  toResourceProperties BodySectionContentProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.BodySectionContent",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Layout" Prelude.<$> layout])}
instance JSON.ToJSON BodySectionContentProperty where
  toJSON BodySectionContentProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Layout" Prelude.<$> layout]))
instance Property "Layout" BodySectionContentProperty where
  type PropertyType "Layout" BodySectionContentProperty = SectionLayoutConfigurationProperty
  set newValue BodySectionContentProperty {}
    = BodySectionContentProperty {layout = Prelude.pure newValue, ..}