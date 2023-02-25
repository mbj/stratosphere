module Stratosphere.EMR.InstanceGroupConfig.ScalingActionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ScalingActionProperty :: Prelude.Type
instance ToResourceProperties ScalingActionProperty
instance JSON.ToJSON ScalingActionProperty