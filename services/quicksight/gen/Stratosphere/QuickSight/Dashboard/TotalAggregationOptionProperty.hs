module Stratosphere.QuickSight.Dashboard.TotalAggregationOptionProperty (
        module Exports, TotalAggregationOptionProperty(..),
        mkTotalAggregationOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.TotalAggregationFunctionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TotalAggregationOptionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-totalaggregationoption.html>
    TotalAggregationOptionProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-totalaggregationoption.html#cfn-quicksight-dashboard-totalaggregationoption-fieldid>
                                    fieldId :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-totalaggregationoption.html#cfn-quicksight-dashboard-totalaggregationoption-totalaggregationfunction>
                                    totalAggregationFunction :: TotalAggregationFunctionProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTotalAggregationOptionProperty ::
  Value Prelude.Text
  -> TotalAggregationFunctionProperty
     -> TotalAggregationOptionProperty
mkTotalAggregationOptionProperty fieldId totalAggregationFunction
  = TotalAggregationOptionProperty
      {haddock_workaround_ = (), fieldId = fieldId,
       totalAggregationFunction = totalAggregationFunction}
instance ToResourceProperties TotalAggregationOptionProperty where
  toResourceProperties TotalAggregationOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.TotalAggregationOption",
         supportsTags = Prelude.False,
         properties = ["FieldId" JSON..= fieldId,
                       "TotalAggregationFunction" JSON..= totalAggregationFunction]}
instance JSON.ToJSON TotalAggregationOptionProperty where
  toJSON TotalAggregationOptionProperty {..}
    = JSON.object
        ["FieldId" JSON..= fieldId,
         "TotalAggregationFunction" JSON..= totalAggregationFunction]
instance Property "FieldId" TotalAggregationOptionProperty where
  type PropertyType "FieldId" TotalAggregationOptionProperty = Value Prelude.Text
  set newValue TotalAggregationOptionProperty {..}
    = TotalAggregationOptionProperty {fieldId = newValue, ..}
instance Property "TotalAggregationFunction" TotalAggregationOptionProperty where
  type PropertyType "TotalAggregationFunction" TotalAggregationOptionProperty = TotalAggregationFunctionProperty
  set newValue TotalAggregationOptionProperty {..}
    = TotalAggregationOptionProperty
        {totalAggregationFunction = newValue, ..}