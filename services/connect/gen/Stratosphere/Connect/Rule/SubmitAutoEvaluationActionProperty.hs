module Stratosphere.Connect.Rule.SubmitAutoEvaluationActionProperty (
        SubmitAutoEvaluationActionProperty(..),
        mkSubmitAutoEvaluationActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SubmitAutoEvaluationActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-rule-submitautoevaluationaction.html>
    SubmitAutoEvaluationActionProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-rule-submitautoevaluationaction.html#cfn-connect-rule-submitautoevaluationaction-evaluationformarn>
                                        evaluationFormArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSubmitAutoEvaluationActionProperty ::
  Value Prelude.Text -> SubmitAutoEvaluationActionProperty
mkSubmitAutoEvaluationActionProperty evaluationFormArn
  = SubmitAutoEvaluationActionProperty
      {haddock_workaround_ = (), evaluationFormArn = evaluationFormArn}
instance ToResourceProperties SubmitAutoEvaluationActionProperty where
  toResourceProperties SubmitAutoEvaluationActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::Rule.SubmitAutoEvaluationAction",
         supportsTags = Prelude.False,
         properties = ["EvaluationFormArn" JSON..= evaluationFormArn]}
instance JSON.ToJSON SubmitAutoEvaluationActionProperty where
  toJSON SubmitAutoEvaluationActionProperty {..}
    = JSON.object ["EvaluationFormArn" JSON..= evaluationFormArn]
instance Property "EvaluationFormArn" SubmitAutoEvaluationActionProperty where
  type PropertyType "EvaluationFormArn" SubmitAutoEvaluationActionProperty = Value Prelude.Text
  set newValue SubmitAutoEvaluationActionProperty {..}
    = SubmitAutoEvaluationActionProperty
        {evaluationFormArn = newValue, ..}