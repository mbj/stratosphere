module Stratosphere.SSM.ResourceDataSync.SyncSourceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SyncSourceProperty :: Prelude.Type
instance ToResourceProperties SyncSourceProperty
instance Prelude.Eq SyncSourceProperty
instance Prelude.Show SyncSourceProperty
instance JSON.ToJSON SyncSourceProperty