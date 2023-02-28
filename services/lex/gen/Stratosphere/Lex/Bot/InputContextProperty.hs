module Stratosphere.Lex.Bot.InputContextProperty (
        InputContextProperty(..), mkInputContextProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InputContextProperty
  = InputContextProperty {name :: (Value Prelude.Text)}
mkInputContextProperty ::
  Value Prelude.Text -> InputContextProperty
mkInputContextProperty name = InputContextProperty {name = name}
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
  set newValue InputContextProperty {}
    = InputContextProperty {name = newValue, ..}