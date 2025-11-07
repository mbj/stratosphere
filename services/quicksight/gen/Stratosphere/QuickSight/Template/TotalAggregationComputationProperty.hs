module Stratosphere.QuickSight.Template.TotalAggregationComputationProperty (
        module Exports, TotalAggregationComputationProperty(..),
        mkTotalAggregationComputationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TotalAggregationComputationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-totalaggregationcomputation.html>
    TotalAggregationComputationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-totalaggregationcomputation.html#cfn-quicksight-template-totalaggregationcomputation-computationid>
                                         computationId :: (Value Prelude.Text),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-totalaggregationcomputation.html#cfn-quicksight-template-totalaggregationcomputation-name>
                                         name :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-totalaggregationcomputation.html#cfn-quicksight-template-totalaggregationcomputation-value>
                                         value :: (Prelude.Maybe MeasureFieldProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTotalAggregationComputationProperty ::
  Value Prelude.Text -> TotalAggregationComputationProperty
mkTotalAggregationComputationProperty computationId
  = TotalAggregationComputationProperty
      {haddock_workaround_ = (), computationId = computationId,
       name = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties TotalAggregationComputationProperty where
  toResourceProperties TotalAggregationComputationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.TotalAggregationComputation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ComputationId" JSON..= computationId]
                           (Prelude.catMaybes
                              [(JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Value" Prelude.<$> value]))}
instance JSON.ToJSON TotalAggregationComputationProperty where
  toJSON TotalAggregationComputationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ComputationId" JSON..= computationId]
              (Prelude.catMaybes
                 [(JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Value" Prelude.<$> value])))
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
    = TotalAggregationComputationProperty
        {value = Prelude.pure newValue, ..}