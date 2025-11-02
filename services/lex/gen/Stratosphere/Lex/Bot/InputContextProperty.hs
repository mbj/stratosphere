module Stratosphere.Lex.Bot.InputContextProperty (
        InputContextProperty(..), mkInputContextProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InputContextProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-inputcontext.html>
    InputContextProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-inputcontext.html#cfn-lex-bot-inputcontext-name>
                          name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInputContextProperty ::
  Value Prelude.Text -> InputContextProperty
mkInputContextProperty name
  = InputContextProperty {haddock_workaround_ = (), name = name}
instance ToResourceProperties InputContextProperty where
  toResourceProperties InputContextProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.InputContext",
         supportsTags = Prelude.False, properties = ["Name" JSON..= name]}
instance JSON.ToJSON InputContextProperty where
  toJSON InputContextProperty {..}
    = JSON.object ["Name" JSON..= name]
instance Property "Name" InputContextProperty where
  type PropertyType "Name" InputContextProperty = Value Prelude.Text
  set newValue InputContextProperty {..}
    = InputContextProperty {name = newValue, ..}