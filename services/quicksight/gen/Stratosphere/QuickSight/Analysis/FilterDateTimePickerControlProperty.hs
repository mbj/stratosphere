module Stratosphere.QuickSight.Analysis.FilterDateTimePickerControlProperty (
        module Exports, FilterDateTimePickerControlProperty(..),
        mkFilterDateTimePickerControlProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DateTimePickerControlDisplayOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilterDateTimePickerControlProperty
  = FilterDateTimePickerControlProperty {displayOptions :: (Prelude.Maybe DateTimePickerControlDisplayOptionsProperty),
                                         filterControlId :: (Value Prelude.Text),
                                         sourceFilterId :: (Value Prelude.Text),
                                         title :: (Value Prelude.Text),
                                         type' :: (Prelude.Maybe (Value Prelude.Text))}
mkFilterDateTimePickerControlProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> FilterDateTimePickerControlProperty
mkFilterDateTimePickerControlProperty
  filterControlId
  sourceFilterId
  title
  = FilterDateTimePickerControlProperty
      {filterControlId = filterControlId,
       sourceFilterId = sourceFilterId, title = title,
       displayOptions = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties FilterDateTimePickerControlProperty where
  toResourceProperties FilterDateTimePickerControlProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.FilterDateTimePickerControl",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FilterControlId" JSON..= filterControlId,
                            "SourceFilterId" JSON..= sourceFilterId, "Title" JSON..= title]
                           (Prelude.catMaybes
                              [(JSON..=) "DisplayOptions" Prelude.<$> displayOptions,
                               (JSON..=) "Type" Prelude.<$> type']))}
instance JSON.ToJSON FilterDateTimePickerControlProperty where
  toJSON FilterDateTimePickerControlProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FilterControlId" JSON..= filterControlId,
               "SourceFilterId" JSON..= sourceFilterId, "Title" JSON..= title]
              (Prelude.catMaybes
                 [(JSON..=) "DisplayOptions" Prelude.<$> displayOptions,
                  (JSON..=) "Type" Prelude.<$> type'])))
instance Property "DisplayOptions" FilterDateTimePickerControlProperty where
  type PropertyType "DisplayOptions" FilterDateTimePickerControlProperty = DateTimePickerControlDisplayOptionsProperty
  set newValue FilterDateTimePickerControlProperty {..}
    = FilterDateTimePickerControlProperty
        {displayOptions = Prelude.pure newValue, ..}
instance Property "FilterControlId" FilterDateTimePickerControlProperty where
  type PropertyType "FilterControlId" FilterDateTimePickerControlProperty = Value Prelude.Text
  set newValue FilterDateTimePickerControlProperty {..}
    = FilterDateTimePickerControlProperty
        {filterControlId = newValue, ..}
instance Property "SourceFilterId" FilterDateTimePickerControlProperty where
  type PropertyType "SourceFilterId" FilterDateTimePickerControlProperty = Value Prelude.Text
  set newValue FilterDateTimePickerControlProperty {..}
    = FilterDateTimePickerControlProperty
        {sourceFilterId = newValue, ..}
instance Property "Title" FilterDateTimePickerControlProperty where
  type PropertyType "Title" FilterDateTimePickerControlProperty = Value Prelude.Text
  set newValue FilterDateTimePickerControlProperty {..}
    = FilterDateTimePickerControlProperty {title = newValue, ..}
instance Property "Type" FilterDateTimePickerControlProperty where
  type PropertyType "Type" FilterDateTimePickerControlProperty = Value Prelude.Text
  set newValue FilterDateTimePickerControlProperty {..}
    = FilterDateTimePickerControlProperty
        {type' = Prelude.pure newValue, ..}