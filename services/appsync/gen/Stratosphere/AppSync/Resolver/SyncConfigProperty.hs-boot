module Stratosphere.AppSync.Resolver.SyncConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SyncConfigProperty :: Prelude.Type
instance ToResourceProperties SyncConfigProperty
instance JSON.ToJSON SyncConfigProperty