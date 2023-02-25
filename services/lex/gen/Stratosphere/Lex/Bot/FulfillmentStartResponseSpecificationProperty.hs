module Stratosphere.Lex.Bot.FulfillmentStartResponseSpecificationProperty (
        module Exports, FulfillmentStartResponseSpecificationProperty(..),
        mkFulfillmentStartResponseSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.MessageGroupProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FulfillmentStartResponseSpecificationProperty
  = FulfillmentStartResponseSpecificationProperty {allowInterrupt :: (Prelude.Maybe (Value Prelude.Bool)),
                                                   delayInSeconds :: (Value Prelude.Integer),
                                                   messageGroups :: [MessageGroupProperty]}
mkFulfillmentStartResponseSpecificationProperty ::
  Value Prelude.Integer
  -> [MessageGroupProperty]
     -> FulfillmentStartResponseSpecificationProperty
mkFulfillmentStartResponseSpecificationProperty
  delayInSeconds
  messageGroups
  = FulfillmentStartResponseSpecificationProperty
      {delayInSeconds = delayInSeconds, messageGroups = messageGroups,
       allowInterrupt = Prelude.Nothing}
instance ToResourceProperties FulfillmentStartResponseSpecificationProperty where
  toResourceProperties
    FulfillmentStartResponseSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.FulfillmentStartResponseSpecification",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DelayInSeconds" JSON..= delayInSeconds,
                            "MessageGroups" JSON..= messageGroups]
                           (Prelude.catMaybes
                              [(JSON..=) "AllowInterrupt" Prelude.<$> allowInterrupt]))}
instance JSON.ToJSON FulfillmentStartResponseSpecificationProperty where
  toJSON FulfillmentStartResponseSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DelayInSeconds" JSON..= delayInSeconds,
               "MessageGroups" JSON..= messageGroups]
              (Prelude.catMaybes
                 [(JSON..=) "AllowInterrupt" Prelude.<$> allowInterrupt])))
instance Property "AllowInterrupt" FulfillmentStartResponseSpecificationProperty where
  type PropertyType "AllowInterrupt" FulfillmentStartResponseSpecificationProperty = Value Prelude.Bool
  set newValue FulfillmentStartResponseSpecificationProperty {..}
    = FulfillmentStartResponseSpecificationProperty
        {allowInterrupt = Prelude.pure newValue, ..}
instance Property "DelayInSeconds" FulfillmentStartResponseSpecificationProperty where
  type PropertyType "DelayInSeconds" FulfillmentStartResponseSpecificationProperty = Value Prelude.Integer
  set newValue FulfillmentStartResponseSpecificationProperty {..}
    = FulfillmentStartResponseSpecificationProperty
        {delayInSeconds = newValue, ..}
instance Property "MessageGroups" FulfillmentStartResponseSpecificationProperty where
  type PropertyType "MessageGroups" FulfillmentStartResponseSpecificationProperty = [MessageGroupProperty]
  set newValue FulfillmentStartResponseSpecificationProperty {..}
    = FulfillmentStartResponseSpecificationProperty
        {messageGroups = newValue, ..}