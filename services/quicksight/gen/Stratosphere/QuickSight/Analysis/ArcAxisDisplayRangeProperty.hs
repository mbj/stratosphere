module Stratosphere.QuickSight.Analysis.ArcAxisDisplayRangeProperty (
        ArcAxisDisplayRangeProperty(..), mkArcAxisDisplayRangeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ArcAxisDisplayRangeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-arcaxisdisplayrange.html>
    ArcAxisDisplayRangeProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-arcaxisdisplayrange.html#cfn-quicksight-analysis-arcaxisdisplayrange-max>
                                 max :: (Prelude.Maybe (Value Prelude.Double)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-arcaxisdisplayrange.html#cfn-quicksight-analysis-arcaxisdisplayrange-min>
                                 min :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkArcAxisDisplayRangeProperty :: ArcAxisDisplayRangeProperty
mkArcAxisDisplayRangeProperty
  = ArcAxisDisplayRangeProperty
      {haddock_workaround_ = (), max = Prelude.Nothing,
       min = Prelude.Nothing}
instance ToResourceProperties ArcAxisDisplayRangeProperty where
  toResourceProperties ArcAxisDisplayRangeProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.ArcAxisDisplayRange",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Max" Prelude.<$> max,
                            (JSON..=) "Min" Prelude.<$> min])}
instance JSON.ToJSON ArcAxisDisplayRangeProperty where
  toJSON ArcAxisDisplayRangeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Max" Prelude.<$> max,
               (JSON..=) "Min" Prelude.<$> min]))
instance Property "Max" ArcAxisDisplayRangeProperty where
  type PropertyType "Max" ArcAxisDisplayRangeProperty = Value Prelude.Double
  set newValue ArcAxisDisplayRangeProperty {..}
    = ArcAxisDisplayRangeProperty {max = Prelude.pure newValue, ..}
instance Property "Min" ArcAxisDisplayRangeProperty where
  type PropertyType "Min" ArcAxisDisplayRangeProperty = Value Prelude.Double
  set newValue ArcAxisDisplayRangeProperty {..}
    = ArcAxisDisplayRangeProperty {min = Prelude.pure newValue, ..}