module Stratosphere.Lex.Bot.WaitAndContinueSpecificationProperty (
        module Exports, WaitAndContinueSpecificationProperty(..),
        mkWaitAndContinueSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.ResponseSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.StillWaitingResponseSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WaitAndContinueSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-waitandcontinuespecification.html>
    WaitAndContinueSpecificationProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-waitandcontinuespecification.html#cfn-lex-bot-waitandcontinuespecification-continueresponse>
                                          continueResponse :: ResponseSpecificationProperty,
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-waitandcontinuespecification.html#cfn-lex-bot-waitandcontinuespecification-isactive>
                                          isActive :: (Prelude.Maybe (Value Prelude.Bool)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-waitandcontinuespecification.html#cfn-lex-bot-waitandcontinuespecification-stillwaitingresponse>
                                          stillWaitingResponse :: (Prelude.Maybe StillWaitingResponseSpecificationProperty),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-waitandcontinuespecification.html#cfn-lex-bot-waitandcontinuespecification-waitingresponse>
                                          waitingResponse :: ResponseSpecificationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWaitAndContinueSpecificationProperty ::
  ResponseSpecificationProperty
  -> ResponseSpecificationProperty
     -> WaitAndContinueSpecificationProperty
mkWaitAndContinueSpecificationProperty
  continueResponse
  waitingResponse
  = WaitAndContinueSpecificationProperty
      {haddock_workaround_ = (), continueResponse = continueResponse,
       waitingResponse = waitingResponse, isActive = Prelude.Nothing,
       stillWaitingResponse = Prelude.Nothing}
instance ToResourceProperties WaitAndContinueSpecificationProperty where
  toResourceProperties WaitAndContinueSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.WaitAndContinueSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ContinueResponse" JSON..= continueResponse,
                            "WaitingResponse" JSON..= waitingResponse]
                           (Prelude.catMaybes
                              [(JSON..=) "IsActive" Prelude.<$> isActive,
                               (JSON..=) "StillWaitingResponse"
                                 Prelude.<$> stillWaitingResponse]))}
instance JSON.ToJSON WaitAndContinueSpecificationProperty where
  toJSON WaitAndContinueSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ContinueResponse" JSON..= continueResponse,
               "WaitingResponse" JSON..= waitingResponse]
              (Prelude.catMaybes
                 [(JSON..=) "IsActive" Prelude.<$> isActive,
                  (JSON..=) "StillWaitingResponse"
                    Prelude.<$> stillWaitingResponse])))
instance Property "ContinueResponse" WaitAndContinueSpecificationProperty where
  type PropertyType "ContinueResponse" WaitAndContinueSpecificationProperty = ResponseSpecificationProperty
  set newValue WaitAndContinueSpecificationProperty {..}
    = WaitAndContinueSpecificationProperty
        {continueResponse = newValue, ..}
instance Property "IsActive" WaitAndContinueSpecificationProperty where
  type PropertyType "IsActive" WaitAndContinueSpecificationProperty = Value Prelude.Bool
  set newValue WaitAndContinueSpecificationProperty {..}
    = WaitAndContinueSpecificationProperty
        {isActive = Prelude.pure newValue, ..}
instance Property "StillWaitingResponse" WaitAndContinueSpecificationProperty where
  type PropertyType "StillWaitingResponse" WaitAndContinueSpecificationProperty = StillWaitingResponseSpecificationProperty
  set newValue WaitAndContinueSpecificationProperty {..}
    = WaitAndContinueSpecificationProperty
        {stillWaitingResponse = Prelude.pure newValue, ..}
instance Property "WaitingResponse" WaitAndContinueSpecificationProperty where
  type PropertyType "WaitingResponse" WaitAndContinueSpecificationProperty = ResponseSpecificationProperty
  set newValue WaitAndContinueSpecificationProperty {..}
    = WaitAndContinueSpecificationProperty
        {waitingResponse = newValue, ..}