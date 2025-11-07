module Stratosphere.QuickSight.Analysis.GrowthRateComputationProperty (
        module Exports, GrowthRateComputationProperty(..),
        mkGrowthRateComputationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GrowthRateComputationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-growthratecomputation.html>
    GrowthRateComputationProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-growthratecomputation.html#cfn-quicksight-analysis-growthratecomputation-computationid>
                                   computationId :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-growthratecomputation.html#cfn-quicksight-analysis-growthratecomputation-name>
                                   name :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-growthratecomputation.html#cfn-quicksight-analysis-growthratecomputation-periodsize>
                                   periodSize :: (Prelude.Maybe (Value Prelude.Double)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-growthratecomputation.html#cfn-quicksight-analysis-growthratecomputation-time>
                                   time :: (Prelude.Maybe DimensionFieldProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-growthratecomputation.html#cfn-quicksight-analysis-growthratecomputation-value>
                                   value :: (Prelude.Maybe MeasureFieldProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGrowthRateComputationProperty ::
  Value Prelude.Text -> GrowthRateComputationProperty
mkGrowthRateComputationProperty computationId
  = GrowthRateComputationProperty
      {haddock_workaround_ = (), computationId = computationId,
       name = Prelude.Nothing, periodSize = Prelude.Nothing,
       time = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties GrowthRateComputationProperty where
  toResourceProperties GrowthRateComputationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.GrowthRateComputation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ComputationId" JSON..= computationId]
                           (Prelude.catMaybes
                              [(JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "PeriodSize" Prelude.<$> periodSize,
                               (JSON..=) "Time" Prelude.<$> time,
                               (JSON..=) "Value" Prelude.<$> value]))}
instance JSON.ToJSON GrowthRateComputationProperty where
  toJSON GrowthRateComputationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ComputationId" JSON..= computationId]
              (Prelude.catMaybes
                 [(JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "PeriodSize" Prelude.<$> periodSize,
                  (JSON..=) "Time" Prelude.<$> time,
                  (JSON..=) "Value" Prelude.<$> value])))
instance Property "ComputationId" GrowthRateComputationProperty where
  type PropertyType "ComputationId" GrowthRateComputationProperty = Value Prelude.Text
  set newValue GrowthRateComputationProperty {..}
    = GrowthRateComputationProperty {computationId = newValue, ..}
instance Property "Name" GrowthRateComputationProperty where
  type PropertyType "Name" GrowthRateComputationProperty = Value Prelude.Text
  set newValue GrowthRateComputationProperty {..}
    = GrowthRateComputationProperty {name = Prelude.pure newValue, ..}
instance Property "PeriodSize" GrowthRateComputationProperty where
  type PropertyType "PeriodSize" GrowthRateComputationProperty = Value Prelude.Double
  set newValue GrowthRateComputationProperty {..}
    = GrowthRateComputationProperty
        {periodSize = Prelude.pure newValue, ..}
instance Property "Time" GrowthRateComputationProperty where
  type PropertyType "Time" GrowthRateComputationProperty = DimensionFieldProperty
  set newValue GrowthRateComputationProperty {..}
    = GrowthRateComputationProperty {time = Prelude.pure newValue, ..}
instance Property "Value" GrowthRateComputationProperty where
  type PropertyType "Value" GrowthRateComputationProperty = MeasureFieldProperty
  set newValue GrowthRateComputationProperty {..}
    = GrowthRateComputationProperty {value = Prelude.pure newValue, ..}