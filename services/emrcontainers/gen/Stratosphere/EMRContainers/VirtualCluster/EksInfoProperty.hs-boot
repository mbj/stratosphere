module Stratosphere.EMRContainers.VirtualCluster.EksInfoProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EksInfoProperty :: Prelude.Type
instance ToResourceProperties EksInfoProperty
instance JSON.ToJSON EksInfoProperty