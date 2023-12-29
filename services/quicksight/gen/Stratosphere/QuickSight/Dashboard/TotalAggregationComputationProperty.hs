module Stratosphere.QuickSight.Dashboard.TotalAggregationComputationProperty (
        module Exports, TotalAggregationComputationProperty(..),
        mkTotalAggregationComputationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TotalAggregationComputationProperty
  = TotalAggregationComputationProperty {computationId :: (Value Prelude.Text),
                                         name :: (Prelude.Maybe (Value Prelude.Text)),
                                         value :: MeasureFieldProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTotalAggregationComputationProperty ::
  Value Prelude.Text
  -> MeasureFieldProperty -> TotalAggregationComputationProperty
mkTotalAggregationComputationProperty computationId value
  = TotalAggregationComputationProperty
      {computationId = computationId, value = value,
       name = Prelude.Nothing}
instance ToResourceProperties TotalAggregationComputationProperty where
  toResourceProperties TotalAggregationComputationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.TotalAggregationComputation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ComputationId" JSON..= computationId, "Value" JSON..= value]
                           (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name]))}
instance JSON.ToJSON TotalAggregationComputationProperty where
  toJSON TotalAggregationComputationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ComputationId" JSON..= computationId, "Value" JSON..= value]
              (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name])))
instance Property "ComputationId" TotalAggregationComputationProperty where
  type PropertyType "ComputationId" TotalAggregationComputationProperty = Value Prelude.Text
  set newValue TotalAggregationComputationProperty {..}
    = TotalAggregationComputationProperty
        {computationId = newValue, ..}
instance Property "Name" TotalAggregationComputationProperty where
  type PropertyType "Name" TotalAggregationComputationProperty = Value Prelude.Text
  set newValue TotalAggregationComputationProperty {..}
    = TotalAggregationComputationProperty
        {name = Prelude.pure newValue, ..}
instance Property "Value" TotalAggregationComputationProperty where
  type PropertyType "Value" TotalAggregationComputationProperty = MeasureFieldProperty
  set newValue TotalAggregationComputationProperty {..}
    = TotalAggregationComputationProperty {value = newValue, ..}