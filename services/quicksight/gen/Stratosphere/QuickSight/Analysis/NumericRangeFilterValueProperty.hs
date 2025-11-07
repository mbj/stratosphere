module Stratosphere.QuickSight.Analysis.NumericRangeFilterValueProperty (
        NumericRangeFilterValueProperty(..),
        mkNumericRangeFilterValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NumericRangeFilterValueProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-numericrangefiltervalue.html>
    NumericRangeFilterValueProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-numericrangefiltervalue.html#cfn-quicksight-analysis-numericrangefiltervalue-parameter>
                                     parameter :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-numericrangefiltervalue.html#cfn-quicksight-analysis-numericrangefiltervalue-staticvalue>
                                     staticValue :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNumericRangeFilterValueProperty ::
  NumericRangeFilterValueProperty
mkNumericRangeFilterValueProperty
  = NumericRangeFilterValueProperty
      {haddock_workaround_ = (), parameter = Prelude.Nothing,
       staticValue = Prelude.Nothing}
instance ToResourceProperties NumericRangeFilterValueProperty where
  toResourceProperties NumericRangeFilterValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.NumericRangeFilterValue",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Parameter" Prelude.<$> parameter,
                            (JSON..=) "StaticValue" Prelude.<$> staticValue])}
instance JSON.ToJSON NumericRangeFilterValueProperty where
  toJSON NumericRangeFilterValueProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Parameter" Prelude.<$> parameter,
               (JSON..=) "StaticValue" Prelude.<$> staticValue]))
instance Property "Parameter" NumericRangeFilterValueProperty where
  type PropertyType "Parameter" NumericRangeFilterValueProperty = Value Prelude.Text
  set newValue NumericRangeFilterValueProperty {..}
    = NumericRangeFilterValueProperty
        {parameter = Prelude.pure newValue, ..}
instance Property "StaticValue" NumericRangeFilterValueProperty where
  type PropertyType "StaticValue" NumericRangeFilterValueProperty = Value Prelude.Double
  set newValue NumericRangeFilterValueProperty {..}
    = NumericRangeFilterValueProperty
        {staticValue = Prelude.pure newValue, ..}