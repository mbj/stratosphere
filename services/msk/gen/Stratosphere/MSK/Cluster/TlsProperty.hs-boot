module Stratosphere.MSK.Cluster.TlsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TlsProperty :: Prelude.Type
instance ToResourceProperties TlsProperty
instance JSON.ToJSON TlsProperty