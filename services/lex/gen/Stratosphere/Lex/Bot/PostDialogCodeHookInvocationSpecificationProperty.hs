module Stratosphere.Lex.Bot.PostDialogCodeHookInvocationSpecificationProperty (
        module Exports,
        PostDialogCodeHookInvocationSpecificationProperty(..),
        mkPostDialogCodeHookInvocationSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.ConditionalSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.DialogStateProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.ResponseSpecificationProperty as Exports
import Stratosphere.ResourceProperties
data PostDialogCodeHookInvocationSpecificationProperty
  = PostDialogCodeHookInvocationSpecificationProperty {failureConditional :: (Prelude.Maybe ConditionalSpecificationProperty),
                                                       failureNextStep :: (Prelude.Maybe DialogStateProperty),
                                                       failureResponse :: (Prelude.Maybe ResponseSpecificationProperty),
                                                       successConditional :: (Prelude.Maybe ConditionalSpecificationProperty),
                                                       successNextStep :: (Prelude.Maybe DialogStateProperty),
                                                       successResponse :: (Prelude.Maybe ResponseSpecificationProperty),
                                                       timeoutConditional :: (Prelude.Maybe ConditionalSpecificationProperty),
                                                       timeoutNextStep :: (Prelude.Maybe DialogStateProperty),
                                                       timeoutResponse :: (Prelude.Maybe ResponseSpecificationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPostDialogCodeHookInvocationSpecificationProperty ::
  PostDialogCodeHookInvocationSpecificationProperty
mkPostDialogCodeHookInvocationSpecificationProperty
  = PostDialogCodeHookInvocationSpecificationProperty
      {failureConditional = Prelude.Nothing,
       failureNextStep = Prelude.Nothing,
       failureResponse = Prelude.Nothing,
       successConditional = Prelude.Nothing,
       successNextStep = Prelude.Nothing,
       successResponse = Prelude.Nothing,
       timeoutConditional = Prelude.Nothing,
       timeoutNextStep = Prelude.Nothing,
       timeoutResponse = Prelude.Nothing}
instance ToResourceProperties PostDialogCodeHookInvocationSpecificationProperty where
  toResourceProperties
    PostDialogCodeHookInvocationSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.PostDialogCodeHookInvocationSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FailureConditional" Prelude.<$> failureConditional,
                            (JSON..=) "FailureNextStep" Prelude.<$> failureNextStep,
                            (JSON..=) "FailureResponse" Prelude.<$> failureResponse,
                            (JSON..=) "SuccessConditional" Prelude.<$> successConditional,
                            (JSON..=) "SuccessNextStep" Prelude.<$> successNextStep,
                            (JSON..=) "SuccessResponse" Prelude.<$> successResponse,
                            (JSON..=) "TimeoutConditional" Prelude.<$> timeoutConditional,
                            (JSON..=) "TimeoutNextStep" Prelude.<$> timeoutNextStep,
                            (JSON..=) "TimeoutResponse" Prelude.<$> timeoutResponse])}
instance JSON.ToJSON PostDialogCodeHookInvocationSpecificationProperty where
  toJSON PostDialogCodeHookInvocationSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FailureConditional" Prelude.<$> failureConditional,
               (JSON..=) "FailureNextStep" Prelude.<$> failureNextStep,
               (JSON..=) "FailureResponse" Prelude.<$> failureResponse,
               (JSON..=) "SuccessConditional" Prelude.<$> successConditional,
               (JSON..=) "SuccessNextStep" Prelude.<$> successNextStep,
               (JSON..=) "SuccessResponse" Prelude.<$> successResponse,
               (JSON..=) "TimeoutConditional" Prelude.<$> timeoutConditional,
               (JSON..=) "TimeoutNextStep" Prelude.<$> timeoutNextStep,
               (JSON..=) "TimeoutResponse" Prelude.<$> timeoutResponse]))
instance Property "FailureConditional" PostDialogCodeHookInvocationSpecificationProperty where
  type PropertyType "FailureConditional" PostDialogCodeHookInvocationSpecificationProperty = ConditionalSpecificationProperty
  set newValue PostDialogCodeHookInvocationSpecificationProperty {..}
    = PostDialogCodeHookInvocationSpecificationProperty
        {failureConditional = Prelude.pure newValue, ..}
instance Property "FailureNextStep" PostDialogCodeHookInvocationSpecificationProperty where
  type PropertyType "FailureNextStep" PostDialogCodeHookInvocationSpecificationProperty = DialogStateProperty
  set newValue PostDialogCodeHookInvocationSpecificationProperty {..}
    = PostDialogCodeHookInvocationSpecificationProperty
        {failureNextStep = Prelude.pure newValue, ..}
instance Property "FailureResponse" PostDialogCodeHookInvocationSpecificationProperty where
  type PropertyType "FailureResponse" PostDialogCodeHookInvocationSpecificationProperty = ResponseSpecificationProperty
  set newValue PostDialogCodeHookInvocationSpecificationProperty {..}
    = PostDialogCodeHookInvocationSpecificationProperty
        {failureResponse = Prelude.pure newValue, ..}
instance Property "SuccessConditional" PostDialogCodeHookInvocationSpecificationProperty where
  type PropertyType "SuccessConditional" PostDialogCodeHookInvocationSpecificationProperty = ConditionalSpecificationProperty
  set newValue PostDialogCodeHookInvocationSpecificationProperty {..}
    = PostDialogCodeHookInvocationSpecificationProperty
        {successConditional = Prelude.pure newValue, ..}
instance Property "SuccessNextStep" PostDialogCodeHookInvocationSpecificationProperty where
  type PropertyType "SuccessNextStep" PostDialogCodeHookInvocationSpecificationProperty = DialogStateProperty
  set newValue PostDialogCodeHookInvocationSpecificationProperty {..}
    = PostDialogCodeHookInvocationSpecificationProperty
        {successNextStep = Prelude.pure newValue, ..}
instance Property "SuccessResponse" PostDialogCodeHookInvocationSpecificationProperty where
  type PropertyType "SuccessResponse" PostDialogCodeHookInvocationSpecificationProperty = ResponseSpecificationProperty
  set newValue PostDialogCodeHookInvocationSpecificationProperty {..}
    = PostDialogCodeHookInvocationSpecificationProperty
        {successResponse = Prelude.pure newValue, ..}
instance Property "TimeoutConditional" PostDialogCodeHookInvocationSpecificationProperty where
  type PropertyType "TimeoutConditional" PostDialogCodeHookInvocationSpecificationProperty = ConditionalSpecificationProperty
  set newValue PostDialogCodeHookInvocationSpecificationProperty {..}
    = PostDialogCodeHookInvocationSpecificationProperty
        {timeoutConditional = Prelude.pure newValue, ..}
instance Property "TimeoutNextStep" PostDialogCodeHookInvocationSpecificationProperty where
  type PropertyType "TimeoutNextStep" PostDialogCodeHookInvocationSpecificationProperty = DialogStateProperty
  set newValue PostDialogCodeHookInvocationSpecificationProperty {..}
    = PostDialogCodeHookInvocationSpecificationProperty
        {timeoutNextStep = Prelude.pure newValue, ..}
instance Property "TimeoutResponse" PostDialogCodeHookInvocationSpecificationProperty where
  type PropertyType "TimeoutResponse" PostDialogCodeHookInvocationSpecificationProperty = ResponseSpecificationProperty
  set newValue PostDialogCodeHookInvocationSpecificationProperty {..}
    = PostDialogCodeHookInvocationSpecificationProperty
        {timeoutResponse = Prelude.pure newValue, ..}