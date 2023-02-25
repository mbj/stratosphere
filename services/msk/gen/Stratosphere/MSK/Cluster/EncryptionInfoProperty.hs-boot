module Stratosphere.MSK.Cluster.EncryptionInfoProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EncryptionInfoProperty :: Prelude.Type
instance ToResourceProperties EncryptionInfoProperty
instance JSON.ToJSON EncryptionInfoProperty