module Stratosphere.Connect.EvaluationForm.EvaluationFormItemEnablementConfigurationProperty (
        module Exports,
        EvaluationFormItemEnablementConfigurationProperty(..),
        mkEvaluationFormItemEnablementConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.EvaluationForm.EvaluationFormItemEnablementConditionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EvaluationFormItemEnablementConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformitemenablementconfiguration.html>
    EvaluationFormItemEnablementConfigurationProperty {haddock_workaround_ :: (),
                                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformitemenablementconfiguration.html#cfn-connect-evaluationform-evaluationformitemenablementconfiguration-action>
                                                       action :: (Value Prelude.Text),
                                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformitemenablementconfiguration.html#cfn-connect-evaluationform-evaluationformitemenablementconfiguration-condition>
                                                       condition :: EvaluationFormItemEnablementConditionProperty,
                                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformitemenablementconfiguration.html#cfn-connect-evaluationform-evaluationformitemenablementconfiguration-defaultaction>
                                                       defaultAction :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEvaluationFormItemEnablementConfigurationProperty ::
  Value Prelude.Text
  -> EvaluationFormItemEnablementConditionProperty
     -> EvaluationFormItemEnablementConfigurationProperty
mkEvaluationFormItemEnablementConfigurationProperty
  action
  condition
  = EvaluationFormItemEnablementConfigurationProperty
      {haddock_workaround_ = (), action = action, condition = condition,
       defaultAction = Prelude.Nothing}
instance ToResourceProperties EvaluationFormItemEnablementConfigurationProperty where
  toResourceProperties
    EvaluationFormItemEnablementConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::EvaluationForm.EvaluationFormItemEnablementConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Action" JSON..= action, "Condition" JSON..= condition]
                           (Prelude.catMaybes
                              [(JSON..=) "DefaultAction" Prelude.<$> defaultAction]))}
instance JSON.ToJSON EvaluationFormItemEnablementConfigurationProperty where
  toJSON EvaluationFormItemEnablementConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Action" JSON..= action, "Condition" JSON..= condition]
              (Prelude.catMaybes
                 [(JSON..=) "DefaultAction" Prelude.<$> defaultAction])))
instance Property "Action" EvaluationFormItemEnablementConfigurationProperty where
  type PropertyType "Action" EvaluationFormItemEnablementConfigurationProperty = Value Prelude.Text
  set newValue EvaluationFormItemEnablementConfigurationProperty {..}
    = EvaluationFormItemEnablementConfigurationProperty
        {action = newValue, ..}
instance Property "Condition" EvaluationFormItemEnablementConfigurationProperty where
  type PropertyType "Condition" EvaluationFormItemEnablementConfigurationProperty = EvaluationFormItemEnablementConditionProperty
  set newValue EvaluationFormItemEnablementConfigurationProperty {..}
    = EvaluationFormItemEnablementConfigurationProperty
        {condition = newValue, ..}
instance Property "DefaultAction" EvaluationFormItemEnablementConfigurationProperty where
  type PropertyType "DefaultAction" EvaluationFormItemEnablementConfigurationProperty = Value Prelude.Text
  set newValue EvaluationFormItemEnablementConfigurationProperty {..}
    = EvaluationFormItemEnablementConfigurationProperty
        {defaultAction = Prelude.pure newValue, ..}