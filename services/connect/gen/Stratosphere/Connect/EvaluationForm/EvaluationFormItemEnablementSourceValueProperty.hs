module Stratosphere.Connect.EvaluationForm.EvaluationFormItemEnablementSourceValueProperty (
        EvaluationFormItemEnablementSourceValueProperty(..),
        mkEvaluationFormItemEnablementSourceValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EvaluationFormItemEnablementSourceValueProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformitemenablementsourcevalue.html>
    EvaluationFormItemEnablementSourceValueProperty {haddock_workaround_ :: (),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformitemenablementsourcevalue.html#cfn-connect-evaluationform-evaluationformitemenablementsourcevalue-refid>
                                                     refId :: (Prelude.Maybe (Value Prelude.Text)),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformitemenablementsourcevalue.html#cfn-connect-evaluationform-evaluationformitemenablementsourcevalue-type>
                                                     type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEvaluationFormItemEnablementSourceValueProperty ::
  EvaluationFormItemEnablementSourceValueProperty
mkEvaluationFormItemEnablementSourceValueProperty
  = EvaluationFormItemEnablementSourceValueProperty
      {haddock_workaround_ = (), refId = Prelude.Nothing,
       type' = Prelude.Nothing}
instance ToResourceProperties EvaluationFormItemEnablementSourceValueProperty where
  toResourceProperties
    EvaluationFormItemEnablementSourceValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::EvaluationForm.EvaluationFormItemEnablementSourceValue",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RefId" Prelude.<$> refId,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON EvaluationFormItemEnablementSourceValueProperty where
  toJSON EvaluationFormItemEnablementSourceValueProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RefId" Prelude.<$> refId,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "RefId" EvaluationFormItemEnablementSourceValueProperty where
  type PropertyType "RefId" EvaluationFormItemEnablementSourceValueProperty = Value Prelude.Text
  set newValue EvaluationFormItemEnablementSourceValueProperty {..}
    = EvaluationFormItemEnablementSourceValueProperty
        {refId = Prelude.pure newValue, ..}
instance Property "Type" EvaluationFormItemEnablementSourceValueProperty where
  type PropertyType "Type" EvaluationFormItemEnablementSourceValueProperty = Value Prelude.Text
  set newValue EvaluationFormItemEnablementSourceValueProperty {..}
    = EvaluationFormItemEnablementSourceValueProperty
        {type' = Prelude.pure newValue, ..}