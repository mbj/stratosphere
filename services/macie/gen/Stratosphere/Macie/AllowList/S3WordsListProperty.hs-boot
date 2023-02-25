module Stratosphere.Macie.AllowList.S3WordsListProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data S3WordsListProperty :: Prelude.Type
instance ToResourceProperties S3WordsListProperty
instance JSON.ToJSON S3WordsListProperty