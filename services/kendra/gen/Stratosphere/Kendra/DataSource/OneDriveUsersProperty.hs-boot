module Stratosphere.Kendra.DataSource.OneDriveUsersProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data OneDriveUsersProperty :: Prelude.Type
instance ToResourceProperties OneDriveUsersProperty
instance JSON.ToJSON OneDriveUsersProperty