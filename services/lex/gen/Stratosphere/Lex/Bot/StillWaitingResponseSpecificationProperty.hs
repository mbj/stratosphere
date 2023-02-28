module Stratosphere.Lex.Bot.StillWaitingResponseSpecificationProperty (
        module Exports, StillWaitingResponseSpecificationProperty(..),
        mkStillWaitingResponseSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.MessageGroupProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StillWaitingResponseSpecificationProperty
  = StillWaitingResponseSpecificationProperty {allowInterrupt :: (Prelude.Maybe (Value Prelude.Bool)),
                                               frequencyInSeconds :: (Value Prelude.Integer),
                                               messageGroupsList :: [MessageGroupProperty],
                                               timeoutInSeconds :: (Value Prelude.Integer)}
mkStillWaitingResponseSpecificationProperty ::
  Value Prelude.Integer
  -> [MessageGroupProperty]
     -> Value Prelude.Integer
        -> StillWaitingResponseSpecificationProperty
mkStillWaitingResponseSpecificationProperty
  frequencyInSeconds
  messageGroupsList
  timeoutInSeconds
  = StillWaitingResponseSpecificationProperty
      {frequencyInSeconds = frequencyInSeconds,
       messageGroupsList = messageGroupsList,
       timeoutInSeconds = timeoutInSeconds,
       allowInterrupt = Prelude.Nothing}
instance ToResourceProperties StillWaitingResponseSpecificationProperty where
  toResourceProperties StillWaitingResponseSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.StillWaitingResponseSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FrequencyInSeconds" JSON..= frequencyInSeconds,
                            "MessageGroupsList" JSON..= messageGroupsList,
                            "TimeoutInSeconds" JSON..= timeoutInSeconds]
                           (Prelude.catMaybes
                              [(JSON..=) "AllowInterrupt" Prelude.<$> allowInterrupt]))}
instance JSON.ToJSON StillWaitingResponseSpecificationProperty where
  toJSON StillWaitingResponseSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FrequencyInSeconds" JSON..= frequencyInSeconds,
               "MessageGroupsList" JSON..= messageGroupsList,
               "TimeoutInSeconds" JSON..= timeoutInSeconds]
              (Prelude.catMaybes
                 [(JSON..=) "AllowInterrupt" Prelude.<$> allowInterrupt])))
instance Property "AllowInterrupt" StillWaitingResponseSpecificationProperty where
  type PropertyType "AllowInterrupt" StillWaitingResponseSpecificationProperty = Value Prelude.Bool
  set newValue StillWaitingResponseSpecificationProperty {..}
    = StillWaitingResponseSpecificationProperty
        {allowInterrupt = Prelude.pure newValue, ..}
instance Property "FrequencyInSeconds" StillWaitingResponseSpecificationProperty where
  type PropertyType "FrequencyInSeconds" StillWaitingResponseSpecificationProperty = Value Prelude.Integer
  set newValue StillWaitingResponseSpecificationProperty {..}
    = StillWaitingResponseSpecificationProperty
        {frequencyInSeconds = newValue, ..}
instance Property "MessageGroupsList" StillWaitingResponseSpecificationProperty where
  type PropertyType "MessageGroupsList" StillWaitingResponseSpecificationProperty = [MessageGroupProperty]
  set newValue StillWaitingResponseSpecificationProperty {..}
    = StillWaitingResponseSpecificationProperty
        {messageGroupsList = newValue, ..}
instance Property "TimeoutInSeconds" StillWaitingResponseSpecificationProperty where
  type PropertyType "TimeoutInSeconds" StillWaitingResponseSpecificationProperty = Value Prelude.Integer
  set newValue StillWaitingResponseSpecificationProperty {..}
    = StillWaitingResponseSpecificationProperty
        {timeoutInSeconds = newValue, ..}