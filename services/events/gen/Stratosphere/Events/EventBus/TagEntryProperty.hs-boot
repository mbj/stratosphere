module Stratosphere.Events.EventBus.TagEntryProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TagEntryProperty :: Prelude.Type
instance ToResourceProperties TagEntryProperty
instance Prelude.Eq TagEntryProperty
instance Prelude.Show TagEntryProperty
instance JSON.ToJSON TagEntryProperty