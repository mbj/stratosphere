module Stratosphere.Cognito.IdentityPool.PushSyncProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PushSyncProperty :: Prelude.Type
instance ToResourceProperties PushSyncProperty
instance JSON.ToJSON PushSyncProperty