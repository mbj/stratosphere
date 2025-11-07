module Stratosphere.QuickSight.Dashboard.AxisTickLabelOptionsProperty (
        module Exports, AxisTickLabelOptionsProperty(..),
        mkAxisTickLabelOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.LabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AxisTickLabelOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-axisticklabeloptions.html>
    AxisTickLabelOptionsProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-axisticklabeloptions.html#cfn-quicksight-dashboard-axisticklabeloptions-labeloptions>
                                  labelOptions :: (Prelude.Maybe LabelOptionsProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-axisticklabeloptions.html#cfn-quicksight-dashboard-axisticklabeloptions-rotationangle>
                                  rotationAngle :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAxisTickLabelOptionsProperty :: AxisTickLabelOptionsProperty
mkAxisTickLabelOptionsProperty
  = AxisTickLabelOptionsProperty
      {haddock_workaround_ = (), labelOptions = Prelude.Nothing,
       rotationAngle = Prelude.Nothing}
instance ToResourceProperties AxisTickLabelOptionsProperty where
  toResourceProperties AxisTickLabelOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.AxisTickLabelOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LabelOptions" Prelude.<$> labelOptions,
                            (JSON..=) "RotationAngle" Prelude.<$> rotationAngle])}
instance JSON.ToJSON AxisTickLabelOptionsProperty where
  toJSON AxisTickLabelOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LabelOptions" Prelude.<$> labelOptions,
               (JSON..=) "RotationAngle" Prelude.<$> rotationAngle]))
instance Property "LabelOptions" AxisTickLabelOptionsProperty where
  type PropertyType "LabelOptions" AxisTickLabelOptionsProperty = LabelOptionsProperty
  set newValue AxisTickLabelOptionsProperty {..}
    = AxisTickLabelOptionsProperty
        {labelOptions = Prelude.pure newValue, ..}
instance Property "RotationAngle" AxisTickLabelOptionsProperty where
  type PropertyType "RotationAngle" AxisTickLabelOptionsProperty = Value Prelude.Double
  set newValue AxisTickLabelOptionsProperty {..}
    = AxisTickLabelOptionsProperty
        {rotationAngle = Prelude.pure newValue, ..}