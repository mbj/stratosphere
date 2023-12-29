module Stratosphere.EMRContainers.VirtualCluster.EksInfoProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EksInfoProperty :: Prelude.Type
instance ToResourceProperties EksInfoProperty
instance Prelude.Eq EksInfoProperty
instance Prelude.Show EksInfoProperty
instance JSON.ToJSON EksInfoProperty