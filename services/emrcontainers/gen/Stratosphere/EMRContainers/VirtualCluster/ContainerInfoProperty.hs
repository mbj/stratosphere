module Stratosphere.EMRContainers.VirtualCluster.ContainerInfoProperty (
        module Exports, ContainerInfoProperty(..), mkContainerInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EMRContainers.VirtualCluster.EksInfoProperty as Exports
import Stratosphere.ResourceProperties
data ContainerInfoProperty
  = ContainerInfoProperty {eksInfo :: EksInfoProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContainerInfoProperty :: EksInfoProperty -> ContainerInfoProperty
mkContainerInfoProperty eksInfo
  = ContainerInfoProperty {eksInfo = eksInfo}
instance ToResourceProperties ContainerInfoProperty where
  toResourceProperties ContainerInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMRContainers::VirtualCluster.ContainerInfo",
         supportsTags = Prelude.False,
         properties = ["EksInfo" JSON..= eksInfo]}
instance JSON.ToJSON ContainerInfoProperty where
  toJSON ContainerInfoProperty {..}
    = JSON.object ["EksInfo" JSON..= eksInfo]
instance Property "EksInfo" ContainerInfoProperty where
  type PropertyType "EksInfo" ContainerInfoProperty = EksInfoProperty
  set newValue ContainerInfoProperty {}
    = ContainerInfoProperty {eksInfo = newValue, ..}