module Stratosphere.Lex.Bot.LambdaCodeHookProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LambdaCodeHookProperty :: Prelude.Type
instance ToResourceProperties LambdaCodeHookProperty
instance JSON.ToJSON LambdaCodeHookProperty