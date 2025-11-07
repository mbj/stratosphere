module Stratosphere.Connect.EvaluationForm.EvaluationFormTextQuestionPropertiesProperty (
        module Exports, EvaluationFormTextQuestionPropertiesProperty(..),
        mkEvaluationFormTextQuestionPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.EvaluationForm.EvaluationFormTextQuestionAutomationProperty as Exports
import Stratosphere.ResourceProperties
data EvaluationFormTextQuestionPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformtextquestionproperties.html>
    EvaluationFormTextQuestionPropertiesProperty {haddock_workaround_ :: (),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformtextquestionproperties.html#cfn-connect-evaluationform-evaluationformtextquestionproperties-automation>
                                                  automation :: (Prelude.Maybe EvaluationFormTextQuestionAutomationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEvaluationFormTextQuestionPropertiesProperty ::
  EvaluationFormTextQuestionPropertiesProperty
mkEvaluationFormTextQuestionPropertiesProperty
  = EvaluationFormTextQuestionPropertiesProperty
      {haddock_workaround_ = (), automation = Prelude.Nothing}
instance ToResourceProperties EvaluationFormTextQuestionPropertiesProperty where
  toResourceProperties
    EvaluationFormTextQuestionPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::EvaluationForm.EvaluationFormTextQuestionProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Automation" Prelude.<$> automation])}
instance JSON.ToJSON EvaluationFormTextQuestionPropertiesProperty where
  toJSON EvaluationFormTextQuestionPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Automation" Prelude.<$> automation]))
instance Property "Automation" EvaluationFormTextQuestionPropertiesProperty where
  type PropertyType "Automation" EvaluationFormTextQuestionPropertiesProperty = EvaluationFormTextQuestionAutomationProperty
  set newValue EvaluationFormTextQuestionPropertiesProperty {..}
    = EvaluationFormTextQuestionPropertiesProperty
        {automation = Prelude.pure newValue, ..}