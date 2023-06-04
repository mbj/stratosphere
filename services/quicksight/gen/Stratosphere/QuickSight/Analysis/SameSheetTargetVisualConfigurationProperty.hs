module Stratosphere.QuickSight.Analysis.SameSheetTargetVisualConfigurationProperty (
        SameSheetTargetVisualConfigurationProperty(..),
        mkSameSheetTargetVisualConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SameSheetTargetVisualConfigurationProperty
  = SameSheetTargetVisualConfigurationProperty {targetVisualOptions :: (Prelude.Maybe (Value Prelude.Text)),
                                                targetVisuals :: (Prelude.Maybe (ValueList Prelude.Text))}
mkSameSheetTargetVisualConfigurationProperty ::
  SameSheetTargetVisualConfigurationProperty
mkSameSheetTargetVisualConfigurationProperty
  = SameSheetTargetVisualConfigurationProperty
      {targetVisualOptions = Prelude.Nothing,
       targetVisuals = Prelude.Nothing}
instance ToResourceProperties SameSheetTargetVisualConfigurationProperty where
  toResourceProperties
    SameSheetTargetVisualConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.SameSheetTargetVisualConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TargetVisualOptions" Prelude.<$> targetVisualOptions,
                            (JSON..=) "TargetVisuals" Prelude.<$> targetVisuals])}
instance JSON.ToJSON SameSheetTargetVisualConfigurationProperty where
  toJSON SameSheetTargetVisualConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TargetVisualOptions" Prelude.<$> targetVisualOptions,
               (JSON..=) "TargetVisuals" Prelude.<$> targetVisuals]))
instance Property "TargetVisualOptions" SameSheetTargetVisualConfigurationProperty where
  type PropertyType "TargetVisualOptions" SameSheetTargetVisualConfigurationProperty = Value Prelude.Text
  set newValue SameSheetTargetVisualConfigurationProperty {..}
    = SameSheetTargetVisualConfigurationProperty
        {targetVisualOptions = Prelude.pure newValue, ..}
instance Property "TargetVisuals" SameSheetTargetVisualConfigurationProperty where
  type PropertyType "TargetVisuals" SameSheetTargetVisualConfigurationProperty = ValueList Prelude.Text
  set newValue SameSheetTargetVisualConfigurationProperty {..}
    = SameSheetTargetVisualConfigurationProperty
        {targetVisuals = Prelude.pure newValue, ..}