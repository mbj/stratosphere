module Stratosphere.QuickSight.Analysis.HeaderFooterSectionConfigurationProperty (
        module Exports, HeaderFooterSectionConfigurationProperty(..),
        mkHeaderFooterSectionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.SectionLayoutConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.SectionStyleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HeaderFooterSectionConfigurationProperty
  = HeaderFooterSectionConfigurationProperty {layout :: SectionLayoutConfigurationProperty,
                                              sectionId :: (Value Prelude.Text),
                                              style :: (Prelude.Maybe SectionStyleProperty)}
mkHeaderFooterSectionConfigurationProperty ::
  SectionLayoutConfigurationProperty
  -> Value Prelude.Text -> HeaderFooterSectionConfigurationProperty
mkHeaderFooterSectionConfigurationProperty layout sectionId
  = HeaderFooterSectionConfigurationProperty
      {layout = layout, sectionId = sectionId, style = Prelude.Nothing}
instance ToResourceProperties HeaderFooterSectionConfigurationProperty where
  toResourceProperties HeaderFooterSectionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.HeaderFooterSectionConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Layout" JSON..= layout, "SectionId" JSON..= sectionId]
                           (Prelude.catMaybes [(JSON..=) "Style" Prelude.<$> style]))}
instance JSON.ToJSON HeaderFooterSectionConfigurationProperty where
  toJSON HeaderFooterSectionConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Layout" JSON..= layout, "SectionId" JSON..= sectionId]
              (Prelude.catMaybes [(JSON..=) "Style" Prelude.<$> style])))
instance Property "Layout" HeaderFooterSectionConfigurationProperty where
  type PropertyType "Layout" HeaderFooterSectionConfigurationProperty = SectionLayoutConfigurationProperty
  set newValue HeaderFooterSectionConfigurationProperty {..}
    = HeaderFooterSectionConfigurationProperty {layout = newValue, ..}
instance Property "SectionId" HeaderFooterSectionConfigurationProperty where
  type PropertyType "SectionId" HeaderFooterSectionConfigurationProperty = Value Prelude.Text
  set newValue HeaderFooterSectionConfigurationProperty {..}
    = HeaderFooterSectionConfigurationProperty
        {sectionId = newValue, ..}
instance Property "Style" HeaderFooterSectionConfigurationProperty where
  type PropertyType "Style" HeaderFooterSectionConfigurationProperty = SectionStyleProperty
  set newValue HeaderFooterSectionConfigurationProperty {..}
    = HeaderFooterSectionConfigurationProperty
        {style = Prelude.pure newValue, ..}