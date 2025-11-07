module Stratosphere.QuickSight.Analysis.SelectedSheetsFilterScopeConfigurationProperty (
        module Exports, SelectedSheetsFilterScopeConfigurationProperty(..),
        mkSelectedSheetsFilterScopeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.SheetVisualScopingConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data SelectedSheetsFilterScopeConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-selectedsheetsfilterscopeconfiguration.html>
    SelectedSheetsFilterScopeConfigurationProperty {haddock_workaround_ :: (),
                                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-selectedsheetsfilterscopeconfiguration.html#cfn-quicksight-analysis-selectedsheetsfilterscopeconfiguration-sheetvisualscopingconfigurations>
                                                    sheetVisualScopingConfigurations :: (Prelude.Maybe [SheetVisualScopingConfigurationProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSelectedSheetsFilterScopeConfigurationProperty ::
  SelectedSheetsFilterScopeConfigurationProperty
mkSelectedSheetsFilterScopeConfigurationProperty
  = SelectedSheetsFilterScopeConfigurationProperty
      {haddock_workaround_ = (),
       sheetVisualScopingConfigurations = Prelude.Nothing}
instance ToResourceProperties SelectedSheetsFilterScopeConfigurationProperty where
  toResourceProperties
    SelectedSheetsFilterScopeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.SelectedSheetsFilterScopeConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SheetVisualScopingConfigurations"
                              Prelude.<$> sheetVisualScopingConfigurations])}
instance JSON.ToJSON SelectedSheetsFilterScopeConfigurationProperty where
  toJSON SelectedSheetsFilterScopeConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SheetVisualScopingConfigurations"
                 Prelude.<$> sheetVisualScopingConfigurations]))
instance Property "SheetVisualScopingConfigurations" SelectedSheetsFilterScopeConfigurationProperty where
  type PropertyType "SheetVisualScopingConfigurations" SelectedSheetsFilterScopeConfigurationProperty = [SheetVisualScopingConfigurationProperty]
  set newValue SelectedSheetsFilterScopeConfigurationProperty {..}
    = SelectedSheetsFilterScopeConfigurationProperty
        {sheetVisualScopingConfigurations = Prelude.pure newValue, ..}