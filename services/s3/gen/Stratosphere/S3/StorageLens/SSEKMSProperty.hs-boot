module Stratosphere.S3.StorageLens.SSEKMSProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SSEKMSProperty :: Prelude.Type
instance ToResourceProperties SSEKMSProperty
instance JSON.ToJSON SSEKMSProperty