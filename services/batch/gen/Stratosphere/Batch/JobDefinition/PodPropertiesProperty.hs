module Stratosphere.Batch.JobDefinition.PodPropertiesProperty (
        module Exports, PodPropertiesProperty(..), mkPodPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.EksContainerProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.EksVolumeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PodPropertiesProperty
  = PodPropertiesProperty {containers :: (Prelude.Maybe [EksContainerProperty]),
                           dnsPolicy :: (Prelude.Maybe (Value Prelude.Text)),
                           hostNetwork :: (Prelude.Maybe (Value Prelude.Bool)),
                           serviceAccountName :: (Prelude.Maybe (Value Prelude.Text)),
                           volumes :: (Prelude.Maybe [EksVolumeProperty])}
mkPodPropertiesProperty :: PodPropertiesProperty
mkPodPropertiesProperty
  = PodPropertiesProperty
      {containers = Prelude.Nothing, dnsPolicy = Prelude.Nothing,
       hostNetwork = Prelude.Nothing,
       serviceAccountName = Prelude.Nothing, volumes = Prelude.Nothing}
instance ToResourceProperties PodPropertiesProperty where
  toResourceProperties PodPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.PodProperties",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Containers" Prelude.<$> containers,
                            (JSON..=) "DnsPolicy" Prelude.<$> dnsPolicy,
                            (JSON..=) "HostNetwork" Prelude.<$> hostNetwork,
                            (JSON..=) "ServiceAccountName" Prelude.<$> serviceAccountName,
                            (JSON..=) "Volumes" Prelude.<$> volumes])}
instance JSON.ToJSON PodPropertiesProperty where
  toJSON PodPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Containers" Prelude.<$> containers,
               (JSON..=) "DnsPolicy" Prelude.<$> dnsPolicy,
               (JSON..=) "HostNetwork" Prelude.<$> hostNetwork,
               (JSON..=) "ServiceAccountName" Prelude.<$> serviceAccountName,
               (JSON..=) "Volumes" Prelude.<$> volumes]))
instance Property "Containers" PodPropertiesProperty where
  type PropertyType "Containers" PodPropertiesProperty = [EksContainerProperty]
  set newValue PodPropertiesProperty {..}
    = PodPropertiesProperty {containers = Prelude.pure newValue, ..}
instance Property "DnsPolicy" PodPropertiesProperty where
  type PropertyType "DnsPolicy" PodPropertiesProperty = Value Prelude.Text
  set newValue PodPropertiesProperty {..}
    = PodPropertiesProperty {dnsPolicy = Prelude.pure newValue, ..}
instance Property "HostNetwork" PodPropertiesProperty where
  type PropertyType "HostNetwork" PodPropertiesProperty = Value Prelude.Bool
  set newValue PodPropertiesProperty {..}
    = PodPropertiesProperty {hostNetwork = Prelude.pure newValue, ..}
instance Property "ServiceAccountName" PodPropertiesProperty where
  type PropertyType "ServiceAccountName" PodPropertiesProperty = Value Prelude.Text
  set newValue PodPropertiesProperty {..}
    = PodPropertiesProperty
        {serviceAccountName = Prelude.pure newValue, ..}
instance Property "Volumes" PodPropertiesProperty where
  type PropertyType "Volumes" PodPropertiesProperty = [EksVolumeProperty]
  set newValue PodPropertiesProperty {..}
    = PodPropertiesProperty {volumes = Prelude.pure newValue, ..}