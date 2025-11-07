module Stratosphere.QuickSight.Template.AnalysisDefaultsProperty (
        module Exports, AnalysisDefaultsProperty(..),
        mkAnalysisDefaultsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DefaultNewSheetConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data AnalysisDefaultsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-analysisdefaults.html>
    AnalysisDefaultsProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-analysisdefaults.html#cfn-quicksight-template-analysisdefaults-defaultnewsheetconfiguration>
                              defaultNewSheetConfiguration :: DefaultNewSheetConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnalysisDefaultsProperty ::
  DefaultNewSheetConfigurationProperty -> AnalysisDefaultsProperty
mkAnalysisDefaultsProperty defaultNewSheetConfiguration
  = AnalysisDefaultsProperty
      {haddock_workaround_ = (),
       defaultNewSheetConfiguration = defaultNewSheetConfiguration}
instance ToResourceProperties AnalysisDefaultsProperty where
  toResourceProperties AnalysisDefaultsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.AnalysisDefaults",
         supportsTags = Prelude.False,
         properties = ["DefaultNewSheetConfiguration"
                         JSON..= defaultNewSheetConfiguration]}
instance JSON.ToJSON AnalysisDefaultsProperty where
  toJSON AnalysisDefaultsProperty {..}
    = JSON.object
        ["DefaultNewSheetConfiguration"
           JSON..= defaultNewSheetConfiguration]
instance Property "DefaultNewSheetConfiguration" AnalysisDefaultsProperty where
  type PropertyType "DefaultNewSheetConfiguration" AnalysisDefaultsProperty = DefaultNewSheetConfigurationProperty
  set newValue AnalysisDefaultsProperty {..}
    = AnalysisDefaultsProperty
        {defaultNewSheetConfiguration = newValue, ..}