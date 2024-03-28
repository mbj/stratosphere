module Stratosphere.SageMaker.Space.EFSFileSystemProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EFSFileSystemProperty :: Prelude.Type
instance ToResourceProperties EFSFileSystemProperty
instance Prelude.Eq EFSFileSystemProperty
instance Prelude.Show EFSFileSystemProperty
instance JSON.ToJSON EFSFileSystemProperty