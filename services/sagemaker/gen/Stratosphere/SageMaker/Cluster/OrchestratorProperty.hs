module Stratosphere.SageMaker.Cluster.OrchestratorProperty (
        module Exports, OrchestratorProperty(..), mkOrchestratorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Cluster.ClusterOrchestratorEksConfigProperty as Exports
import Stratosphere.ResourceProperties
data OrchestratorProperty
  = OrchestratorProperty {eks :: ClusterOrchestratorEksConfigProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOrchestratorProperty ::
  ClusterOrchestratorEksConfigProperty -> OrchestratorProperty
mkOrchestratorProperty eks = OrchestratorProperty {eks = eks}
instance ToResourceProperties OrchestratorProperty where
  toResourceProperties OrchestratorProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Cluster.Orchestrator",
         supportsTags = Prelude.False, properties = ["Eks" JSON..= eks]}
instance JSON.ToJSON OrchestratorProperty where
  toJSON OrchestratorProperty {..} = JSON.object ["Eks" JSON..= eks]
instance Property "Eks" OrchestratorProperty where
  type PropertyType "Eks" OrchestratorProperty = ClusterOrchestratorEksConfigProperty
  set newValue OrchestratorProperty {}
    = OrchestratorProperty {eks = newValue, ..}