module Stratosphere.GameLift.Build.StorageLocationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data StorageLocationProperty :: Prelude.Type
instance ToResourceProperties StorageLocationProperty
instance JSON.ToJSON StorageLocationProperty