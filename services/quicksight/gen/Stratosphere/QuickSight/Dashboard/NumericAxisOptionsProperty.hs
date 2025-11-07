module Stratosphere.QuickSight.Dashboard.NumericAxisOptionsProperty (
        module Exports, NumericAxisOptionsProperty(..),
        mkNumericAxisOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.AxisDisplayRangeProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.AxisScaleProperty as Exports
import Stratosphere.ResourceProperties
data NumericAxisOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-numericaxisoptions.html>
    NumericAxisOptionsProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-numericaxisoptions.html#cfn-quicksight-dashboard-numericaxisoptions-range>
                                range :: (Prelude.Maybe AxisDisplayRangeProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-numericaxisoptions.html#cfn-quicksight-dashboard-numericaxisoptions-scale>
                                scale :: (Prelude.Maybe AxisScaleProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNumericAxisOptionsProperty :: NumericAxisOptionsProperty
mkNumericAxisOptionsProperty
  = NumericAxisOptionsProperty
      {haddock_workaround_ = (), range = Prelude.Nothing,
       scale = Prelude.Nothing}
instance ToResourceProperties NumericAxisOptionsProperty where
  toResourceProperties NumericAxisOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.NumericAxisOptions",
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