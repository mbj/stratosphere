module Stratosphere.Connect.EvaluationForm.EvaluationFormItemEnablementSourceProperty (
        EvaluationFormItemEnablementSourceProperty(..),
        mkEvaluationFormItemEnablementSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EvaluationFormItemEnablementSourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformitemenablementsource.html>
    EvaluationFormItemEnablementSourceProperty {haddock_workaround_ :: (),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformitemenablementsource.html#cfn-connect-evaluationform-evaluationformitemenablementsource-refid>
                                                refId :: (Prelude.Maybe (Value Prelude.Text)),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformitemenablementsource.html#cfn-connect-evaluationform-evaluationformitemenablementsource-type>
                                                type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEvaluationFormItemEnablementSourceProperty ::
  Value Prelude.Text -> EvaluationFormItemEnablementSourceProperty
mkEvaluationFormItemEnablementSourceProperty type'
  = EvaluationFormItemEnablementSourceProperty
      {haddock_workaround_ = (), type' = type', refId = Prelude.Nothing}
instance ToResourceProperties EvaluationFormItemEnablementSourceProperty where
  toResourceProperties
    EvaluationFormItemEnablementSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::EvaluationForm.EvaluationFormItemEnablementSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes [(JSON..=) "RefId" Prelude.<$> refId]))}
instance JSON.ToJSON EvaluationFormItemEnablementSourceProperty where
  toJSON EvaluationFormItemEnablementSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes [(JSON..=) "RefId" Prelude.<$> refId])))
instance Property "RefId" EvaluationFormItemEnablementSourceProperty where
  type PropertyType "RefId" EvaluationFormItemEnablementSourceProperty = Value Prelude.Text
  set newValue EvaluationFormItemEnablementSourceProperty {..}
    = EvaluationFormItemEnablementSourceProperty
        {refId = Prelude.pure newValue, ..}
instance Property "Type" EvaluationFormItemEnablementSourceProperty where
  type PropertyType "Type" EvaluationFormItemEnablementSourceProperty = Value Prelude.Text
  set newValue EvaluationFormItemEnablementSourceProperty {..}
    = EvaluationFormItemEnablementSourceProperty {type' = newValue, ..}