module Stratosphere.QuickSight.Analysis.AxisScaleProperty (
        module Exports, AxisScaleProperty(..), mkAxisScaleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.AxisLinearScaleProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.AxisLogarithmicScaleProperty as Exports
import Stratosphere.ResourceProperties
data AxisScaleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-axisscale.html>
    AxisScaleProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-axisscale.html#cfn-quicksight-analysis-axisscale-linear>
                       linear :: (Prelude.Maybe AxisLinearScaleProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-axisscale.html#cfn-quicksight-analysis-axisscale-logarithmic>
                       logarithmic :: (Prelude.Maybe AxisLogarithmicScaleProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAxisScaleProperty :: AxisScaleProperty
mkAxisScaleProperty
  = AxisScaleProperty
      {haddock_workaround_ = (), linear = Prelude.Nothing,
       logarithmic = Prelude.Nothing}
instance ToResourceProperties AxisScaleProperty where
  toResourceProperties AxisScaleProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.AxisScale",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Linear" Prelude.<$> linear,
                            (JSON..=) "Logarithmic" Prelude.<$> logarithmic])}
instance JSON.ToJSON AxisScaleProperty where
  toJSON AxisScaleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Linear" Prelude.<$> linear,
               (JSON..=) "Logarithmic" Prelude.<$> logarithmic]))
instance Property "Linear" AxisScaleProperty where
  type PropertyType "Linear" AxisScaleProperty = AxisLinearScaleProperty
  set newValue AxisScaleProperty {..}
    = AxisScaleProperty {linear = Prelude.pure newValue, ..}
instance Property "Logarithmic" AxisScaleProperty where
  type PropertyType "Logarithmic" AxisScaleProperty = AxisLogarithmicScaleProperty
  set newValue AxisScaleProperty {..}
    = AxisScaleProperty {logarithmic = Prelude.pure newValue, ..}