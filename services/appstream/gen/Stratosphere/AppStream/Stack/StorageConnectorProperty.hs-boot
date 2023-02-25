module Stratosphere.AppStream.Stack.StorageConnectorProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data StorageConnectorProperty :: Prelude.Type
instance ToResourceProperties StorageConnectorProperty
instance JSON.ToJSON StorageConnectorProperty