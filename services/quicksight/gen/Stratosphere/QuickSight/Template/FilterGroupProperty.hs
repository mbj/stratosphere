module Stratosphere.QuickSight.Template.FilterGroupProperty (
        module Exports, FilterGroupProperty(..), mkFilterGroupProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.FilterProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.FilterScopeConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilterGroupProperty
  = FilterGroupProperty {crossDataset :: (Value Prelude.Text),
                         filterGroupId :: (Value Prelude.Text),
                         filters :: [FilterProperty],
                         scopeConfiguration :: FilterScopeConfigurationProperty,
                         status :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilterGroupProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> [FilterProperty]
        -> FilterScopeConfigurationProperty -> FilterGroupProperty
mkFilterGroupProperty
  crossDataset
  filterGroupId
  filters
  scopeConfiguration
  = FilterGroupProperty
      {crossDataset = crossDataset, filterGroupId = filterGroupId,
       filters = filters, scopeConfiguration = scopeConfiguration,
       status = Prelude.Nothing}
instance ToResourceProperties FilterGroupProperty where
  toResourceProperties FilterGroupProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.FilterGroup",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CrossDataset" JSON..= crossDataset,
                            "FilterGroupId" JSON..= filterGroupId, "Filters" JSON..= filters,
                            "ScopeConfiguration" JSON..= scopeConfiguration]
                           (Prelude.catMaybes [(JSON..=) "Status" Prelude.<$> status]))}
instance JSON.ToJSON FilterGroupProperty where
  toJSON FilterGroupProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CrossDataset" JSON..= crossDataset,
               "FilterGroupId" JSON..= filterGroupId, "Filters" JSON..= filters,
               "ScopeConfiguration" JSON..= scopeConfiguration]
              (Prelude.catMaybes [(JSON..=) "Status" Prelude.<$> status])))
instance Property "CrossDataset" FilterGroupProperty where
  type PropertyType "CrossDataset" FilterGroupProperty = Value Prelude.Text
  set newValue FilterGroupProperty {..}
    = FilterGroupProperty {crossDataset = newValue, ..}
instance Property "FilterGroupId" FilterGroupProperty where
  type PropertyType "FilterGroupId" FilterGroupProperty = Value Prelude.Text
  set newValue FilterGroupProperty {..}
    = FilterGroupProperty {filterGroupId = newValue, ..}
instance Property "Filters" FilterGroupProperty where
  type PropertyType "Filters" FilterGroupProperty = [FilterProperty]
  set newValue FilterGroupProperty {..}
    = FilterGroupProperty {filters = newValue, ..}
instance Property "ScopeConfiguration" FilterGroupProperty where
  type PropertyType "ScopeConfiguration" FilterGroupProperty = FilterScopeConfigurationProperty
  set newValue FilterGroupProperty {..}
    = FilterGroupProperty {scopeConfiguration = newValue, ..}
instance Property "Status" FilterGroupProperty where
  type PropertyType "Status" FilterGroupProperty = Value Prelude.Text
  set newValue FilterGroupProperty {..}
    = FilterGroupProperty {status = Prelude.pure newValue, ..}