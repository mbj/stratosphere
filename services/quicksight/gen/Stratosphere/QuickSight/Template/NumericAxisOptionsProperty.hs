module Stratosphere.QuickSight.Template.NumericAxisOptionsProperty (
        module Exports, NumericAxisOptionsProperty(..),
        mkNumericAxisOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.AxisDisplayRangeProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.AxisScaleProperty as Exports
import Stratosphere.ResourceProperties
data NumericAxisOptionsProperty
  = NumericAxisOptionsProperty {range :: (Prelude.Maybe AxisDisplayRangeProperty),
                                scale :: (Prelude.Maybe AxisScaleProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNumericAxisOptionsProperty :: NumericAxisOptionsProperty
mkNumericAxisOptionsProperty
  = NumericAxisOptionsProperty
      {range = Prelude.Nothing, scale = Prelude.Nothing}
instance ToResourceProperties NumericAxisOptionsProperty where
  toResourceProperties NumericAxisOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.NumericAxisOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Range" Prelude.<$> range,
                            (JSON..=) "Scale" Prelude.<$> scale])}
instance JSON.ToJSON NumericAxisOptionsProperty where
  toJSON NumericAxisOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Range" Prelude.<$> range,
               (JSON..=) "Scale" Prelude.<$> scale]))
instance Property "Range" NumericAxisOptionsProperty where
  type PropertyType "Range" NumericAxisOptionsProperty = AxisDisplayRangeProperty
  set newValue NumericAxisOptionsProperty {..}
    = NumericAxisOptionsProperty {range = Prelude.pure newValue, ..}
instance Property "Scale" NumericAxisOptionsProperty where
  type PropertyType "Scale" NumericAxisOptionsProperty = AxisScaleProperty
  set newValue NumericAxisOptionsProperty {..}
    = NumericAxisOptionsProperty {scale = Prelude.pure newValue, ..}