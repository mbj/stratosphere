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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-freeformsectionlayoutconfiguration.html>
    FreeFormSectionLayoutConfigurationProperty {haddock_workaround_ :: (),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-freeformsectionlayoutconfiguration.html#cfn-quicksight-template-freeformsectionlayoutconfiguration-elements>
                                                elements :: [FreeFormLayoutElementProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFreeFormSectionLayoutConfigurationProperty ::
  [FreeFormLayoutElementProperty]
  -> FreeFormSectionLayoutConfigurationProperty
mkFreeFormSectionLayoutConfigurationProperty elements
  = FreeFormSectionLayoutConfigurationProperty
      {haddock_workaround_ = (), elements = elements}
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
  set newValue FreeFormSectionLayoutConfigurationProperty {..}
    = FreeFormSectionLayoutConfigurationProperty
        {elements = newValue, ..}