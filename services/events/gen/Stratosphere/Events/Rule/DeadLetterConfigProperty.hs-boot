module Stratosphere.Events.Rule.DeadLetterConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DeadLetterConfigProperty :: Prelude.Type
instance ToResourceProperties DeadLetterConfigProperty
instance JSON.ToJSON DeadLetterConfigProperty