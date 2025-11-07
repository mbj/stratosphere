module Stratosphere.Lex.Bot.BKBExactResponseFieldsProperty (
        BKBExactResponseFieldsProperty(..),
        mkBKBExactResponseFieldsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BKBExactResponseFieldsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-bkbexactresponsefields.html>
    BKBExactResponseFieldsProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-bkbexactresponsefields.html#cfn-lex-bot-bkbexactresponsefields-answerfield>
                                    answerField :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBKBExactResponseFieldsProperty :: BKBExactResponseFieldsProperty
mkBKBExactResponseFieldsProperty
  = BKBExactResponseFieldsProperty
      {haddock_workaround_ = (), answerField = Prelude.Nothing}
instance ToResourceProperties BKBExactResponseFieldsProperty where
  toResourceProperties BKBExactResponseFieldsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.BKBExactResponseFields",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AnswerField" Prelude.<$> answerField])}
instance JSON.ToJSON BKBExactResponseFieldsProperty where
  toJSON BKBExactResponseFieldsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AnswerField" Prelude.<$> answerField]))
instance Property "AnswerField" BKBExactResponseFieldsProperty where
  type PropertyType "AnswerField" BKBExactResponseFieldsProperty = Value Prelude.Text
  set newValue BKBExactResponseFieldsProperty {..}
    = BKBExactResponseFieldsProperty
        {answerField = Prelude.pure newValue, ..}