module Stratosphere.Omics.ReferenceStore.SseConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SseConfigProperty :: Prelude.Type
instance ToResourceProperties SseConfigProperty
instance Prelude.Eq SseConfigProperty
instance Prelude.Show SseConfigProperty
instance JSON.ToJSON SseConfigProperty