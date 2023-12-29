module Stratosphere.CodeCommit.Repository.S3Property where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data S3Property :: Prelude.Type
instance ToResourceProperties S3Property
instance Prelude.Eq S3Property
instance Prelude.Show S3Property
instance JSON.ToJSON S3Property