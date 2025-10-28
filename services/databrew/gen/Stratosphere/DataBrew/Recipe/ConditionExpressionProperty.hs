module Stratosphere.DataBrew.Recipe.ConditionExpressionProperty (
        ConditionExpressionProperty(..), mkConditionExpressionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConditionExpressionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-recipe-conditionexpression.html>
    ConditionExpressionProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-recipe-conditionexpression.html#cfn-databrew-recipe-conditionexpression-condition>
                                 condition :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-recipe-conditionexpression.html#cfn-databrew-recipe-conditionexpression-targetcolumn>
                                 targetColumn :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-recipe-conditionexpression.html#cfn-databrew-recipe-conditionexpression-value>
                                 value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConditionExpressionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ConditionExpressionProperty
mkConditionExpressionProperty condition targetColumn
  = ConditionExpressionProperty
      {haddock_workaround_ = (), condition = condition,
       targetColumn = targetColumn, value = Prelude.Nothing}
instance ToResourceProperties ConditionExpressionProperty where
  toResourceProperties ConditionExpressionProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Recipe.ConditionExpression",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Condition" JSON..= condition,
                            "TargetColumn" JSON..= targetColumn]
                           (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value]))}
instance JSON.ToJSON ConditionExpressionProperty where
  toJSON ConditionExpressionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Condition" JSON..= condition,
               "TargetColumn" JSON..= targetColumn]
              (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value])))
instance Property "Condition" ConditionExpressionProperty where
  type PropertyType "Condition" ConditionExpressionProperty = Value Prelude.Text
  set newValue ConditionExpressionProperty {..}
    = ConditionExpressionProperty {condition = newValue, ..}
instance Property "TargetColumn" ConditionExpressionProperty where
  type PropertyType "TargetColumn" ConditionExpressionProperty = Value Prelude.Text
  set newValue ConditionExpressionProperty {..}
    = ConditionExpressionProperty {targetColumn = newValue, ..}
instance Property "Value" ConditionExpressionProperty where
  type PropertyType "Value" ConditionExpressionProperty = Value Prelude.Text
  set newValue ConditionExpressionProperty {..}
    = ConditionExpressionProperty {value = Prelude.pure newValue, ..}