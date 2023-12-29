module Stratosphere.EMR.Cluster.ScalingActionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ScalingActionProperty :: Prelude.Type
instance ToResourceProperties ScalingActionProperty
instance Prelude.Eq ScalingActionProperty
instance Prelude.Show ScalingActionProperty
instance JSON.ToJSON ScalingActionProperty