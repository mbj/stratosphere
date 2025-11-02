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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-stillwaitingresponsespecification.html>
    StillWaitingResponseSpecificationProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-stillwaitingresponsespecification.html#cfn-lex-bot-stillwaitingresponsespecification-allowinterrupt>
                                               allowInterrupt :: (Prelude.Maybe (Value Prelude.Bool)),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-stillwaitingresponsespecification.html#cfn-lex-bot-stillwaitingresponsespecification-frequencyinseconds>
                                               frequencyInSeconds :: (Value Prelude.Integer),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-stillwaitingresponsespecification.html#cfn-lex-bot-stillwaitingresponsespecification-messagegroupslist>
                                               messageGroupsList :: [MessageGroupProperty],
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-stillwaitingresponsespecification.html#cfn-lex-bot-stillwaitingresponsespecification-timeoutinseconds>
                                               timeoutInSeconds :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
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
      {haddock_workaround_ = (), frequencyInSeconds = frequencyInSeconds,
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