module Stratosphere.Lex.Bot.ConditionalBranchProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ConditionalBranchProperty :: Prelude.Type
instance ToResourceProperties ConditionalBranchProperty
instance JSON.ToJSON ConditionalBranchProperty