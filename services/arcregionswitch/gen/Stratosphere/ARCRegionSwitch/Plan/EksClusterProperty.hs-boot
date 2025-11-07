module Stratosphere.ARCRegionSwitch.Plan.EksClusterProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EksClusterProperty :: Prelude.Type
instance ToResourceProperties EksClusterProperty
instance Prelude.Eq EksClusterProperty
instance Prelude.Show EksClusterProperty
instance JSON.ToJSON EksClusterProperty