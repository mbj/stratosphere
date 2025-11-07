module Stratosphere.Connect.EvaluationForm.EvaluationFormItemEnablementConditionProperty (
        module Exports, EvaluationFormItemEnablementConditionProperty(..),
        mkEvaluationFormItemEnablementConditionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.EvaluationForm.EvaluationFormItemEnablementConditionOperandProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EvaluationFormItemEnablementConditionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformitemenablementcondition.html>
    EvaluationFormItemEnablementConditionProperty {haddock_workaround_ :: (),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformitemenablementcondition.html#cfn-connect-evaluationform-evaluationformitemenablementcondition-operands>
                                                   operands :: [EvaluationFormItemEnablementConditionOperandProperty],
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformitemenablementcondition.html#cfn-connect-evaluationform-evaluationformitemenablementcondition-operator>
                                                   operator :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEvaluationFormItemEnablementConditionProperty ::
  [EvaluationFormItemEnablementConditionOperandProperty]
  -> EvaluationFormItemEnablementConditionProperty
mkEvaluationFormItemEnablementConditionProperty operands
  = EvaluationFormItemEnablementConditionProperty
      {haddock_workaround_ = (), operands = operands,
       operator = Prelude.Nothing}
instance ToResourceProperties EvaluationFormItemEnablementConditionProperty where
  toResourceProperties
    EvaluationFormItemEnablementConditionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::EvaluationForm.EvaluationFormItemEnablementCondition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Operands" JSON..= operands]
                           (Prelude.catMaybes [(JSON..=) "Operator" Prelude.<$> operator]))}
instance JSON.ToJSON EvaluationFormItemEnablementConditionProperty where
  toJSON EvaluationFormItemEnablementConditionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Operands" JSON..= operands]
              (Prelude.catMaybes [(JSON..=) "Operator" Prelude.<$> operator])))
instance Property "Operands" EvaluationFormItemEnablementConditionProperty where
  type PropertyType "Operands" EvaluationFormItemEnablementConditionProperty = [EvaluationFormItemEnablementConditionOperandProperty]
  set newValue EvaluationFormItemEnablementConditionProperty {..}
    = EvaluationFormItemEnablementConditionProperty
        {operands = newValue, ..}
instance Property "Operator" EvaluationFormItemEnablementConditionProperty where
  type PropertyType "Operator" EvaluationFormItemEnablementConditionProperty = Value Prelude.Text
  set newValue EvaluationFormItemEnablementConditionProperty {..}
    = EvaluationFormItemEnablementConditionProperty
        {operator = Prelude.pure newValue, ..}