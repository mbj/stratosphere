module Stratosphere.EntityResolution.PolicyStatement (
        PolicyStatement(..), mkPolicyStatement
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PolicyStatement
  = PolicyStatement {action :: (Prelude.Maybe (ValueList Prelude.Text)),
                     arn :: (Value Prelude.Text),
                     condition :: (Prelude.Maybe (Value Prelude.Text)),
                     effect :: (Prelude.Maybe (Value Prelude.Text)),
                     principal :: (Prelude.Maybe (ValueList Prelude.Text)),
                     statementId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPolicyStatement ::
  Value Prelude.Text -> Value Prelude.Text -> PolicyStatement
mkPolicyStatement arn statementId
  = PolicyStatement
      {arn = arn, statementId = statementId, action = Prelude.Nothing,
       condition = Prelude.Nothing, effect = Prelude.Nothing,
       principal = Prelude.Nothing}
instance ToResourceProperties PolicyStatement where
  toResourceProperties PolicyStatement {..}
    = ResourceProperties
        {awsType = "AWS::EntityResolution::PolicyStatement",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Arn" JSON..= arn, "StatementId" JSON..= statementId]
                           (Prelude.catMaybes
                              [(JSON..=) "Action" Prelude.<$> action,
                               (JSON..=) "Condition" Prelude.<$> condition,
                               (JSON..=) "Effect" Prelude.<$> effect,
                               (JSON..=) "Principal" Prelude.<$> principal]))}
instance JSON.ToJSON PolicyStatement where
  toJSON PolicyStatement {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Arn" JSON..= arn, "StatementId" JSON..= statementId]
              (Prelude.catMaybes
                 [(JSON..=) "Action" Prelude.<$> action,
                  (JSON..=) "Condition" Prelude.<$> condition,
                  (JSON..=) "Effect" Prelude.<$> effect,
                  (JSON..=) "Principal" Prelude.<$> principal])))
instance Property "Action" PolicyStatement where
  type PropertyType "Action" PolicyStatement = ValueList Prelude.Text
  set newValue PolicyStatement {..}
    = PolicyStatement {action = Prelude.pure newValue, ..}
instance Property "Arn" PolicyStatement where
  type PropertyType "Arn" PolicyStatement = Value Prelude.Text
  set newValue PolicyStatement {..}
    = PolicyStatement {arn = newValue, ..}
instance Property "Condition" PolicyStatement where
  type PropertyType "Condition" PolicyStatement = Value Prelude.Text
  set newValue PolicyStatement {..}
    = PolicyStatement {condition = Prelude.pure newValue, ..}
instance Property "Effect" PolicyStatement where
  type PropertyType "Effect" PolicyStatement = Value Prelude.Text
  set newValue PolicyStatement {..}
    = PolicyStatement {effect = Prelude.pure newValue, ..}
instance Property "Principal" PolicyStatement where
  type PropertyType "Principal" PolicyStatement = ValueList Prelude.Text
  set newValue PolicyStatement {..}
    = PolicyStatement {principal = Prelude.pure newValue, ..}
instance Property "StatementId" PolicyStatement where
  type PropertyType "StatementId" PolicyStatement = Value Prelude.Text
  set newValue PolicyStatement {..}
    = PolicyStatement {statementId = newValue, ..}