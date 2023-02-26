module Stratosphere.EMR.InstanceGroupConfig.ScalingConstraintsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ScalingConstraintsProperty :: Prelude.Type
instance ToResourceProperties ScalingConstraintsProperty
instance JSON.ToJSON ScalingConstraintsProperty