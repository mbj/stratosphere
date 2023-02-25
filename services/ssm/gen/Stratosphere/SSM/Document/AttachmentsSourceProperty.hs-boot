module Stratosphere.SSM.Document.AttachmentsSourceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AttachmentsSourceProperty :: Prelude.Type
instance ToResourceProperties AttachmentsSourceProperty
instance JSON.ToJSON AttachmentsSourceProperty