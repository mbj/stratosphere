module Stratosphere.QuickSight.Analysis.AxisDataOptionsProperty (
        module Exports, AxisDataOptionsProperty(..),
        mkAxisDataOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DateAxisOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.NumericAxisOptionsProperty as Exports
import Stratosphere.ResourceProperties
data AxisDataOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-axisdataoptions.html>
    AxisDataOptionsProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-axisdataoptions.html#cfn-quicksight-analysis-axisdataoptions-dateaxisoptions>
                             dateAxisOptions :: (Prelude.Maybe DateAxisOptionsProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-axisdataoptions.html#cfn-quicksight-analysis-axisdataoptions-numericaxisoptions>
                             numericAxisOptions :: (Prelude.Maybe NumericAxisOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAxisDataOptionsProperty :: AxisDataOptionsProperty
mkAxisDataOptionsProperty
  = AxisDataOptionsProperty
      {haddock_workaround_ = (), dateAxisOptions = Prelude.Nothing,
       numericAxisOptions = Prelude.Nothing}
instance ToResourceProperties AxisDataOptionsProperty where
  toResourceProperties AxisDataOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.AxisDataOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DateAxisOptions" Prelude.<$> dateAxisOptions,
                            (JSON..=) "NumericAxisOptions" Prelude.<$> numericAxisOptions])}
instance JSON.ToJSON AxisDataOptionsProperty where
  toJSON AxisDataOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DateAxisOptions" Prelude.<$> dateAxisOptions,
               (JSON..=) "NumericAxisOptions" Prelude.<$> numericAxisOptions]))
instance Property "DateAxisOptions" AxisDataOptionsProperty where
  type PropertyType "DateAxisOptions" AxisDataOptionsProperty = DateAxisOptionsProperty
  set newValue AxisDataOptionsProperty {..}
    = AxisDataOptionsProperty
        {dateAxisOptions = Prelude.pure newValue, ..}
instance Property "NumericAxisOptions" AxisDataOptionsProperty where
  type PropertyType "NumericAxisOptions" AxisDataOptionsProperty = NumericAxisOptionsProperty
  set newValue AxisDataOptionsProperty {..}
    = AxisDataOptionsProperty
        {numericAxisOptions = Prelude.pure newValue, ..}