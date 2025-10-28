module Stratosphere.Lex.Bot.DTMFSpecificationProperty (
        DTMFSpecificationProperty(..), mkDTMFSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DTMFSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-dtmfspecification.html>
    DTMFSpecificationProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-dtmfspecification.html#cfn-lex-bot-dtmfspecification-deletioncharacter>
                               deletionCharacter :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-dtmfspecification.html#cfn-lex-bot-dtmfspecification-endcharacter>
                               endCharacter :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-dtmfspecification.html#cfn-lex-bot-dtmfspecification-endtimeoutms>
                               endTimeoutMs :: (Value Prelude.Integer),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-dtmfspecification.html#cfn-lex-bot-dtmfspecification-maxlength>
                               maxLength :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDTMFSpecificationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Integer
        -> Value Prelude.Integer -> DTMFSpecificationProperty
mkDTMFSpecificationProperty
  deletionCharacter
  endCharacter
  endTimeoutMs
  maxLength
  = DTMFSpecificationProperty
      {haddock_workaround_ = (), deletionCharacter = deletionCharacter,
       endCharacter = endCharacter, endTimeoutMs = endTimeoutMs,
       maxLength = maxLength}
instance ToResourceProperties DTMFSpecificationProperty where
  toResourceProperties DTMFSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.DTMFSpecification",
         supportsTags = Prelude.False,
         properties = ["DeletionCharacter" JSON..= deletionCharacter,
                       "EndCharacter" JSON..= endCharacter,
                       "EndTimeoutMs" JSON..= endTimeoutMs,
                       "MaxLength" JSON..= maxLength]}
instance JSON.ToJSON DTMFSpecificationProperty where
  toJSON DTMFSpecificationProperty {..}
    = JSON.object
        ["DeletionCharacter" JSON..= deletionCharacter,
         "EndCharacter" JSON..= endCharacter,
         "EndTimeoutMs" JSON..= endTimeoutMs, "MaxLength" JSON..= maxLength]
instance Property "DeletionCharacter" DTMFSpecificationProperty where
  type PropertyType "DeletionCharacter" DTMFSpecificationProperty = Value Prelude.Text
  set newValue DTMFSpecificationProperty {..}
    = DTMFSpecificationProperty {deletionCharacter = newValue, ..}
instance Property "EndCharacter" DTMFSpecificationProperty where
  type PropertyType "EndCharacter" DTMFSpecificationProperty = Value Prelude.Text
  set newValue DTMFSpecificationProperty {..}
    = DTMFSpecificationProperty {endCharacter = newValue, ..}
instance Property "EndTimeoutMs" DTMFSpecificationProperty where
  type PropertyType "EndTimeoutMs" DTMFSpecificationProperty = Value Prelude.Integer
  set newValue DTMFSpecificationProperty {..}
    = DTMFSpecificationProperty {endTimeoutMs = newValue, ..}
instance Property "MaxLength" DTMFSpecificationProperty where
  type PropertyType "MaxLength" DTMFSpecificationProperty = Value Prelude.Integer
  set newValue DTMFSpecificationProperty {..}
    = DTMFSpecificationProperty {maxLength = newValue, ..}