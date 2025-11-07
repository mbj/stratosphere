module Stratosphere.Connect.EvaluationForm.EvaluationFormItemEnablementConditionOperandProperty (
        module Exports,
        EvaluationFormItemEnablementConditionOperandProperty(..),
        mkEvaluationFormItemEnablementConditionOperandProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.EvaluationForm.EvaluationFormItemEnablementExpressionProperty as Exports
import Stratosphere.ResourceProperties
data EvaluationFormItemEnablementConditionOperandProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformitemenablementconditionoperand.html>
    EvaluationFormItemEnablementConditionOperandProperty {haddock_workaround_ :: (),
                                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformitemenablementconditionoperand.html#cfn-connect-evaluationform-evaluationformitemenablementconditionoperand-expression>
                                                          expression :: (Prelude.Maybe EvaluationFormItemEnablementExpressionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEvaluationFormItemEnablementConditionOperandProperty ::
  EvaluationFormItemEnablementConditionOperandProperty
mkEvaluationFormItemEnablementConditionOperandProperty
  = EvaluationFormItemEnablementConditionOperandProperty
      {haddock_workaround_ = (), expression = Prelude.Nothing}
instance ToResourceProperties EvaluationFormItemEnablementConditionOperandProperty where
  toResourceProperties
    EvaluationFormItemEnablementConditionOperandProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::EvaluationForm.EvaluationFormItemEnablementConditionOperand",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Expression" Prelude.<$> expression])}
instance JSON.ToJSON EvaluationFormItemEnablementConditionOperandProperty where
  toJSON EvaluationFormItemEnablementConditionOperandProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Expression" Prelude.<$> expression]))
instance Property "Expression" EvaluationFormItemEnablementConditionOperandProperty where
  type PropertyType "Expression" EvaluationFormItemEnablementConditionOperandProperty = EvaluationFormItemEnablementExpressionProperty
  set
    newValue
    EvaluationFormItemEnablementConditionOperandProperty {..}
    = EvaluationFormItemEnablementConditionOperandProperty
        {expression = Prelude.pure newValue, ..}