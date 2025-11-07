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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-sectionlayoutconfiguration.html>
    SectionLayoutConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-sectionlayoutconfiguration.html#cfn-quicksight-dashboard-sectionlayoutconfiguration-freeformlayout>
                                        freeFormLayout :: FreeFormSectionLayoutConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSectionLayoutConfigurationProperty ::
  FreeFormSectionLayoutConfigurationProperty
  -> SectionLayoutConfigurationProperty
mkSectionLayoutConfigurationProperty freeFormLayout
  = SectionLayoutConfigurationProperty
      {haddock_workaround_ = (), freeFormLayout = freeFormLayout}
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
  set newValue SectionLayoutConfigurationProperty {..}
    = SectionLayoutConfigurationProperty
        {freeFormLayout = newValue, ..}