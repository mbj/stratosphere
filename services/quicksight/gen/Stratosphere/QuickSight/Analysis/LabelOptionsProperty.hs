module Stratosphere.QuickSight.Analysis.LabelOptionsProperty (
        module Exports, LabelOptionsProperty(..), mkLabelOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FontConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LabelOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-labeloptions.html>
    LabelOptionsProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-labeloptions.html#cfn-quicksight-analysis-labeloptions-customlabel>
                          customLabel :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-labeloptions.html#cfn-quicksight-analysis-labeloptions-fontconfiguration>
                          fontConfiguration :: (Prelude.Maybe FontConfigurationProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-labeloptions.html#cfn-quicksight-analysis-labeloptions-visibility>
                          visibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLabelOptionsProperty :: LabelOptionsProperty
mkLabelOptionsProperty
  = LabelOptionsProperty
      {haddock_workaround_ = (), customLabel = Prelude.Nothing,
       fontConfiguration = Prelude.Nothing, visibility = Prelude.Nothing}
instance ToResourceProperties LabelOptionsProperty where
  toResourceProperties LabelOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.LabelOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomLabel" Prelude.<$> customLabel,
                            (JSON..=) "FontConfiguration" Prelude.<$> fontConfiguration,
                            (JSON..=) "Visibility" Prelude.<$> visibility])}
instance JSON.ToJSON LabelOptionsProperty where
  toJSON LabelOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomLabel" Prelude.<$> customLabel,
               (JSON..=) "FontConfiguration" Prelude.<$> fontConfiguration,
               (JSON..=) "Visibility" Prelude.<$> visibility]))
instance Property "CustomLabel" LabelOptionsProperty where
  type PropertyType "CustomLabel" LabelOptionsProperty = Value Prelude.Text
  set newValue LabelOptionsProperty {..}
    = LabelOptionsProperty {customLabel = Prelude.pure newValue, ..}
instance Property "FontConfiguration" LabelOptionsProperty where
  type PropertyType "FontConfiguration" LabelOptionsProperty = FontConfigurationProperty
  set newValue LabelOptionsProperty {..}
    = LabelOptionsProperty
        {fontConfiguration = Prelude.pure newValue, ..}
instance Property "Visibility" LabelOptionsProperty where
  type PropertyType "Visibility" LabelOptionsProperty = Value Prelude.Text
  set newValue LabelOptionsProperty {..}
    = LabelOptionsProperty {visibility = Prelude.pure newValue, ..}