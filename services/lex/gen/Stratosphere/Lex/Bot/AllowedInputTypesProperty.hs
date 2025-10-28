module Stratosphere.Lex.Bot.AllowedInputTypesProperty (
        AllowedInputTypesProperty(..), mkAllowedInputTypesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AllowedInputTypesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-allowedinputtypes.html>
    AllowedInputTypesProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-allowedinputtypes.html#cfn-lex-bot-allowedinputtypes-allowaudioinput>
                               allowAudioInput :: (Value Prelude.Bool),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-allowedinputtypes.html#cfn-lex-bot-allowedinputtypes-allowdtmfinput>
                               allowDTMFInput :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAllowedInputTypesProperty ::
  Value Prelude.Bool
  -> Value Prelude.Bool -> AllowedInputTypesProperty
mkAllowedInputTypesProperty allowAudioInput allowDTMFInput
  = AllowedInputTypesProperty
      {haddock_workaround_ = (), allowAudioInput = allowAudioInput,
       allowDTMFInput = allowDTMFInput}
instance ToResourceProperties AllowedInputTypesProperty where
  toResourceProperties AllowedInputTypesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.AllowedInputTypes",
         supportsTags = Prelude.False,
         properties = ["AllowAudioInput" JSON..= allowAudioInput,
                       "AllowDTMFInput" JSON..= allowDTMFInput]}
instance JSON.ToJSON AllowedInputTypesProperty where
  toJSON AllowedInputTypesProperty {..}
    = JSON.object
        ["AllowAudioInput" JSON..= allowAudioInput,
         "AllowDTMFInput" JSON..= allowDTMFInput]
instance Property "AllowAudioInput" AllowedInputTypesProperty where
  type PropertyType "AllowAudioInput" AllowedInputTypesProperty = Value Prelude.Bool
  set newValue AllowedInputTypesProperty {..}
    = AllowedInputTypesProperty {allowAudioInput = newValue, ..}
instance Property "AllowDTMFInput" AllowedInputTypesProperty where
  type PropertyType "AllowDTMFInput" AllowedInputTypesProperty = Value Prelude.Bool
  set newValue AllowedInputTypesProperty {..}
    = AllowedInputTypesProperty {allowDTMFInput = newValue, ..}