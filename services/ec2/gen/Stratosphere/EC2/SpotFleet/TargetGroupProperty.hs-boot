module Stratosphere.EC2.SpotFleet.TargetGroupProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TargetGroupProperty :: Prelude.Type
instance ToResourceProperties TargetGroupProperty
instance Prelude.Eq TargetGroupProperty
instance Prelude.Show TargetGroupProperty
instance JSON.ToJSON TargetGroupProperty