module Stratosphere.Lex.Bot.PromptSpecificationProperty (
        module Exports, PromptSpecificationProperty(..),
        mkPromptSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.MessageGroupProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.PromptAttemptSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PromptSpecificationProperty
  = PromptSpecificationProperty {allowInterrupt :: (Prelude.Maybe (Value Prelude.Bool)),
                                 maxRetries :: (Value Prelude.Integer),
                                 messageGroupsList :: [MessageGroupProperty],
                                 messageSelectionStrategy :: (Prelude.Maybe (Value Prelude.Text)),
                                 promptAttemptsSpecification :: (Prelude.Maybe (Prelude.Map Prelude.Text PromptAttemptSpecificationProperty))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPromptSpecificationProperty ::
  Value Prelude.Integer
  -> [MessageGroupProperty] -> PromptSpecificationProperty
mkPromptSpecificationProperty maxRetries messageGroupsList
  = PromptSpecificationProperty
      {maxRetries = maxRetries, messageGroupsList = messageGroupsList,
       allowInterrupt = Prelude.Nothing,
       messageSelectionStrategy = Prelude.Nothing,
       promptAttemptsSpecification = Prelude.Nothing}
instance ToResourceProperties PromptSpecificationProperty where
  toResourceProperties PromptSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.PromptSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MaxRetries" JSON..= maxRetries,
                            "MessageGroupsList" JSON..= messageGroupsList]
                           (Prelude.catMaybes
                              [(JSON..=) "AllowInterrupt" Prelude.<$> allowInterrupt,
                               (JSON..=) "MessageSelectionStrategy"
                                 Prelude.<$> messageSelectionStrategy,
                               (JSON..=) "PromptAttemptsSpecification"
                                 Prelude.<$> promptAttemptsSpecification]))}
instance JSON.ToJSON PromptSpecificationProperty where
  toJSON PromptSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MaxRetries" JSON..= maxRetries,
               "MessageGroupsList" JSON..= messageGroupsList]
              (Prelude.catMaybes
                 [(JSON..=) "AllowInterrupt" Prelude.<$> allowInterrupt,
                  (JSON..=) "MessageSelectionStrategy"
                    Prelude.<$> messageSelectionStrategy,
                  (JSON..=) "PromptAttemptsSpecification"
                    Prelude.<$> promptAttemptsSpecification])))
instance Property "AllowInterrupt" PromptSpecificationProperty where
  type PropertyType "AllowInterrupt" PromptSpecificationProperty = Value Prelude.Bool
  set newValue PromptSpecificationProperty {..}
    = PromptSpecificationProperty
        {allowInterrupt = Prelude.pure newValue, ..}
instance Property "MaxRetries" PromptSpecificationProperty where
  type PropertyType "MaxRetries" PromptSpecificationProperty = Value Prelude.Integer
  set newValue PromptSpecificationProperty {..}
    = PromptSpecificationProperty {maxRetries = newValue, ..}
instance Property "MessageGroupsList" PromptSpecificationProperty where
  type PropertyType "MessageGroupsList" PromptSpecificationProperty = [MessageGroupProperty]
  set newValue PromptSpecificationProperty {..}
    = PromptSpecificationProperty {messageGroupsList = newValue, ..}
instance Property "MessageSelectionStrategy" PromptSpecificationProperty where
  type PropertyType "MessageSelectionStrategy" PromptSpecificationProperty = Value Prelude.Text
  set newValue PromptSpecificationProperty {..}
    = PromptSpecificationProperty
        {messageSelectionStrategy = Prelude.pure newValue, ..}
instance Property "PromptAttemptsSpecification" PromptSpecificationProperty where
  type PropertyType "PromptAttemptsSpecification" PromptSpecificationProperty = Prelude.Map Prelude.Text PromptAttemptSpecificationProperty
  set newValue PromptSpecificationProperty {..}
    = PromptSpecificationProperty
        {promptAttemptsSpecification = Prelude.pure newValue, ..}