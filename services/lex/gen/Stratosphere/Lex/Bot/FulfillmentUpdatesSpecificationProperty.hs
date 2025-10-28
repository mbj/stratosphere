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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-fulfillmentupdatesspecification.html>
    FulfillmentUpdatesSpecificationProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-fulfillmentupdatesspecification.html#cfn-lex-bot-fulfillmentupdatesspecification-active>
                                             active :: (Value Prelude.Bool),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-fulfillmentupdatesspecification.html#cfn-lex-bot-fulfillmentupdatesspecification-startresponse>
                                             startResponse :: (Prelude.Maybe FulfillmentStartResponseSpecificationProperty),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-fulfillmentupdatesspecification.html#cfn-lex-bot-fulfillmentupdatesspecification-timeoutinseconds>
                                             timeoutInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-fulfillmentupdatesspecification.html#cfn-lex-bot-fulfillmentupdatesspecification-updateresponse>
                                             updateResponse :: (Prelude.Maybe FulfillmentUpdateResponseSpecificationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFulfillmentUpdatesSpecificationProperty ::
  Value Prelude.Bool -> FulfillmentUpdatesSpecificationProperty
mkFulfillmentUpdatesSpecificationProperty active
  = FulfillmentUpdatesSpecificationProperty
      {haddock_workaround_ = (), active = active,
       startResponse = Prelude.Nothing,
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