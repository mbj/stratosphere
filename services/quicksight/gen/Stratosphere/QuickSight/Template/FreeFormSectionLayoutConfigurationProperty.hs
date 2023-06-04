module Stratosphere.QuickSight.Template.FreeFormSectionLayoutConfigurationProperty (
        module Exports, FreeFormSectionLayoutConfigurationProperty(..),
        mkFreeFormSectionLayoutConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.FreeFormLayoutElementProperty as Exports
import Stratosphere.ResourceProperties
data FreeFormSectionLayoutConfigurationProperty
  = FreeFormSectionLayoutConfigurationProperty {elements :: [FreeFormLayoutElementProperty]}
mkFreeFormSectionLayoutConfigurationProperty ::
  [FreeFormLayoutElementProperty]
  -> FreeFormSectionLayoutConfigurationProperty
mkFreeFormSectionLayoutConfigurationProperty elements
  = FreeFormSectionLayoutConfigurationProperty {elements = elements}
instance ToResourceProperties FreeFormSectionLayoutConfigurationProperty where
  toResourceProperties
    FreeFormSectionLayoutConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.FreeFormSectionLayoutConfiguration",
         supportsTags = Prelude.False,
         properties = ["Elements" JSON..= elements]}
instance JSON.ToJSON FreeFormSectionLayoutConfigurationProperty where
  toJSON FreeFormSectionLayoutConfigurationProperty {..}
    = JSON.object ["Elements" JSON..= elements]
instance Property "Elements" FreeFormSectionLayoutConfigurationProperty where
  type PropertyType "Elements" FreeFormSectionLayoutConfigurationProperty = [FreeFormLayoutElementProperty]
  set newValue FreeFormSectionLayoutConfigurationProperty {}
    = FreeFormSectionLayoutConfigurationProperty
        {elements = newValue, ..}