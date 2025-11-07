module Stratosphere.QuickSight.Template.FilterOperationTargetVisualsConfigurationProperty (
        module Exports,
        FilterOperationTargetVisualsConfigurationProperty(..),
        mkFilterOperationTargetVisualsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.SameSheetTargetVisualConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data FilterOperationTargetVisualsConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filteroperationtargetvisualsconfiguration.html>
    FilterOperationTargetVisualsConfigurationProperty {haddock_workaround_ :: (),
                                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filteroperationtargetvisualsconfiguration.html#cfn-quicksight-template-filteroperationtargetvisualsconfiguration-samesheettargetvisualconfiguration>
                                                       sameSheetTargetVisualConfiguration :: (Prelude.Maybe SameSheetTargetVisualConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilterOperationTargetVisualsConfigurationProperty ::
  FilterOperationTargetVisualsConfigurationProperty
mkFilterOperationTargetVisualsConfigurationProperty
  = FilterOperationTargetVisualsConfigurationProperty
      {haddock_workaround_ = (),
       sameSheetTargetVisualConfiguration = Prelude.Nothing}
instance ToResourceProperties FilterOperationTargetVisualsConfigurationProperty where
  toResourceProperties
    FilterOperationTargetVisualsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.FilterOperationTargetVisualsConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SameSheetTargetVisualConfiguration"
                              Prelude.<$> sameSheetTargetVisualConfiguration])}
instance JSON.ToJSON FilterOperationTargetVisualsConfigurationProperty where
  toJSON FilterOperationTargetVisualsConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SameSheetTargetVisualConfiguration"
                 Prelude.<$> sameSheetTargetVisualConfiguration]))
instance Property "SameSheetTargetVisualConfiguration" FilterOperationTargetVisualsConfigurationProperty where
  type PropertyType "SameSheetTargetVisualConfiguration" FilterOperationTargetVisualsConfigurationProperty = SameSheetTargetVisualConfigurationProperty
  set newValue FilterOperationTargetVisualsConfigurationProperty {..}
    = FilterOperationTargetVisualsConfigurationProperty
        {sameSheetTargetVisualConfiguration = Prelude.pure newValue, ..}