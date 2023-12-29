module Stratosphere.QuickSight.Dashboard.FreeFormSectionLayoutConfigurationProperty (
        module Exports, FreeFormSectionLayoutConfigurationProperty(..),
        mkFreeFormSectionLayoutConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.FreeFormLayoutElementProperty as Exports
import Stratosphere.ResourceProperties
data FreeFormSectionLayoutConfigurationProperty
  = FreeFormSectionLayoutConfigurationProperty {elements :: [FreeFormLayoutElementProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFreeFormSectionLayoutConfigurationProperty ::
  [FreeFormLayoutElementProperty]
  -> FreeFormSectionLayoutConfigurationProperty
mkFreeFormSectionLayoutConfigurationProperty elements
  = FreeFormSectionLayoutConfigurationProperty {elements = elements}
instance ToResourceProperties FreeFormSectionLayoutConfigurationProperty where
  toResourceProperties
    FreeFormSectionLayoutConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.FreeFormSectionLayoutConfiguration",
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