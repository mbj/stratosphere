module Stratosphere.QuickSight.Template.DefaultSliderControlOptionsProperty (
        module Exports, DefaultSliderControlOptionsProperty(..),
        mkDefaultSliderControlOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.SliderControlDisplayOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DefaultSliderControlOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-defaultslidercontroloptions.html>
    DefaultSliderControlOptionsProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-defaultslidercontroloptions.html#cfn-quicksight-template-defaultslidercontroloptions-displayoptions>
                                         displayOptions :: (Prelude.Maybe SliderControlDisplayOptionsProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-defaultslidercontroloptions.html#cfn-quicksight-template-defaultslidercontroloptions-maximumvalue>
                                         maximumValue :: (Value Prelude.Double),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-defaultslidercontroloptions.html#cfn-quicksight-template-defaultslidercontroloptions-minimumvalue>
                                         minimumValue :: (Value Prelude.Double),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-defaultslidercontroloptions.html#cfn-quicksight-template-defaultslidercontroloptions-stepsize>
                                         stepSize :: (Value Prelude.Double),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-defaultslidercontroloptions.html#cfn-quicksight-template-defaultslidercontroloptions-type>
                                         type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDefaultSliderControlOptionsProperty ::
  Value Prelude.Double
  -> Value Prelude.Double
     -> Value Prelude.Double -> DefaultSliderControlOptionsProperty
mkDefaultSliderControlOptionsProperty
  maximumValue
  minimumValue
  stepSize
  = DefaultSliderControlOptionsProperty
      {haddock_workaround_ = (), maximumValue = maximumValue,
       minimumValue = minimumValue, stepSize = stepSize,
       displayOptions = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties DefaultSliderControlOptionsProperty where
  toResourceProperties DefaultSliderControlOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.DefaultSliderControlOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MaximumValue" JSON..= maximumValue,
                            "MinimumValue" JSON..= minimumValue, "StepSize" JSON..= stepSize]
                           (Prelude.catMaybes
                              [(JSON..=) "DisplayOptions" Prelude.<$> displayOptions,
                               (JSON..=) "Type" Prelude.<$> type']))}
instance JSON.ToJSON DefaultSliderControlOptionsProperty where
  toJSON DefaultSliderControlOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MaximumValue" JSON..= maximumValue,
               "MinimumValue" JSON..= minimumValue, "StepSize" JSON..= stepSize]
              (Prelude.catMaybes
                 [(JSON..=) "DisplayOptions" Prelude.<$> displayOptions,
                  (JSON..=) "Type" Prelude.<$> type'])))
instance Property "DisplayOptions" DefaultSliderControlOptionsProperty where
  type PropertyType "DisplayOptions" DefaultSliderControlOptionsProperty = SliderControlDisplayOptionsProperty
  set newValue DefaultSliderControlOptionsProperty {..}
    = DefaultSliderControlOptionsProperty
        {displayOptions = Prelude.pure newValue, ..}
instance Property "MaximumValue" DefaultSliderControlOptionsProperty where
  type PropertyType "MaximumValue" DefaultSliderControlOptionsProperty = Value Prelude.Double
  set newValue DefaultSliderControlOptionsProperty {..}
    = DefaultSliderControlOptionsProperty {maximumValue = newValue, ..}
instance Property "MinimumValue" DefaultSliderControlOptionsProperty where
  type PropertyType "MinimumValue" DefaultSliderControlOptionsProperty = Value Prelude.Double
  set newValue DefaultSliderControlOptionsProperty {..}
    = DefaultSliderControlOptionsProperty {minimumValue = newValue, ..}
instance Property "StepSize" DefaultSliderControlOptionsProperty where
  type PropertyType "StepSize" DefaultSliderControlOptionsProperty = Value Prelude.Double
  set newValue DefaultSliderControlOptionsProperty {..}
    = DefaultSliderControlOptionsProperty {stepSize = newValue, ..}
instance Property "Type" DefaultSliderControlOptionsProperty where
  type PropertyType "Type" DefaultSliderControlOptionsProperty = Value Prelude.Text
  set newValue DefaultSliderControlOptionsProperty {..}
    = DefaultSliderControlOptionsProperty
        {type' = Prelude.pure newValue, ..}