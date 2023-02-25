module Stratosphere.EFS.AccessPoint.RootDirectoryProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RootDirectoryProperty :: Prelude.Type
instance ToResourceProperties RootDirectoryProperty
instance JSON.ToJSON RootDirectoryProperty