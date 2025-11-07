module Stratosphere.QuickSight.Dashboard.AxisLinearScaleProperty (
        AxisLinearScaleProperty(..), mkAxisLinearScaleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AxisLinearScaleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-axislinearscale.html>
    AxisLinearScaleProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-axislinearscale.html#cfn-quicksight-dashboard-axislinearscale-stepcount>
                             stepCount :: (Prelude.Maybe (Value Prelude.Double)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-axislinearscale.html#cfn-quicksight-dashboard-axislinearscale-stepsize>
                             stepSize :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAxisLinearScaleProperty :: AxisLinearScaleProperty
mkAxisLinearScaleProperty
  = AxisLinearScaleProperty
      {haddock_workaround_ = (), stepCount = Prelude.Nothing,
       stepSize = Prelude.Nothing}
instance ToResourceProperties AxisLinearScaleProperty where
  toResourceProperties AxisLinearScaleProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.AxisLinearScale",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "StepCount" Prelude.<$> stepCount,
                            (JSON..=) "StepSize" Prelude.<$> stepSize])}
instance JSON.ToJSON AxisLinearScaleProperty where
  toJSON AxisLinearScaleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "StepCount" Prelude.<$> stepCount,
               (JSON..=) "StepSize" Prelude.<$> stepSize]))
instance Property "StepCount" AxisLinearScaleProperty where
  type PropertyType "StepCount" AxisLinearScaleProperty = Value Prelude.Double
  set newValue AxisLinearScaleProperty {..}
    = AxisLinearScaleProperty {stepCount = Prelude.pure newValue, ..}
instance Property "StepSize" AxisLinearScaleProperty where
  type PropertyType "StepSize" AxisLinearScaleProperty = Value Prelude.Double
  set newValue AxisLinearScaleProperty {..}
    = AxisLinearScaleProperty {stepSize = Prelude.pure newValue, ..}