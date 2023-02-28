module Stratosphere.Lex.Bot.PostFulfillmentStatusSpecificationProperty (
        module Exports, PostFulfillmentStatusSpecificationProperty(..),
        mkPostFulfillmentStatusSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.ConditionalSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.DialogStateProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.ResponseSpecificationProperty as Exports
import Stratosphere.ResourceProperties
data PostFulfillmentStatusSpecificationProperty
  = PostFulfillmentStatusSpecificationProperty {failureConditional :: (Prelude.Maybe ConditionalSpecificationProperty),
                                                failureNextStep :: (Prelude.Maybe DialogStateProperty),
                                                failureResponse :: (Prelude.Maybe ResponseSpecificationProperty),
                                                successConditional :: (Prelude.Maybe ConditionalSpecificationProperty),
                                                successNextStep :: (Prelude.Maybe DialogStateProperty),
                                                successResponse :: (Prelude.Maybe ResponseSpecificationProperty),
                                                timeoutConditional :: (Prelude.Maybe ConditionalSpecificationProperty),
                                                timeoutNextStep :: (Prelude.Maybe DialogStateProperty),
                                                timeoutResponse :: (Prelude.Maybe ResponseSpecificationProperty)}
mkPostFulfillmentStatusSpecificationProperty ::
  PostFulfillmentStatusSpecificationProperty
mkPostFulfillmentStatusSpecificationProperty
  = PostFulfillmentStatusSpecificationProperty
      {failureConditional = Prelude.Nothing,
       failureNextStep = Prelude.Nothing,
       failureResponse = Prelude.Nothing,
       successConditional = Prelude.Nothing,
       successNextStep = Prelude.Nothing,
       successResponse = Prelude.Nothing,
       timeoutConditional = Prelude.Nothing,
       timeoutNextStep = Prelude.Nothing,
       timeoutResponse = Prelude.Nothing}
instance ToResourceProperties PostFulfillmentStatusSpecificationProperty where
  toResourceProperties
    PostFulfillmentStatusSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.PostFulfillmentStatusSpecification",
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
instance JSON.ToJSON PostFulfillmentStatusSpecificationProperty where
  toJSON PostFulfillmentStatusSpecificationProperty {..}
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
instance Property "FailureConditional" PostFulfillmentStatusSpecificationProperty where
  type PropertyType "FailureConditional" PostFulfillmentStatusSpecificationProperty = ConditionalSpecificationProperty
  set newValue PostFulfillmentStatusSpecificationProperty {..}
    = PostFulfillmentStatusSpecificationProperty
        {failureConditional = Prelude.pure newValue, ..}
instance Property "FailureNextStep" PostFulfillmentStatusSpecificationProperty where
  type PropertyType "FailureNextStep" PostFulfillmentStatusSpecificationProperty = DialogStateProperty
  set newValue PostFulfillmentStatusSpecificationProperty {..}
    = PostFulfillmentStatusSpecificationProperty
        {failureNextStep = Prelude.pure newValue, ..}
instance Property "FailureResponse" PostFulfillmentStatusSpecificationProperty where
  type PropertyType "FailureResponse" PostFulfillmentStatusSpecificationProperty = ResponseSpecificationProperty
  set newValue PostFulfillmentStatusSpecificationProperty {..}
    = PostFulfillmentStatusSpecificationProperty
        {failureResponse = Prelude.pure newValue, ..}
instance Property "SuccessConditional" PostFulfillmentStatusSpecificationProperty where
  type PropertyType "SuccessConditional" PostFulfillmentStatusSpecificationProperty = ConditionalSpecificationProperty
  set newValue PostFulfillmentStatusSpecificationProperty {..}
    = PostFulfillmentStatusSpecificationProperty
        {successConditional = Prelude.pure newValue, ..}
instance Property "SuccessNextStep" PostFulfillmentStatusSpecificationProperty where
  type PropertyType "SuccessNextStep" PostFulfillmentStatusSpecificationProperty = DialogStateProperty
  set newValue PostFulfillmentStatusSpecificationProperty {..}
    = PostFulfillmentStatusSpecificationProperty
        {successNextStep = Prelude.pure newValue, ..}
instance Property "SuccessResponse" PostFulfillmentStatusSpecificationProperty where
  type PropertyType "SuccessResponse" PostFulfillmentStatusSpecificationProperty = ResponseSpecificationProperty
  set newValue PostFulfillmentStatusSpecificationProperty {..}
    = PostFulfillmentStatusSpecificationProperty
        {successResponse = Prelude.pure newValue, ..}
instance Property "TimeoutConditional" PostFulfillmentStatusSpecificationProperty where
  type PropertyType "TimeoutConditional" PostFulfillmentStatusSpecificationProperty = ConditionalSpecificationProperty
  set newValue PostFulfillmentStatusSpecificationProperty {..}
    = PostFulfillmentStatusSpecificationProperty
        {timeoutConditional = Prelude.pure newValue, ..}
instance Property "TimeoutNextStep" PostFulfillmentStatusSpecificationProperty where
  type PropertyType "TimeoutNextStep" PostFulfillmentStatusSpecificationProperty = DialogStateProperty
  set newValue PostFulfillmentStatusSpecificationProperty {..}
    = PostFulfillmentStatusSpecificationProperty
        {timeoutNextStep = Prelude.pure newValue, ..}
instance Property "TimeoutResponse" PostFulfillmentStatusSpecificationProperty where
  type PropertyType "TimeoutResponse" PostFulfillmentStatusSpecificationProperty = ResponseSpecificationProperty
  set newValue PostFulfillmentStatusSpecificationProperty {..}
    = PostFulfillmentStatusSpecificationProperty
        {timeoutResponse = Prelude.pure newValue, ..}