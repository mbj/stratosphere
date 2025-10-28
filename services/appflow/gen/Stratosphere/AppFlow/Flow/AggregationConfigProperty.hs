module Stratosphere.AppFlow.Flow.AggregationConfigProperty (
        AggregationConfigProperty(..), mkAggregationConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AggregationConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-aggregationconfig.html>
    AggregationConfigProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-aggregationconfig.html#cfn-appflow-flow-aggregationconfig-aggregationtype>
                               aggregationType :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-aggregationconfig.html#cfn-appflow-flow-aggregationconfig-targetfilesize>
                               targetFileSize :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAggregationConfigProperty :: AggregationConfigProperty
mkAggregationConfigProperty
  = AggregationConfigProperty
      {haddock_workaround_ = (), aggregationType = Prelude.Nothing,
       targetFileSize = Prelude.Nothing}
instance ToResourceProperties AggregationConfigProperty where
  toResourceProperties AggregationConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.AggregationConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AggregationType" Prelude.<$> aggregationType,
                            (JSON..=) "TargetFileSize" Prelude.<$> targetFileSize])}
instance JSON.ToJSON AggregationConfigProperty where
  toJSON AggregationConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AggregationType" Prelude.<$> aggregationType,
               (JSON..=) "TargetFileSize" Prelude.<$> targetFileSize]))
instance Property "AggregationType" AggregationConfigProperty where
  type PropertyType "AggregationType" AggregationConfigProperty = Value Prelude.Text
  set newValue AggregationConfigProperty {..}
    = AggregationConfigProperty
        {aggregationType = Prelude.pure newValue, ..}
instance Property "TargetFileSize" AggregationConfigProperty where
  type PropertyType "TargetFileSize" AggregationConfigProperty = Value Prelude.Integer
  set newValue AggregationConfigProperty {..}
    = AggregationConfigProperty
        {targetFileSize = Prelude.pure newValue, ..}