module Stratosphere.Elasticsearch.Domain.EBSOptionsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EBSOptionsProperty :: Prelude.Type
instance ToResourceProperties EBSOptionsProperty
instance JSON.ToJSON EBSOptionsProperty