module Stratosphere.Connect.EvaluationForm.EvaluationFormItemEnablementExpressionProperty (
        module Exports, EvaluationFormItemEnablementExpressionProperty(..),
        mkEvaluationFormItemEnablementExpressionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.EvaluationForm.EvaluationFormItemEnablementSourceProperty as Exports
import {-# SOURCE #-} Stratosphere.Connect.EvaluationForm.EvaluationFormItemEnablementSourceValueProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EvaluationFormItemEnablementExpressionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformitemenablementexpression.html>
    EvaluationFormItemEnablementExpressionProperty {haddock_workaround_ :: (),
                                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformitemenablementexpression.html#cfn-connect-evaluationform-evaluationformitemenablementexpression-comparator>
                                                    comparator :: (Value Prelude.Text),
                                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformitemenablementexpression.html#cfn-connect-evaluationform-evaluationformitemenablementexpression-source>
                                                    source :: EvaluationFormItemEnablementSourceProperty,
                                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformitemenablementexpression.html#cfn-connect-evaluationform-evaluationformitemenablementexpression-values>
                                                    values :: [EvaluationFormItemEnablementSourceValueProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEvaluationFormItemEnablementExpressionProperty ::
  Value Prelude.Text
  -> EvaluationFormItemEnablementSourceProperty
     -> [EvaluationFormItemEnablementSourceValueProperty]
        -> EvaluationFormItemEnablementExpressionProperty
mkEvaluationFormItemEnablementExpressionProperty
  comparator
  source
  values
  = EvaluationFormItemEnablementExpressionProperty
      {haddock_workaround_ = (), comparator = comparator,
       source = source, values = values}
instance ToResourceProperties EvaluationFormItemEnablementExpressionProperty where
  toResourceProperties
    EvaluationFormItemEnablementExpressionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::EvaluationForm.EvaluationFormItemEnablementExpression",
         supportsTags = Prelude.False,
         properties = ["Comparator" JSON..= comparator,
                       "Source" JSON..= source, "Values" JSON..= values]}
instance JSON.ToJSON EvaluationFormItemEnablementExpressionProperty where
  toJSON EvaluationFormItemEnablementExpressionProperty {..}
    = JSON.object
        ["Comparator" JSON..= comparator, "Source" JSON..= source,
         "Values" JSON..= values]
instance Property "Comparator" EvaluationFormItemEnablementExpressionProperty where
  type PropertyType "Comparator" EvaluationFormItemEnablementExpressionProperty = Value Prelude.Text
  set newValue EvaluationFormItemEnablementExpressionProperty {..}
    = EvaluationFormItemEnablementExpressionProperty
        {comparator = newValue, ..}
instance Property "Source" EvaluationFormItemEnablementExpressionProperty where
  type PropertyType "Source" EvaluationFormItemEnablementExpressionProperty = EvaluationFormItemEnablementSourceProperty
  set newValue EvaluationFormItemEnablementExpressionProperty {..}
    = EvaluationFormItemEnablementExpressionProperty
        {source = newValue, ..}
instance Property "Values" EvaluationFormItemEnablementExpressionProperty where
  type PropertyType "Values" EvaluationFormItemEnablementExpressionProperty = [EvaluationFormItemEnablementSourceValueProperty]
  set newValue EvaluationFormItemEnablementExpressionProperty {..}
    = EvaluationFormItemEnablementExpressionProperty
        {values = newValue, ..}