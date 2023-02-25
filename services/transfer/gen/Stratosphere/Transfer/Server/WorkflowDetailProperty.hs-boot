module Stratosphere.Transfer.Server.WorkflowDetailProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data WorkflowDetailProperty :: Prelude.Type
instance ToResourceProperties WorkflowDetailProperty
instance JSON.ToJSON WorkflowDetailProperty