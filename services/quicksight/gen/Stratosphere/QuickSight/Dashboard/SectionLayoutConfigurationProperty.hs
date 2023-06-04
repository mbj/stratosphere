module Stratosphere.QuickSight.Dashboard.SectionLayoutConfigurationProperty (
        module Exports, SectionLayoutConfigurationProperty(..),
        mkSectionLayoutConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.FreeFormSectionLayoutConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data SectionLayoutConfigurationProperty
  = SectionLayoutConfigurationProperty {freeFormLayout :: FreeFormSectionLayoutConfigurationProperty}
mkSectionLayoutConfigurationProperty ::
  FreeFormSectionLayoutConfigurationProperty
  -> SectionLayoutConfigurationProperty
mkSectionLayoutConfigurationProperty freeFormLayout
  = SectionLayoutConfigurationProperty
      {freeFormLayout = freeFormLayout}
instance ToResourceProperties SectionLayoutConfigurationProperty where
  toResourceProperties SectionLayoutConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.SectionLayoutConfiguration",
         supportsTags = Prelude.False,
         properties = ["FreeFormLayout" JSON..= freeFormLayout]}
instance JSON.ToJSON SectionLayoutConfigurationProperty where
  toJSON SectionLayoutConfigurationProperty {..}
    = JSON.object ["FreeFormLayout" JSON..= freeFormLayout]
instance Property "FreeFormLayout" SectionLayoutConfigurationProperty where
  type PropertyType "FreeFormLayout" SectionLayoutConfigurationProperty = FreeFormSectionLayoutConfigurationProperty
  set newValue SectionLayoutConfigurationProperty {}
    = SectionLayoutConfigurationProperty
        {freeFormLayout = newValue, ..}