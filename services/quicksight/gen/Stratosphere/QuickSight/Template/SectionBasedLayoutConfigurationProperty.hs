module Stratosphere.QuickSight.Template.SectionBasedLayoutConfigurationProperty (
        module Exports, SectionBasedLayoutConfigurationProperty(..),
        mkSectionBasedLayoutConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.BodySectionConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.HeaderFooterSectionConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.SectionBasedLayoutCanvasSizeOptionsProperty as Exports
import Stratosphere.ResourceProperties
data SectionBasedLayoutConfigurationProperty
  = SectionBasedLayoutConfigurationProperty {bodySections :: [BodySectionConfigurationProperty],
                                             canvasSizeOptions :: SectionBasedLayoutCanvasSizeOptionsProperty,
                                             footerSections :: [HeaderFooterSectionConfigurationProperty],
                                             headerSections :: [HeaderFooterSectionConfigurationProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSectionBasedLayoutConfigurationProperty ::
  [BodySectionConfigurationProperty]
  -> SectionBasedLayoutCanvasSizeOptionsProperty
     -> [HeaderFooterSectionConfigurationProperty]
        -> [HeaderFooterSectionConfigurationProperty]
           -> SectionBasedLayoutConfigurationProperty
mkSectionBasedLayoutConfigurationProperty
  bodySections
  canvasSizeOptions
  footerSections
  headerSections
  = SectionBasedLayoutConfigurationProperty
      {bodySections = bodySections,
       canvasSizeOptions = canvasSizeOptions,
       footerSections = footerSections, headerSections = headerSections}
instance ToResourceProperties SectionBasedLayoutConfigurationProperty where
  toResourceProperties SectionBasedLayoutConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.SectionBasedLayoutConfiguration",
         supportsTags = Prelude.False,
         properties = ["BodySections" JSON..= bodySections,
                       "CanvasSizeOptions" JSON..= canvasSizeOptions,
                       "FooterSections" JSON..= footerSections,
                       "HeaderSections" JSON..= headerSections]}
instance JSON.ToJSON SectionBasedLayoutConfigurationProperty where
  toJSON SectionBasedLayoutConfigurationProperty {..}
    = JSON.object
        ["BodySections" JSON..= bodySections,
         "CanvasSizeOptions" JSON..= canvasSizeOptions,
         "FooterSections" JSON..= footerSections,
         "HeaderSections" JSON..= headerSections]
instance Property "BodySections" SectionBasedLayoutConfigurationProperty where
  type PropertyType "BodySections" SectionBasedLayoutConfigurationProperty = [BodySectionConfigurationProperty]
  set newValue SectionBasedLayoutConfigurationProperty {..}
    = SectionBasedLayoutConfigurationProperty
        {bodySections = newValue, ..}
instance Property "CanvasSizeOptions" SectionBasedLayoutConfigurationProperty where
  type PropertyType "CanvasSizeOptions" SectionBasedLayoutConfigurationProperty = SectionBasedLayoutCanvasSizeOptionsProperty
  set newValue SectionBasedLayoutConfigurationProperty {..}
    = SectionBasedLayoutConfigurationProperty
        {canvasSizeOptions = newValue, ..}
instance Property "FooterSections" SectionBasedLayoutConfigurationProperty where
  type PropertyType "FooterSections" SectionBasedLayoutConfigurationProperty = [HeaderFooterSectionConfigurationProperty]
  set newValue SectionBasedLayoutConfigurationProperty {..}
    = SectionBasedLayoutConfigurationProperty
        {footerSections = newValue, ..}
instance Property "HeaderSections" SectionBasedLayoutConfigurationProperty where
  type PropertyType "HeaderSections" SectionBasedLayoutConfigurationProperty = [HeaderFooterSectionConfigurationProperty]
  set newValue SectionBasedLayoutConfigurationProperty {..}
    = SectionBasedLayoutConfigurationProperty
        {headerSections = newValue, ..}