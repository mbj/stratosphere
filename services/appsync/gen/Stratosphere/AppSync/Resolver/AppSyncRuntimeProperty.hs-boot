module Stratosphere.AppSync.Resolver.AppSyncRuntimeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AppSyncRuntimeProperty :: Prelude.Type
instance ToResourceProperties AppSyncRuntimeProperty
instance JSON.ToJSON AppSyncRuntimeProperty