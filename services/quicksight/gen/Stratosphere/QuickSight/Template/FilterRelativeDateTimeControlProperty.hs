module Stratosphere.QuickSight.Template.FilterRelativeDateTimeControlProperty (
        module Exports, FilterRelativeDateTimeControlProperty(..),
        mkFilterRelativeDateTimeControlProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.RelativeDateTimeControlDisplayOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilterRelativeDateTimeControlProperty
  = FilterRelativeDateTimeControlProperty {displayOptions :: (Prelude.Maybe RelativeDateTimeControlDisplayOptionsProperty),
                                           filterControlId :: (Value Prelude.Text),
                                           sourceFilterId :: (Value Prelude.Text),
                                           title :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilterRelativeDateTimeControlProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> FilterRelativeDateTimeControlProperty
mkFilterRelativeDateTimeControlProperty
  filterControlId
  sourceFilterId
  title
  = FilterRelativeDateTimeControlProperty
      {filterControlId = filterControlId,
       sourceFilterId = sourceFilterId, title = title,
       displayOptions = Prelude.Nothing}
instance ToResourceProperties FilterRelativeDateTimeControlProperty where
  toResourceProperties FilterRelativeDateTimeControlProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.FilterRelativeDateTimeControl",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FilterControlId" JSON..= filterControlId,
                            "SourceFilterId" JSON..= sourceFilterId, "Title" JSON..= title]
                           (Prelude.catMaybes
                              [(JSON..=) "DisplayOptions" Prelude.<$> displayOptions]))}
instance JSON.ToJSON FilterRelativeDateTimeControlProperty where
  toJSON FilterRelativeDateTimeControlProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FilterControlId" JSON..= filterControlId,
               "SourceFilterId" JSON..= sourceFilterId, "Title" JSON..= title]
              (Prelude.catMaybes
                 [(JSON..=) "DisplayOptions" Prelude.<$> displayOptions])))
instance Property "DisplayOptions" FilterRelativeDateTimeControlProperty where
  type PropertyType "DisplayOptions" FilterRelativeDateTimeControlProperty = RelativeDateTimeControlDisplayOptionsProperty
  set newValue FilterRelativeDateTimeControlProperty {..}
    = FilterRelativeDateTimeControlProperty
        {displayOptions = Prelude.pure newValue, ..}
instance Property "FilterControlId" FilterRelativeDateTimeControlProperty where
  type PropertyType "FilterControlId" FilterRelativeDateTimeControlProperty = Value Prelude.Text
  set newValue FilterRelativeDateTimeControlProperty {..}
    = FilterRelativeDateTimeControlProperty
        {filterControlId = newValue, ..}
instance Property "SourceFilterId" FilterRelativeDateTimeControlProperty where
  type PropertyType "SourceFilterId" FilterRelativeDateTimeControlProperty = Value Prelude.Text
  set newValue FilterRelativeDateTimeControlProperty {..}
    = FilterRelativeDateTimeControlProperty
        {sourceFilterId = newValue, ..}
instance Property "Title" FilterRelativeDateTimeControlProperty where
  type PropertyType "Title" FilterRelativeDateTimeControlProperty = Value Prelude.Text
  set newValue FilterRelativeDateTimeControlProperty {..}
    = FilterRelativeDateTimeControlProperty {title = newValue, ..}