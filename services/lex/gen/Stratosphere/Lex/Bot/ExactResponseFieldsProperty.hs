module Stratosphere.Lex.Bot.ExactResponseFieldsProperty (
        ExactResponseFieldsProperty(..), mkExactResponseFieldsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExactResponseFieldsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-exactresponsefields.html>
    ExactResponseFieldsProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-exactresponsefields.html#cfn-lex-bot-exactresponsefields-answerfield>
                                 answerField :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-exactresponsefields.html#cfn-lex-bot-exactresponsefields-questionfield>
                                 questionField :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExactResponseFieldsProperty :: ExactResponseFieldsProperty
mkExactResponseFieldsProperty
  = ExactResponseFieldsProperty
      {haddock_workaround_ = (), answerField = Prelude.Nothing,
       questionField = Prelude.Nothing}
instance ToResourceProperties ExactResponseFieldsProperty where
  toResourceProperties ExactResponseFieldsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.ExactResponseFields",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AnswerField" Prelude.<$> answerField,
                            (JSON..=) "QuestionField" Prelude.<$> questionField])}
instance JSON.ToJSON ExactResponseFieldsProperty where
  toJSON ExactResponseFieldsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AnswerField" Prelude.<$> answerField,
               (JSON..=) "QuestionField" Prelude.<$> questionField]))
instance Property "AnswerField" ExactResponseFieldsProperty where
  type PropertyType "AnswerField" ExactResponseFieldsProperty = Value Prelude.Text
  set newValue ExactResponseFieldsProperty {..}
    = ExactResponseFieldsProperty
        {answerField = Prelude.pure newValue, ..}
instance Property "QuestionField" ExactResponseFieldsProperty where
  type PropertyType "QuestionField" ExactResponseFieldsProperty = Value Prelude.Text
  set newValue ExactResponseFieldsProperty {..}
    = ExactResponseFieldsProperty
        {questionField = Prelude.pure newValue, ..}