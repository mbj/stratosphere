module Stratosphere.IoTFleetWise.SignalCatalog.BranchProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data BranchProperty :: Prelude.Type
instance ToResourceProperties BranchProperty
instance JSON.ToJSON BranchProperty