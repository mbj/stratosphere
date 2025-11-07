module Stratosphere.QuickSight.Dashboard.ParameterSliderControlProperty (
        module Exports, ParameterSliderControlProperty(..),
        mkParameterSliderControlProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.SliderControlDisplayOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParameterSliderControlProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-parameterslidercontrol.html>
    ParameterSliderControlProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-parameterslidercontrol.html#cfn-quicksight-dashboard-parameterslidercontrol-displayoptions>
                                    displayOptions :: (Prelude.Maybe SliderControlDisplayOptionsProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-parameterslidercontrol.html#cfn-quicksight-dashboard-parameterslidercontrol-maximumvalue>
                                    maximumValue :: (Value Prelude.Double),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-parameterslidercontrol.html#cfn-quicksight-dashboard-parameterslidercontrol-minimumvalue>
                                    minimumValue :: (Value Prelude.Double),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-parameterslidercontrol.html#cfn-quicksight-dashboard-parameterslidercontrol-parametercontrolid>
                                    parameterControlId :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-parameterslidercontrol.html#cfn-quicksight-dashboard-parameterslidercontrol-sourceparametername>
                                    sourceParameterName :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-parameterslidercontrol.html#cfn-quicksight-dashboard-parameterslidercontrol-stepsize>
                                    stepSize :: (Value Prelude.Double),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-parameterslidercontrol.html#cfn-quicksight-dashboard-parameterslidercontrol-title>
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
      {haddock_workaround_ = (), maximumValue = maximumValue,
       minimumValue = minimumValue,
       parameterControlId = parameterControlId,
       sourceParameterName = sourceParameterName, stepSize = stepSize,
       title = title, displayOptions = Prelude.Nothing}
instance ToResourceProperties ParameterSliderControlProperty where
  toResourceProperties ParameterSliderControlProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.ParameterSliderControl",
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