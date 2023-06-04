module Stratosphere.QuickSight.Template.FilterSliderControlProperty (
        module Exports, FilterSliderControlProperty(..),
        mkFilterSliderControlProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.SliderControlDisplayOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilterSliderControlProperty
  = FilterSliderControlProperty {displayOptions :: (Prelude.Maybe SliderControlDisplayOptionsProperty),
                                 filterControlId :: (Value Prelude.Text),
                                 maximumValue :: (Value Prelude.Double),
                                 minimumValue :: (Value Prelude.Double),
                                 sourceFilterId :: (Value Prelude.Text),
                                 stepSize :: (Value Prelude.Double),
                                 title :: (Value Prelude.Text),
                                 type' :: (Prelude.Maybe (Value Prelude.Text))}
mkFilterSliderControlProperty ::
  Value Prelude.Text
  -> Value Prelude.Double
     -> Value Prelude.Double
        -> Value Prelude.Text
           -> Value Prelude.Double
              -> Value Prelude.Text -> FilterSliderControlProperty
mkFilterSliderControlProperty
  filterControlId
  maximumValue
  minimumValue
  sourceFilterId
  stepSize
  title
  = FilterSliderControlProperty
      {filterControlId = filterControlId, maximumValue = maximumValue,
       minimumValue = minimumValue, sourceFilterId = sourceFilterId,
       stepSize = stepSize, title = title,
       displayOptions = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties FilterSliderControlProperty where
  toResourceProperties FilterSliderControlProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.FilterSliderControl",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FilterControlId" JSON..= filterControlId,
                            "MaximumValue" JSON..= maximumValue,
                            "MinimumValue" JSON..= minimumValue,
                            "SourceFilterId" JSON..= sourceFilterId,
                            "StepSize" JSON..= stepSize, "Title" JSON..= title]
                           (Prelude.catMaybes
                              [(JSON..=) "DisplayOptions" Prelude.<$> displayOptions,
                               (JSON..=) "Type" Prelude.<$> type']))}
instance JSON.ToJSON FilterSliderControlProperty where
  toJSON FilterSliderControlProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FilterControlId" JSON..= filterControlId,
               "MaximumValue" JSON..= maximumValue,
               "MinimumValue" JSON..= minimumValue,
               "SourceFilterId" JSON..= sourceFilterId,
               "StepSize" JSON..= stepSize, "Title" JSON..= title]
              (Prelude.catMaybes
                 [(JSON..=) "DisplayOptions" Prelude.<$> displayOptions,
                  (JSON..=) "Type" Prelude.<$> type'])))
instance Property "DisplayOptions" FilterSliderControlProperty where
  type PropertyType "DisplayOptions" FilterSliderControlProperty = SliderControlDisplayOptionsProperty
  set newValue FilterSliderControlProperty {..}
    = FilterSliderControlProperty
        {displayOptions = Prelude.pure newValue, ..}
instance Property "FilterControlId" FilterSliderControlProperty where
  type PropertyType "FilterControlId" FilterSliderControlProperty = Value Prelude.Text
  set newValue FilterSliderControlProperty {..}
    = FilterSliderControlProperty {filterControlId = newValue, ..}
instance Property "MaximumValue" FilterSliderControlProperty where
  type PropertyType "MaximumValue" FilterSliderControlProperty = Value Prelude.Double
  set newValue FilterSliderControlProperty {..}
    = FilterSliderControlProperty {maximumValue = newValue, ..}
instance Property "MinimumValue" FilterSliderControlProperty where
  type PropertyType "MinimumValue" FilterSliderControlProperty = Value Prelude.Double
  set newValue FilterSliderControlProperty {..}
    = FilterSliderControlProperty {minimumValue = newValue, ..}
instance Property "SourceFilterId" FilterSliderControlProperty where
  type PropertyType "SourceFilterId" FilterSliderControlProperty = Value Prelude.Text
  set newValue FilterSliderControlProperty {..}
    = FilterSliderControlProperty {sourceFilterId = newValue, ..}
instance Property "StepSize" FilterSliderControlProperty where
  type PropertyType "StepSize" FilterSliderControlProperty = Value Prelude.Double
  set newValue FilterSliderControlProperty {..}
    = FilterSliderControlProperty {stepSize = newValue, ..}
instance Property "Title" FilterSliderControlProperty where
  type PropertyType "Title" FilterSliderControlProperty = Value Prelude.Text
  set newValue FilterSliderControlProperty {..}
    = FilterSliderControlProperty {title = newValue, ..}
instance Property "Type" FilterSliderControlProperty where
  type PropertyType "Type" FilterSliderControlProperty = Value Prelude.Text
  set newValue FilterSliderControlProperty {..}
    = FilterSliderControlProperty {type' = Prelude.pure newValue, ..}