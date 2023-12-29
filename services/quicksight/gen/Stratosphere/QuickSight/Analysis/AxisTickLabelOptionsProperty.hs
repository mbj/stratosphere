module Stratosphere.QuickSight.Analysis.AxisTickLabelOptionsProperty (
        module Exports, AxisTickLabelOptionsProperty(..),
        mkAxisTickLabelOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.LabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AxisTickLabelOptionsProperty
  = AxisTickLabelOptionsProperty {labelOptions :: (Prelude.Maybe LabelOptionsProperty),
                                  rotationAngle :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAxisTickLabelOptionsProperty :: AxisTickLabelOptionsProperty
mkAxisTickLabelOptionsProperty
  = AxisTickLabelOptionsProperty
      {labelOptions = Prelude.Nothing, rotationAngle = Prelude.Nothing}
instance ToResourceProperties AxisTickLabelOptionsProperty where
  toResourceProperties AxisTickLabelOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.AxisTickLabelOptions",
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