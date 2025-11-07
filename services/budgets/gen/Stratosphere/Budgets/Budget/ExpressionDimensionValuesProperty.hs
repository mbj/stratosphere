module Stratosphere.Budgets.Budget.ExpressionDimensionValuesProperty (
        ExpressionDimensionValuesProperty(..),
        mkExpressionDimensionValuesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExpressionDimensionValuesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-expressiondimensionvalues.html>
    ExpressionDimensionValuesProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-expressiondimensionvalues.html#cfn-budgets-budget-expressiondimensionvalues-key>
                                       key :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-expressiondimensionvalues.html#cfn-budgets-budget-expressiondimensionvalues-matchoptions>
                                       matchOptions :: (Prelude.Maybe (ValueList Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-expressiondimensionvalues.html#cfn-budgets-budget-expressiondimensionvalues-values>
                                       values :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExpressionDimensionValuesProperty ::
  ExpressionDimensionValuesProperty
mkExpressionDimensionValuesProperty
  = ExpressionDimensionValuesProperty
      {haddock_workaround_ = (), key = Prelude.Nothing,
       matchOptions = Prelude.Nothing, values = Prelude.Nothing}
instance ToResourceProperties ExpressionDimensionValuesProperty where
  toResourceProperties ExpressionDimensionValuesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Budgets::Budget.ExpressionDimensionValues",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Key" Prelude.<$> key,
                            (JSON..=) "MatchOptions" Prelude.<$> matchOptions,
                            (JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON ExpressionDimensionValuesProperty where
  toJSON ExpressionDimensionValuesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Key" Prelude.<$> key,
               (JSON..=) "MatchOptions" Prelude.<$> matchOptions,
               (JSON..=) "Values" Prelude.<$> values]))
instance Property "Key" ExpressionDimensionValuesProperty where
  type PropertyType "Key" ExpressionDimensionValuesProperty = Value Prelude.Text
  set newValue ExpressionDimensionValuesProperty {..}
    = ExpressionDimensionValuesProperty
        {key = Prelude.pure newValue, ..}
instance Property "MatchOptions" ExpressionDimensionValuesProperty where
  type PropertyType "MatchOptions" ExpressionDimensionValuesProperty = ValueList Prelude.Text
  set newValue ExpressionDimensionValuesProperty {..}
    = ExpressionDimensionValuesProperty
        {matchOptions = Prelude.pure newValue, ..}
instance Property "Values" ExpressionDimensionValuesProperty where
  type PropertyType "Values" ExpressionDimensionValuesProperty = ValueList Prelude.Text
  set newValue ExpressionDimensionValuesProperty {..}
    = ExpressionDimensionValuesProperty
        {values = Prelude.pure newValue, ..}