module Stratosphere.Lex.Bot.ResponseSpecificationProperty (
        module Exports, ResponseSpecificationProperty(..),
        mkResponseSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.MessageGroupProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResponseSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-responsespecification.html>
    ResponseSpecificationProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-responsespecification.html#cfn-lex-bot-responsespecification-allowinterrupt>
                                   allowInterrupt :: (Prelude.Maybe (Value Prelude.Bool)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-responsespecification.html#cfn-lex-bot-responsespecification-messagegroupslist>
                                   messageGroupsList :: [MessageGroupProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResponseSpecificationProperty ::
  [MessageGroupProperty] -> ResponseSpecificationProperty
mkResponseSpecificationProperty messageGroupsList
  = ResponseSpecificationProperty
      {haddock_workaround_ = (), messageGroupsList = messageGroupsList,
       allowInterrupt = Prelude.Nothing}
instance ToResourceProperties ResponseSpecificationProperty where
  toResourceProperties ResponseSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.ResponseSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MessageGroupsList" JSON..= messageGroupsList]
                           (Prelude.catMaybes
                              [(JSON..=) "AllowInterrupt" Prelude.<$> allowInterrupt]))}
instance JSON.ToJSON ResponseSpecificationProperty where
  toJSON ResponseSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MessageGroupsList" JSON..= messageGroupsList]
              (Prelude.catMaybes
                 [(JSON..=) "AllowInterrupt" Prelude.<$> allowInterrupt])))
instance Property "AllowInterrupt" ResponseSpecificationProperty where
  type PropertyType "AllowInterrupt" ResponseSpecificationProperty = Value Prelude.Bool
  set newValue ResponseSpecificationProperty {..}
    = ResponseSpecificationProperty
        {allowInterrupt = Prelude.pure newValue, ..}
instance Property "MessageGroupsList" ResponseSpecificationProperty where
  type PropertyType "MessageGroupsList" ResponseSpecificationProperty = [MessageGroupProperty]
  set newValue ResponseSpecificationProperty {..}
    = ResponseSpecificationProperty {messageGroupsList = newValue, ..}