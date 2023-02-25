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
  = ContainerProviderProperty {id :: (Value Prelude.Text),
                               info :: ContainerInfoProperty,
                               type' :: (Value Prelude.Text)}
mkContainerProviderProperty ::
  Value Prelude.Text
  -> ContainerInfoProperty
     -> Value Prelude.Text -> ContainerProviderProperty
mkContainerProviderProperty id info type'
  = ContainerProviderProperty {id = id, info = info, type' = type'}
instance ToResourceProperties ContainerProviderProperty where
  toResourceProperties ContainerProviderProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMRContainers::VirtualCluster.ContainerProvider",
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