module Stratosphere.QuickSight.Analysis.FilterScopeConfigurationProperty (
        module Exports, FilterScopeConfigurationProperty(..),
        mkFilterScopeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.SelectedSheetsFilterScopeConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data FilterScopeConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filterscopeconfiguration.html>
    FilterScopeConfigurationProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filterscopeconfiguration.html#cfn-quicksight-analysis-filterscopeconfiguration-allsheets>
                                      allSheets :: (Prelude.Maybe JSON.Object),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filterscopeconfiguration.html#cfn-quicksight-analysis-filterscopeconfiguration-selectedsheets>
                                      selectedSheets :: (Prelude.Maybe SelectedSheetsFilterScopeConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilterScopeConfigurationProperty ::
  FilterScopeConfigurationProperty
mkFilterScopeConfigurationProperty
  = FilterScopeConfigurationProperty
      {haddock_workaround_ = (), allSheets = Prelude.Nothing,
       selectedSheets = Prelude.Nothing}
instance ToResourceProperties FilterScopeConfigurationProperty where
  toResourceProperties FilterScopeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.FilterScopeConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllSheets" Prelude.<$> allSheets,
                            (JSON..=) "SelectedSheets" Prelude.<$> selectedSheets])}
instance JSON.ToJSON FilterScopeConfigurationProperty where
  toJSON FilterScopeConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AllSheets" Prelude.<$> allSheets,
               (JSON..=) "SelectedSheets" Prelude.<$> selectedSheets]))
instance Property "AllSheets" FilterScopeConfigurationProperty where
  type PropertyType "AllSheets" FilterScopeConfigurationProperty = JSON.Object
  set newValue FilterScopeConfigurationProperty {..}
    = FilterScopeConfigurationProperty
        {allSheets = Prelude.pure newValue, ..}
instance Property "SelectedSheets" FilterScopeConfigurationProperty where
  type PropertyType "SelectedSheets" FilterScopeConfigurationProperty = SelectedSheetsFilterScopeConfigurationProperty
  set newValue FilterScopeConfigurationProperty {..}
    = FilterScopeConfigurationProperty
        {selectedSheets = Prelude.pure newValue, ..}