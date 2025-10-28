module Stratosphere.Connect.EvaluationForm.EvaluationFormBaseItemProperty (
        module Exports, EvaluationFormBaseItemProperty(..),
        mkEvaluationFormBaseItemProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.EvaluationForm.EvaluationFormSectionProperty as Exports
import Stratosphere.ResourceProperties
data EvaluationFormBaseItemProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformbaseitem.html>
    EvaluationFormBaseItemProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformbaseitem.html#cfn-connect-evaluationform-evaluationformbaseitem-section>
                                    section :: EvaluationFormSectionProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEvaluationFormBaseItemProperty ::
  EvaluationFormSectionProperty -> EvaluationFormBaseItemProperty
mkEvaluationFormBaseItemProperty section
  = EvaluationFormBaseItemProperty {section = section}
instance ToResourceProperties EvaluationFormBaseItemProperty where
  toResourceProperties EvaluationFormBaseItemProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::EvaluationForm.EvaluationFormBaseItem",
         supportsTags = Prelude.False,
         properties = ["Section" JSON..= section]}
instance JSON.ToJSON EvaluationFormBaseItemProperty where
  toJSON EvaluationFormBaseItemProperty {..}
    = JSON.object ["Section" JSON..= section]
instance Property "Section" EvaluationFormBaseItemProperty where
  type PropertyType "Section" EvaluationFormBaseItemProperty = EvaluationFormSectionProperty
  set newValue EvaluationFormBaseItemProperty {}
    = EvaluationFormBaseItemProperty {section = newValue, ..}