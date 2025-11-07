module Stratosphere.QuickSight.Dashboard.PeriodToDateComputationProperty (
        module Exports, PeriodToDateComputationProperty(..),
        mkPeriodToDateComputationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PeriodToDateComputationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-periodtodatecomputation.html>
    PeriodToDateComputationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-periodtodatecomputation.html#cfn-quicksight-dashboard-periodtodatecomputation-computationid>
                                     computationId :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-periodtodatecomputation.html#cfn-quicksight-dashboard-periodtodatecomputation-name>
                                     name :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-periodtodatecomputation.html#cfn-quicksight-dashboard-periodtodatecomputation-periodtimegranularity>
                                     periodTimeGranularity :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-periodtodatecomputation.html#cfn-quicksight-dashboard-periodtodatecomputation-time>
                                     time :: (Prelude.Maybe DimensionFieldProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-periodtodatecomputation.html#cfn-quicksight-dashboard-periodtodatecomputation-value>
                                     value :: (Prelude.Maybe MeasureFieldProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPeriodToDateComputationProperty ::
  Value Prelude.Text -> PeriodToDateComputationProperty
mkPeriodToDateComputationProperty computationId
  = PeriodToDateComputationProperty
      {haddock_workaround_ = (), computationId = computationId,
       name = Prelude.Nothing, periodTimeGranularity = Prelude.Nothing,
       time = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties PeriodToDateComputationProperty where
  toResourceProperties PeriodToDateComputationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.PeriodToDateComputation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ComputationId" JSON..= computationId]
                           (Prelude.catMaybes
                              [(JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "PeriodTimeGranularity"
                                 Prelude.<$> periodTimeGranularity,
                               (JSON..=) "Time" Prelude.<$> time,
                               (JSON..=) "Value" Prelude.<$> value]))}
instance JSON.ToJSON PeriodToDateComputationProperty where
  toJSON PeriodToDateComputationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ComputationId" JSON..= computationId]
              (Prelude.catMaybes
                 [(JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "PeriodTimeGranularity"
                    Prelude.<$> periodTimeGranularity,
                  (JSON..=) "Time" Prelude.<$> time,
                  (JSON..=) "Value" Prelude.<$> value])))
instance Property "ComputationId" PeriodToDateComputationProperty where
  type PropertyType "ComputationId" PeriodToDateComputationProperty = Value Prelude.Text
  set newValue PeriodToDateComputationProperty {..}
    = PeriodToDateComputationProperty {computationId = newValue, ..}
instance Property "Name" PeriodToDateComputationProperty where
  type PropertyType "Name" PeriodToDateComputationProperty = Value Prelude.Text
  set newValue PeriodToDateComputationProperty {..}
    = PeriodToDateComputationProperty
        {name = Prelude.pure newValue, ..}
instance Property "PeriodTimeGranularity" PeriodToDateComputationProperty where
  type PropertyType "PeriodTimeGranularity" PeriodToDateComputationProperty = Value Prelude.Text
  set newValue PeriodToDateComputationProperty {..}
    = PeriodToDateComputationProperty
        {periodTimeGranularity = Prelude.pure newValue, ..}
instance Property "Time" PeriodToDateComputationProperty where
  type PropertyType "Time" PeriodToDateComputationProperty = DimensionFieldProperty
  set newValue PeriodToDateComputationProperty {..}
    = PeriodToDateComputationProperty
        {time = Prelude.pure newValue, ..}
instance Property "Value" PeriodToDateComputationProperty where
  type PropertyType "Value" PeriodToDateComputationProperty = MeasureFieldProperty
  set newValue PeriodToDateComputationProperty {..}
    = PeriodToDateComputationProperty
        {value = Prelude.pure newValue, ..}