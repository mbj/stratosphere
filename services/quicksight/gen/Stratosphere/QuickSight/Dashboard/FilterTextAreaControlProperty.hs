module Stratosphere.QuickSight.Dashboard.FilterTextAreaControlProperty (
        module Exports, FilterTextAreaControlProperty(..),
        mkFilterTextAreaControlProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.TextAreaControlDisplayOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilterTextAreaControlProperty
  = FilterTextAreaControlProperty {delimiter :: (Prelude.Maybe (Value Prelude.Text)),
                                   displayOptions :: (Prelude.Maybe TextAreaControlDisplayOptionsProperty),
                                   filterControlId :: (Value Prelude.Text),
                                   sourceFilterId :: (Value Prelude.Text),
                                   title :: (Value Prelude.Text)}
mkFilterTextAreaControlProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> FilterTextAreaControlProperty
mkFilterTextAreaControlProperty
  filterControlId
  sourceFilterId
  title
  = FilterTextAreaControlProperty
      {filterControlId = filterControlId,
       sourceFilterId = sourceFilterId, title = title,
       delimiter = Prelude.Nothing, displayOptions = Prelude.Nothing}
instance ToResourceProperties FilterTextAreaControlProperty where
  toResourceProperties FilterTextAreaControlProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.FilterTextAreaControl",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FilterControlId" JSON..= filterControlId,
                            "SourceFilterId" JSON..= sourceFilterId, "Title" JSON..= title]
                           (Prelude.catMaybes
                              [(JSON..=) "Delimiter" Prelude.<$> delimiter,
                               (JSON..=) "DisplayOptions" Prelude.<$> displayOptions]))}
instance JSON.ToJSON FilterTextAreaControlProperty where
  toJSON FilterTextAreaControlProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FilterControlId" JSON..= filterControlId,
               "SourceFilterId" JSON..= sourceFilterId, "Title" JSON..= title]
              (Prelude.catMaybes
                 [(JSON..=) "Delimiter" Prelude.<$> delimiter,
                  (JSON..=) "DisplayOptions" Prelude.<$> displayOptions])))
instance Property "Delimiter" FilterTextAreaControlProperty where
  type PropertyType "Delimiter" FilterTextAreaControlProperty = Value Prelude.Text
  set newValue FilterTextAreaControlProperty {..}
    = FilterTextAreaControlProperty
        {delimiter = Prelude.pure newValue, ..}
instance Property "DisplayOptions" FilterTextAreaControlProperty where
  type PropertyType "DisplayOptions" FilterTextAreaControlProperty = TextAreaControlDisplayOptionsProperty
  set newValue FilterTextAreaControlProperty {..}
    = FilterTextAreaControlProperty
        {displayOptions = Prelude.pure newValue, ..}
instance Property "FilterControlId" FilterTextAreaControlProperty where
  type PropertyType "FilterControlId" FilterTextAreaControlProperty = Value Prelude.Text
  set newValue FilterTextAreaControlProperty {..}
    = FilterTextAreaControlProperty {filterControlId = newValue, ..}
instance Property "SourceFilterId" FilterTextAreaControlProperty where
  type PropertyType "SourceFilterId" FilterTextAreaControlProperty = Value Prelude.Text
  set newValue FilterTextAreaControlProperty {..}
    = FilterTextAreaControlProperty {sourceFilterId = newValue, ..}
instance Property "Title" FilterTextAreaControlProperty where
  type PropertyType "Title" FilterTextAreaControlProperty = Value Prelude.Text
  set newValue FilterTextAreaControlProperty {..}
    = FilterTextAreaControlProperty {title = newValue, ..}