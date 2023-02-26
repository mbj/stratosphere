module Stratosphere.AppStream.Fleet.ComputeCapacityProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ComputeCapacityProperty :: Prelude.Type
instance ToResourceProperties ComputeCapacityProperty
instance JSON.ToJSON ComputeCapacityProperty