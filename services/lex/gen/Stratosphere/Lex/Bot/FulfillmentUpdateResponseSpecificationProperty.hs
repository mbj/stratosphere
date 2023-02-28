module Stratosphere.Lex.Bot.FulfillmentUpdateResponseSpecificationProperty (
        module Exports, FulfillmentUpdateResponseSpecificationProperty(..),
        mkFulfillmentUpdateResponseSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.MessageGroupProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FulfillmentUpdateResponseSpecificationProperty
  = FulfillmentUpdateResponseSpecificationProperty {allowInterrupt :: (Prelude.Maybe (Value Prelude.Bool)),
                                                    frequencyInSeconds :: (Value Prelude.Integer),
                                                    messageGroups :: [MessageGroupProperty]}
mkFulfillmentUpdateResponseSpecificationProperty ::
  Value Prelude.Integer
  -> [MessageGroupProperty]
     -> FulfillmentUpdateResponseSpecificationProperty
mkFulfillmentUpdateResponseSpecificationProperty
  frequencyInSeconds
  messageGroups
  = FulfillmentUpdateResponseSpecificationProperty
      {frequencyInSeconds = frequencyInSeconds,
       messageGroups = messageGroups, allowInterrupt = Prelude.Nothing}
instance ToResourceProperties FulfillmentUpdateResponseSpecificationProperty where
  toResourceProperties
    FulfillmentUpdateResponseSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.FulfillmentUpdateResponseSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FrequencyInSeconds" JSON..= frequencyInSeconds,
                            "MessageGroups" JSON..= messageGroups]
                           (Prelude.catMaybes
                              [(JSON..=) "AllowInterrupt" Prelude.<$> allowInterrupt]))}
instance JSON.ToJSON FulfillmentUpdateResponseSpecificationProperty where
  toJSON FulfillmentUpdateResponseSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FrequencyInSeconds" JSON..= frequencyInSeconds,
               "MessageGroups" JSON..= messageGroups]
              (Prelude.catMaybes
                 [(JSON..=) "AllowInterrupt" Prelude.<$> allowInterrupt])))
instance Property "AllowInterrupt" FulfillmentUpdateResponseSpecificationProperty where
  type PropertyType "AllowInterrupt" FulfillmentUpdateResponseSpecificationProperty = Value Prelude.Bool
  set newValue FulfillmentUpdateResponseSpecificationProperty {..}
    = FulfillmentUpdateResponseSpecificationProperty
        {allowInterrupt = Prelude.pure newValue, ..}
instance Property "FrequencyInSeconds" FulfillmentUpdateResponseSpecificationProperty where
  type PropertyType "FrequencyInSeconds" FulfillmentUpdateResponseSpecificationProperty = Value Prelude.Integer
  set newValue FulfillmentUpdateResponseSpecificationProperty {..}
    = FulfillmentUpdateResponseSpecificationProperty
        {frequencyInSeconds = newValue, ..}
instance Property "MessageGroups" FulfillmentUpdateResponseSpecificationProperty where
  type PropertyType "MessageGroups" FulfillmentUpdateResponseSpecificationProperty = [MessageGroupProperty]
  set newValue FulfillmentUpdateResponseSpecificationProperty {..}
    = FulfillmentUpdateResponseSpecificationProperty
        {messageGroups = newValue, ..}