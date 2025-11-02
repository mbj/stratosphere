module Stratosphere.Lex.Bot.ConditionProperty (
        ConditionProperty(..), mkConditionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConditionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-condition.html>
    ConditionProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-condition.html#cfn-lex-bot-condition-expressionstring>
                       expressionString :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConditionProperty :: Value Prelude.Text -> ConditionProperty
mkConditionProperty expressionString
  = ConditionProperty
      {haddock_workaround_ = (), expressionString = expressionString}
instance ToResourceProperties ConditionProperty where
  toResourceProperties ConditionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.Condition", supportsTags = Prelude.False,
         properties = ["ExpressionString" JSON..= expressionString]}
instance JSON.ToJSON ConditionProperty where
  toJSON ConditionProperty {..}
    = JSON.object ["ExpressionString" JSON..= expressionString]
instance Property "ExpressionString" ConditionProperty where
  type PropertyType "ExpressionString" ConditionProperty = Value Prelude.Text
  set newValue ConditionProperty {..}
    = ConditionProperty {expressionString = newValue, ..}