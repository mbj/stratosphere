module Stratosphere.QuickSight.Template.FilterScopeConfigurationProperty (
        module Exports, FilterScopeConfigurationProperty(..),
        mkFilterScopeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.SelectedSheetsFilterScopeConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data FilterScopeConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filterscopeconfiguration.html>
    FilterScopeConfigurationProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filterscopeconfiguration.html#cfn-quicksight-template-filterscopeconfiguration-allsheets>
                                      allSheets :: (Prelude.Maybe JSON.Object),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filterscopeconfiguration.html#cfn-quicksight-template-filterscopeconfiguration-selectedsheets>
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
        {awsType = "AWS::QuickSight::Template.FilterScopeConfiguration",
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