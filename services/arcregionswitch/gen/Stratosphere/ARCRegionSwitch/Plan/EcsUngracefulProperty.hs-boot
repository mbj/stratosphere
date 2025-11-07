module Stratosphere.ARCRegionSwitch.Plan.EcsUngracefulProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EcsUngracefulProperty :: Prelude.Type
instance ToResourceProperties EcsUngracefulProperty
instance Prelude.Eq EcsUngracefulProperty
instance Prelude.Show EcsUngracefulProperty
instance JSON.ToJSON EcsUngracefulProperty