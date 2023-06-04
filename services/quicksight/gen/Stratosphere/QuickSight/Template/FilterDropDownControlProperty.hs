module Stratosphere.QuickSight.Template.FilterDropDownControlProperty (
        module Exports, FilterDropDownControlProperty(..),
        mkFilterDropDownControlProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.CascadingControlConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DropDownControlDisplayOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.FilterSelectableValuesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilterDropDownControlProperty
  = FilterDropDownControlProperty {cascadingControlConfiguration :: (Prelude.Maybe CascadingControlConfigurationProperty),
                                   displayOptions :: (Prelude.Maybe DropDownControlDisplayOptionsProperty),
                                   filterControlId :: (Value Prelude.Text),
                                   selectableValues :: (Prelude.Maybe FilterSelectableValuesProperty),
                                   sourceFilterId :: (Value Prelude.Text),
                                   title :: (Value Prelude.Text),
                                   type' :: (Prelude.Maybe (Value Prelude.Text))}
mkFilterDropDownControlProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> FilterDropDownControlProperty
mkFilterDropDownControlProperty
  filterControlId
  sourceFilterId
  title
  = FilterDropDownControlProperty
      {filterControlId = filterControlId,
       sourceFilterId = sourceFilterId, title = title,
       cascadingControlConfiguration = Prelude.Nothing,
       displayOptions = Prelude.Nothing,
       selectableValues = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties FilterDropDownControlProperty where
  toResourceProperties FilterDropDownControlProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.FilterDropDownControl",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FilterControlId" JSON..= filterControlId,
                            "SourceFilterId" JSON..= sourceFilterId, "Title" JSON..= title]
                           (Prelude.catMaybes
                              [(JSON..=) "CascadingControlConfiguration"
                                 Prelude.<$> cascadingControlConfiguration,
                               (JSON..=) "DisplayOptions" Prelude.<$> displayOptions,
                               (JSON..=) "SelectableValues" Prelude.<$> selectableValues,
                               (JSON..=) "Type" Prelude.<$> type']))}
instance JSON.ToJSON FilterDropDownControlProperty where
  toJSON FilterDropDownControlProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FilterControlId" JSON..= filterControlId,
               "SourceFilterId" JSON..= sourceFilterId, "Title" JSON..= title]
              (Prelude.catMaybes
                 [(JSON..=) "CascadingControlConfiguration"
                    Prelude.<$> cascadingControlConfiguration,
                  (JSON..=) "DisplayOptions" Prelude.<$> displayOptions,
                  (JSON..=) "SelectableValues" Prelude.<$> selectableValues,
                  (JSON..=) "Type" Prelude.<$> type'])))
instance Property "CascadingControlConfiguration" FilterDropDownControlProperty where
  type PropertyType "CascadingControlConfiguration" FilterDropDownControlProperty = CascadingControlConfigurationProperty
  set newValue FilterDropDownControlProperty {..}
    = FilterDropDownControlProperty
        {cascadingControlConfiguration = Prelude.pure newValue, ..}
instance Property "DisplayOptions" FilterDropDownControlProperty where
  type PropertyType "DisplayOptions" FilterDropDownControlProperty = DropDownControlDisplayOptionsProperty
  set newValue FilterDropDownControlProperty {..}
    = FilterDropDownControlProperty
        {displayOptions = Prelude.pure newValue, ..}
instance Property "FilterControlId" FilterDropDownControlProperty where
  type PropertyType "FilterControlId" FilterDropDownControlProperty = Value Prelude.Text
  set newValue FilterDropDownControlProperty {..}
    = FilterDropDownControlProperty {filterControlId = newValue, ..}
instance Property "SelectableValues" FilterDropDownControlProperty where
  type PropertyType "SelectableValues" FilterDropDownControlProperty = FilterSelectableValuesProperty
  set newValue FilterDropDownControlProperty {..}
    = FilterDropDownControlProperty
        {selectableValues = Prelude.pure newValue, ..}
instance Property "SourceFilterId" FilterDropDownControlProperty where
  type PropertyType "SourceFilterId" FilterDropDownControlProperty = Value Prelude.Text
  set newValue FilterDropDownControlProperty {..}
    = FilterDropDownControlProperty {sourceFilterId = newValue, ..}
instance Property "Title" FilterDropDownControlProperty where
  type PropertyType "Title" FilterDropDownControlProperty = Value Prelude.Text
  set newValue FilterDropDownControlProperty {..}
    = FilterDropDownControlProperty {title = newValue, ..}
instance Property "Type" FilterDropDownControlProperty where
  type PropertyType "Type" FilterDropDownControlProperty = Value Prelude.Text
  set newValue FilterDropDownControlProperty {..}
    = FilterDropDownControlProperty {type' = Prelude.pure newValue, ..}