module Stratosphere.Lex.Bot.IntentConfirmationSettingProperty (
        module Exports, IntentConfirmationSettingProperty(..),
        mkIntentConfirmationSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.ConditionalSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.DialogCodeHookInvocationSettingProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.DialogStateProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.ElicitationCodeHookInvocationSettingProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.PromptSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.ResponseSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IntentConfirmationSettingProperty
  = IntentConfirmationSettingProperty {codeHook :: (Prelude.Maybe DialogCodeHookInvocationSettingProperty),
                                       confirmationConditional :: (Prelude.Maybe ConditionalSpecificationProperty),
                                       confirmationNextStep :: (Prelude.Maybe DialogStateProperty),
                                       confirmationResponse :: (Prelude.Maybe ResponseSpecificationProperty),
                                       declinationConditional :: (Prelude.Maybe ConditionalSpecificationProperty),
                                       declinationNextStep :: (Prelude.Maybe DialogStateProperty),
                                       declinationResponse :: (Prelude.Maybe ResponseSpecificationProperty),
                                       elicitationCodeHook :: (Prelude.Maybe ElicitationCodeHookInvocationSettingProperty),
                                       failureConditional :: (Prelude.Maybe ConditionalSpecificationProperty),
                                       failureNextStep :: (Prelude.Maybe DialogStateProperty),
                                       failureResponse :: (Prelude.Maybe ResponseSpecificationProperty),
                                       isActive :: (Prelude.Maybe (Value Prelude.Bool)),
                                       promptSpecification :: PromptSpecificationProperty}
mkIntentConfirmationSettingProperty ::
  PromptSpecificationProperty -> IntentConfirmationSettingProperty
mkIntentConfirmationSettingProperty promptSpecification
  = IntentConfirmationSettingProperty
      {promptSpecification = promptSpecification,
       codeHook = Prelude.Nothing,
       confirmationConditional = Prelude.Nothing,
       confirmationNextStep = Prelude.Nothing,
       confirmationResponse = Prelude.Nothing,
       declinationConditional = Prelude.Nothing,
       declinationNextStep = Prelude.Nothing,
       declinationResponse = Prelude.Nothing,
       elicitationCodeHook = Prelude.Nothing,
       failureConditional = Prelude.Nothing,
       failureNextStep = Prelude.Nothing,
       failureResponse = Prelude.Nothing, isActive = Prelude.Nothing}
instance ToResourceProperties IntentConfirmationSettingProperty where
  toResourceProperties IntentConfirmationSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.IntentConfirmationSetting",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PromptSpecification" JSON..= promptSpecification]
                           (Prelude.catMaybes
                              [(JSON..=) "CodeHook" Prelude.<$> codeHook,
                               (JSON..=) "ConfirmationConditional"
                                 Prelude.<$> confirmationConditional,
                               (JSON..=) "ConfirmationNextStep" Prelude.<$> confirmationNextStep,
                               (JSON..=) "ConfirmationResponse" Prelude.<$> confirmationResponse,
                               (JSON..=) "DeclinationConditional"
                                 Prelude.<$> declinationConditional,
                               (JSON..=) "DeclinationNextStep" Prelude.<$> declinationNextStep,
                               (JSON..=) "DeclinationResponse" Prelude.<$> declinationResponse,
                               (JSON..=) "ElicitationCodeHook" Prelude.<$> elicitationCodeHook,
                               (JSON..=) "FailureConditional" Prelude.<$> failureConditional,
                               (JSON..=) "FailureNextStep" Prelude.<$> failureNextStep,
                               (JSON..=) "FailureResponse" Prelude.<$> failureResponse,
                               (JSON..=) "IsActive" Prelude.<$> isActive]))}
instance JSON.ToJSON IntentConfirmationSettingProperty where
  toJSON IntentConfirmationSettingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PromptSpecification" JSON..= promptSpecification]
              (Prelude.catMaybes
                 [(JSON..=) "CodeHook" Prelude.<$> codeHook,
                  (JSON..=) "ConfirmationConditional"
                    Prelude.<$> confirmationConditional,
                  (JSON..=) "ConfirmationNextStep" Prelude.<$> confirmationNextStep,
                  (JSON..=) "ConfirmationResponse" Prelude.<$> confirmationResponse,
                  (JSON..=) "DeclinationConditional"
                    Prelude.<$> declinationConditional,
                  (JSON..=) "DeclinationNextStep" Prelude.<$> declinationNextStep,
                  (JSON..=) "DeclinationResponse" Prelude.<$> declinationResponse,
                  (JSON..=) "ElicitationCodeHook" Prelude.<$> elicitationCodeHook,
                  (JSON..=) "FailureConditional" Prelude.<$> failureConditional,
                  (JSON..=) "FailureNextStep" Prelude.<$> failureNextStep,
                  (JSON..=) "FailureResponse" Prelude.<$> failureResponse,
                  (JSON..=) "IsActive" Prelude.<$> isActive])))
instance Property "CodeHook" IntentConfirmationSettingProperty where
  type PropertyType "CodeHook" IntentConfirmationSettingProperty = DialogCodeHookInvocationSettingProperty
  set newValue IntentConfirmationSettingProperty {..}
    = IntentConfirmationSettingProperty
        {codeHook = Prelude.pure newValue, ..}
instance Property "ConfirmationConditional" IntentConfirmationSettingProperty where
  type PropertyType "ConfirmationConditional" IntentConfirmationSettingProperty = ConditionalSpecificationProperty
  set newValue IntentConfirmationSettingProperty {..}
    = IntentConfirmationSettingProperty
        {confirmationConditional = Prelude.pure newValue, ..}
instance Property "ConfirmationNextStep" IntentConfirmationSettingProperty where
  type PropertyType "ConfirmationNextStep" IntentConfirmationSettingProperty = DialogStateProperty
  set newValue IntentConfirmationSettingProperty {..}
    = IntentConfirmationSettingProperty
        {confirmationNextStep = Prelude.pure newValue, ..}
instance Property "ConfirmationResponse" IntentConfirmationSettingProperty where
  type PropertyType "ConfirmationResponse" IntentConfirmationSettingProperty = ResponseSpecificationProperty
  set newValue IntentConfirmationSettingProperty {..}
    = IntentConfirmationSettingProperty
        {confirmationResponse = Prelude.pure newValue, ..}
instance Property "DeclinationConditional" IntentConfirmationSettingProperty where
  type PropertyType "DeclinationConditional" IntentConfirmationSettingProperty = ConditionalSpecificationProperty
  set newValue IntentConfirmationSettingProperty {..}
    = IntentConfirmationSettingProperty
        {declinationConditional = Prelude.pure newValue, ..}
instance Property "DeclinationNextStep" IntentConfirmationSettingProperty where
  type PropertyType "DeclinationNextStep" IntentConfirmationSettingProperty = DialogStateProperty
  set newValue IntentConfirmationSettingProperty {..}
    = IntentConfirmationSettingProperty
        {declinationNextStep = Prelude.pure newValue, ..}
instance Property "DeclinationResponse" IntentConfirmationSettingProperty where
  type PropertyType "DeclinationResponse" IntentConfirmationSettingProperty = ResponseSpecificationProperty
  set newValue IntentConfirmationSettingProperty {..}
    = IntentConfirmationSettingProperty
        {declinationResponse = Prelude.pure newValue, ..}
instance Property "ElicitationCodeHook" IntentConfirmationSettingProperty where
  type PropertyType "ElicitationCodeHook" IntentConfirmationSettingProperty = ElicitationCodeHookInvocationSettingProperty
  set newValue IntentConfirmationSettingProperty {..}
    = IntentConfirmationSettingProperty
        {elicitationCodeHook = Prelude.pure newValue, ..}
instance Property "FailureConditional" IntentConfirmationSettingProperty where
  type PropertyType "FailureConditional" IntentConfirmationSettingProperty = ConditionalSpecificationProperty
  set newValue IntentConfirmationSettingProperty {..}
    = IntentConfirmationSettingProperty
        {failureConditional = Prelude.pure newValue, ..}
instance Property "FailureNextStep" IntentConfirmationSettingProperty where
  type PropertyType "FailureNextStep" IntentConfirmationSettingProperty = DialogStateProperty
  set newValue IntentConfirmationSettingProperty {..}
    = IntentConfirmationSettingProperty
        {failureNextStep = Prelude.pure newValue, ..}
instance Property "FailureResponse" IntentConfirmationSettingProperty where
  type PropertyType "FailureResponse" IntentConfirmationSettingProperty = ResponseSpecificationProperty
  set newValue IntentConfirmationSettingProperty {..}
    = IntentConfirmationSettingProperty
        {failureResponse = Prelude.pure newValue, ..}
instance Property "IsActive" IntentConfirmationSettingProperty where
  type PropertyType "IsActive" IntentConfirmationSettingProperty = Value Prelude.Bool
  set newValue IntentConfirmationSettingProperty {..}
    = IntentConfirmationSettingProperty
        {isActive = Prelude.pure newValue, ..}
instance Property "PromptSpecification" IntentConfirmationSettingProperty where
  type PropertyType "PromptSpecification" IntentConfirmationSettingProperty = PromptSpecificationProperty
  set newValue IntentConfirmationSettingProperty {..}
    = IntentConfirmationSettingProperty
        {promptSpecification = newValue, ..}