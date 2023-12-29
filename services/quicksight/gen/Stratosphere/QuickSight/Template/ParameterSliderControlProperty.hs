module Stratosphere.QuickSight.Template.ParameterSliderControlProperty (
        module Exports, ParameterSliderControlProperty(..),
        mkParameterSliderControlProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.SliderControlDisplayOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParameterSliderControlProperty
  = ParameterSliderControlProperty {displayOptions :: (Prelude.Maybe SliderControlDisplayOptionsProperty),
                                    maximumValue :: (Value Prelude.Double),
                                    minimumValue :: (Value Prelude.Double),
                                    parameterControlId :: (Value Prelude.Text),
                                    sourceParameterName :: (Value Prelude.Text),
                                    stepSize :: (Value Prelude.Double),
                                    title :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParameterSliderControlProperty ::
  Value Prelude.Double
  -> Value Prelude.Double
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> Value Prelude.Double
              -> Value Prelude.Text -> ParameterSliderControlProperty
mkParameterSliderControlProperty
  maximumValue
  minimumValue
  parameterControlId
  sourceParameterName
  stepSize
  title
  = ParameterSliderControlProperty
      {maximumValue = maximumValue, minimumValue = minimumValue,
       parameterControlId = parameterControlId,
       sourceParameterName = sourceParameterName, stepSize = stepSize,
       title = title, displayOptions = Prelude.Nothing}
instance ToResourceProperties ParameterSliderControlProperty where
  toResourceProperties ParameterSliderControlProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ParameterSliderControl",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MaximumValue" JSON..= maximumValue,
                            "MinimumValue" JSON..= minimumValue,
                            "ParameterControlId" JSON..= parameterControlId,
                            "SourceParameterName" JSON..= sourceParameterName,
                            "StepSize" JSON..= stepSize, "Title" JSON..= title]
                           (Prelude.catMaybes
                              [(JSON..=) "DisplayOptions" Prelude.<$> displayOptions]))}
instance JSON.ToJSON ParameterSliderControlProperty where
  toJSON ParameterSliderControlProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MaximumValue" JSON..= maximumValue,
               "MinimumValue" JSON..= minimumValue,
               "ParameterControlId" JSON..= parameterControlId,
               "SourceParameterName" JSON..= sourceParameterName,
               "StepSize" JSON..= stepSize, "Title" JSON..= title]
              (Prelude.catMaybes
                 [(JSON..=) "DisplayOptions" Prelude.<$> displayOptions])))
instance Property "DisplayOptions" ParameterSliderControlProperty where
  type PropertyType "DisplayOptions" ParameterSliderControlProperty = SliderControlDisplayOptionsProperty
  set newValue ParameterSliderControlProperty {..}
    = ParameterSliderControlProperty
        {displayOptions = Prelude.pure newValue, ..}
instance Property "MaximumValue" ParameterSliderControlProperty where
  type PropertyType "MaximumValue" ParameterSliderControlProperty = Value Prelude.Double
  set newValue ParameterSliderControlProperty {..}
    = ParameterSliderControlProperty {maximumValue = newValue, ..}
instance Property "MinimumValue" ParameterSliderControlProperty where
  type PropertyType "MinimumValue" ParameterSliderControlProperty = Value Prelude.Double
  set newValue ParameterSliderControlProperty {..}
    = ParameterSliderControlProperty {minimumValue = newValue, ..}
instance Property "ParameterControlId" ParameterSliderControlProperty where
  type PropertyType "ParameterControlId" ParameterSliderControlProperty = Value Prelude.Text
  set newValue ParameterSliderControlProperty {..}
    = ParameterSliderControlProperty
        {parameterControlId = newValue, ..}
instance Property "SourceParameterName" ParameterSliderControlProperty where
  type PropertyType "SourceParameterName" ParameterSliderControlProperty = Value Prelude.Text
  set newValue ParameterSliderControlProperty {..}
    = ParameterSliderControlProperty
        {sourceParameterName = newValue, ..}
instance Property "StepSize" ParameterSliderControlProperty where
  type PropertyType "StepSize" ParameterSliderControlProperty = Value Prelude.Double
  set newValue ParameterSliderControlProperty {..}
    = ParameterSliderControlProperty {stepSize = newValue, ..}
instance Property "Title" ParameterSliderControlProperty where
  type PropertyType "Title" ParameterSliderControlProperty = Value Prelude.Text
  set newValue ParameterSliderControlProperty {..}
    = ParameterSliderControlProperty {title = newValue, ..}