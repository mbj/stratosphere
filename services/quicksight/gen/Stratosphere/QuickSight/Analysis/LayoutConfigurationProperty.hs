module Stratosphere.QuickSight.Analysis.LayoutConfigurationProperty (
        module Exports, LayoutConfigurationProperty(..),
        mkLayoutConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FreeFormLayoutConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.GridLayoutConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.SectionBasedLayoutConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data LayoutConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-layoutconfiguration.html>
    LayoutConfigurationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-layoutconfiguration.html#cfn-quicksight-analysis-layoutconfiguration-freeformlayout>
                                 freeFormLayout :: (Prelude.Maybe FreeFormLayoutConfigurationProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-layoutconfiguration.html#cfn-quicksight-analysis-layoutconfiguration-gridlayout>
                                 gridLayout :: (Prelude.Maybe GridLayoutConfigurationProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-layoutconfiguration.html#cfn-quicksight-analysis-layoutconfiguration-sectionbasedlayout>
                                 sectionBasedLayout :: (Prelude.Maybe SectionBasedLayoutConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLayoutConfigurationProperty :: LayoutConfigurationProperty
mkLayoutConfigurationProperty
  = LayoutConfigurationProperty
      {haddock_workaround_ = (), freeFormLayout = Prelude.Nothing,
       gridLayout = Prelude.Nothing, sectionBasedLayout = Prelude.Nothing}
instance ToResourceProperties LayoutConfigurationProperty where
  toResourceProperties LayoutConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.LayoutConfiguration",
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