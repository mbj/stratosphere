module Stratosphere.Lex.Bot.FulfillmentUpdatesSpecificationProperty (
        module Exports, FulfillmentUpdatesSpecificationProperty(..),
        mkFulfillmentUpdatesSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.FulfillmentStartResponseSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.FulfillmentUpdateResponseSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FulfillmentUpdatesSpecificationProperty
  = FulfillmentUpdatesSpecificationProperty {active :: (Value Prelude.Bool),
                                             startResponse :: (Prelude.Maybe FulfillmentStartResponseSpecificationProperty),
                                             timeoutInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                             updateResponse :: (Prelude.Maybe FulfillmentUpdateResponseSpecificationProperty)}
mkFulfillmentUpdatesSpecificationProperty ::
  Value Prelude.Bool -> FulfillmentUpdatesSpecificationProperty
mkFulfillmentUpdatesSpecificationProperty active
  = FulfillmentUpdatesSpecificationProperty
      {active = active, startResponse = Prelude.Nothing,
       timeoutInSeconds = Prelude.Nothing,
       updateResponse = Prelude.Nothing}
instance ToResourceProperties FulfillmentUpdatesSpecificationProperty where
  toResourceProperties FulfillmentUpdatesSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.FulfillmentUpdatesSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Active" JSON..= active]
                           (Prelude.catMaybes
                              [(JSON..=) "StartResponse" Prelude.<$> startResponse,
                               (JSON..=) "TimeoutInSeconds" Prelude.<$> timeoutInSeconds,
                               (JSON..=) "UpdateResponse" Prelude.<$> updateResponse]))}
instance JSON.ToJSON FulfillmentUpdatesSpecificationProperty where
  toJSON FulfillmentUpdatesSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Active" JSON..= active]
              (Prelude.catMaybes
                 [(JSON..=) "StartResponse" Prelude.<$> startResponse,
                  (JSON..=) "TimeoutInSeconds" Prelude.<$> timeoutInSeconds,
                  (JSON..=) "UpdateResponse" Prelude.<$> updateResponse])))
instance Property "Active" FulfillmentUpdatesSpecificationProperty where
  type PropertyType "Active" FulfillmentUpdatesSpecificationProperty = Value Prelude.Bool
  set newValue FulfillmentUpdatesSpecificationProperty {..}
    = FulfillmentUpdatesSpecificationProperty {active = newValue, ..}
instance Property "StartResponse" FulfillmentUpdatesSpecificationProperty where
  type PropertyType "StartResponse" FulfillmentUpdatesSpecificationProperty = FulfillmentStartResponseSpecificationProperty
  set newValue FulfillmentUpdatesSpecificationProperty {..}
    = FulfillmentUpdatesSpecificationProperty
        {startResponse = Prelude.pure newValue, ..}
instance Property "TimeoutInSeconds" FulfillmentUpdatesSpecificationProperty where
  type PropertyType "TimeoutInSeconds" FulfillmentUpdatesSpecificationProperty = Value Prelude.Integer
  set newValue FulfillmentUpdatesSpecificationProperty {..}
    = FulfillmentUpdatesSpecificationProperty
        {timeoutInSeconds = Prelude.pure newValue, ..}
instance Property "UpdateResponse" FulfillmentUpdatesSpecificationProperty where
  type PropertyType "UpdateResponse" FulfillmentUpdatesSpecificationProperty = FulfillmentUpdateResponseSpecificationProperty
  set newValue FulfillmentUpdatesSpecificationProperty {..}
    = FulfillmentUpdatesSpecificationProperty
        {updateResponse = Prelude.pure newValue, ..}