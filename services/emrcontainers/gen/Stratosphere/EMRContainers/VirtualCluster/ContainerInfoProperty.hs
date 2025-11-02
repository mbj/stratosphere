module Stratosphere.EMRContainers.VirtualCluster.ContainerInfoProperty (
        module Exports, ContainerInfoProperty(..), mkContainerInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EMRContainers.VirtualCluster.EksInfoProperty as Exports
import Stratosphere.ResourceProperties
data ContainerInfoProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrcontainers-virtualcluster-containerinfo.html>
    ContainerInfoProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrcontainers-virtualcluster-containerinfo.html#cfn-emrcontainers-virtualcluster-containerinfo-eksinfo>
                           eksInfo :: EksInfoProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContainerInfoProperty :: EksInfoProperty -> ContainerInfoProperty
mkContainerInfoProperty eksInfo
  = ContainerInfoProperty
      {haddock_workaround_ = (), eksInfo = eksInfo}
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
  set newValue ContainerInfoProperty {..}
    = ContainerInfoProperty {eksInfo = newValue, ..}