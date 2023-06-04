module Stratosphere.VpcLattice.TargetGroup.TargetProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TargetProperty :: Prelude.Type
instance ToResourceProperties TargetProperty
instance JSON.ToJSON TargetProperty