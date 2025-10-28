module Stratosphere.EMRContainers.VirtualCluster.ContainerProviderProperty (
        module Exports, ContainerProviderProperty(..),
        mkContainerProviderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EMRContainers.VirtualCluster.ContainerInfoProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContainerProviderProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrcontainers-virtualcluster-containerprovider.html>
    ContainerProviderProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrcontainers-virtualcluster-containerprovider.html#cfn-emrcontainers-virtualcluster-containerprovider-id>
                               id :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrcontainers-virtualcluster-containerprovider.html#cfn-emrcontainers-virtualcluster-containerprovider-info>
                               info :: ContainerInfoProperty,
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrcontainers-virtualcluster-containerprovider.html#cfn-emrcontainers-virtualcluster-containerprovider-type>
                               type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContainerProviderProperty ::
  Value Prelude.Text
  -> ContainerInfoProperty
     -> Value Prelude.Text -> ContainerProviderProperty
mkContainerProviderProperty id info type'
  = ContainerProviderProperty
      {haddock_workaround_ = (), id = id, info = info, type' = type'}
instance ToResourceProperties ContainerProviderProperty where
  toResourceProperties ContainerProviderProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMRContainers::VirtualCluster.ContainerProvider",
         supportsTags = Prelude.False,
         properties = ["Id" JSON..= id, "Info" JSON..= info,
                       "Type" JSON..= type']}
instance JSON.ToJSON ContainerProviderProperty where
  toJSON ContainerProviderProperty {..}
    = JSON.object
        ["Id" JSON..= id, "Info" JSON..= info, "Type" JSON..= type']
instance Property "Id" ContainerProviderProperty where
  type PropertyType "Id" ContainerProviderProperty = Value Prelude.Text
  set newValue ContainerProviderProperty {..}
    = ContainerProviderProperty {id = newValue, ..}
instance Property "Info" ContainerProviderProperty where
  type PropertyType "Info" ContainerProviderProperty = ContainerInfoProperty
  set newValue ContainerProviderProperty {..}
    = ContainerProviderProperty {info = newValue, ..}
instance Property "Type" ContainerProviderProperty where
  type PropertyType "Type" ContainerProviderProperty = Value Prelude.Text
  set newValue ContainerProviderProperty {..}
    = ContainerProviderProperty {type' = newValue, ..}