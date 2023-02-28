module Stratosphere.Lex.Bot.PromptAttemptSpecificationProperty (
        module Exports, PromptAttemptSpecificationProperty(..),
        mkPromptAttemptSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.AllowedInputTypesProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.AudioAndDTMFInputSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.TextInputSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PromptAttemptSpecificationProperty
  = PromptAttemptSpecificationProperty {allowInterrupt :: (Prelude.Maybe (Value Prelude.Bool)),
                                        allowedInputTypes :: AllowedInputTypesProperty,
                                        audioAndDTMFInputSpecification :: (Prelude.Maybe AudioAndDTMFInputSpecificationProperty),
                                        textInputSpecification :: (Prelude.Maybe TextInputSpecificationProperty)}
mkPromptAttemptSpecificationProperty ::
  AllowedInputTypesProperty -> PromptAttemptSpecificationProperty
mkPromptAttemptSpecificationProperty allowedInputTypes
  = PromptAttemptSpecificationProperty
      {allowedInputTypes = allowedInputTypes,
       allowInterrupt = Prelude.Nothing,
       audioAndDTMFInputSpecification = Prelude.Nothing,
       textInputSpecification = Prelude.Nothing}
instance ToResourceProperties PromptAttemptSpecificationProperty where
  toResourceProperties PromptAttemptSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.PromptAttemptSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AllowedInputTypes" JSON..= allowedInputTypes]
                           (Prelude.catMaybes
                              [(JSON..=) "AllowInterrupt" Prelude.<$> allowInterrupt,
                               (JSON..=) "AudioAndDTMFInputSpecification"
                                 Prelude.<$> audioAndDTMFInputSpecification,
                               (JSON..=) "TextInputSpecification"
                                 Prelude.<$> textInputSpecification]))}
instance JSON.ToJSON PromptAttemptSpecificationProperty where
  toJSON PromptAttemptSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AllowedInputTypes" JSON..= allowedInputTypes]
              (Prelude.catMaybes
                 [(JSON..=) "AllowInterrupt" Prelude.<$> allowInterrupt,
                  (JSON..=) "AudioAndDTMFInputSpecification"
                    Prelude.<$> audioAndDTMFInputSpecification,
                  (JSON..=) "TextInputSpecification"
                    Prelude.<$> textInputSpecification])))
instance Property "AllowInterrupt" PromptAttemptSpecificationProperty where
  type PropertyType "AllowInterrupt" PromptAttemptSpecificationProperty = Value Prelude.Bool
  set newValue PromptAttemptSpecificationProperty {..}
    = PromptAttemptSpecificationProperty
        {allowInterrupt = Prelude.pure newValue, ..}
instance Property "AllowedInputTypes" PromptAttemptSpecificationProperty where
  type PropertyType "AllowedInputTypes" PromptAttemptSpecificationProperty = AllowedInputTypesProperty
  set newValue PromptAttemptSpecificationProperty {..}
    = PromptAttemptSpecificationProperty
        {allowedInputTypes = newValue, ..}
instance Property "AudioAndDTMFInputSpecification" PromptAttemptSpecificationProperty where
  type PropertyType "AudioAndDTMFInputSpecification" PromptAttemptSpecificationProperty = AudioAndDTMFInputSpecificationProperty
  set newValue PromptAttemptSpecificationProperty {..}
    = PromptAttemptSpecificationProperty
        {audioAndDTMFInputSpecification = Prelude.pure newValue, ..}
instance Property "TextInputSpecification" PromptAttemptSpecificationProperty where
  type PropertyType "TextInputSpecification" PromptAttemptSpecificationProperty = TextInputSpecificationProperty
  set newValue PromptAttemptSpecificationProperty {..}
    = PromptAttemptSpecificationProperty
        {textInputSpecification = Prelude.pure newValue, ..}