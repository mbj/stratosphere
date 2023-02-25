module Stratosphere.Lambda.Function.EphemeralStorageProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EphemeralStorageProperty :: Prelude.Type
instance ToResourceProperties EphemeralStorageProperty
instance JSON.ToJSON EphemeralStorageProperty