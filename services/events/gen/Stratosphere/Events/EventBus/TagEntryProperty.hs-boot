module Stratosphere.Events.EventBus.TagEntryProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TagEntryProperty :: Prelude.Type
instance ToResourceProperties TagEntryProperty
instance JSON.ToJSON TagEntryProperty