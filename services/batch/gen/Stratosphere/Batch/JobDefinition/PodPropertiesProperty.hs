module Stratosphere.Batch.JobDefinition.PodPropertiesProperty (
        module Exports, PodPropertiesProperty(..), mkPodPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.EksContainerProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.EksVolumeProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.ImagePullSecretProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.MetadataProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PodPropertiesProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-podproperties.html>
    PodPropertiesProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-podproperties.html#cfn-batch-jobdefinition-podproperties-containers>
                           containers :: (Prelude.Maybe [EksContainerProperty]),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-podproperties.html#cfn-batch-jobdefinition-podproperties-dnspolicy>
                           dnsPolicy :: (Prelude.Maybe (Value Prelude.Text)),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-podproperties.html#cfn-batch-jobdefinition-podproperties-hostnetwork>
                           hostNetwork :: (Prelude.Maybe (Value Prelude.Bool)),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-podproperties.html#cfn-batch-jobdefinition-podproperties-imagepullsecrets>
                           imagePullSecrets :: (Prelude.Maybe [ImagePullSecretProperty]),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-podproperties.html#cfn-batch-jobdefinition-podproperties-initcontainers>
                           initContainers :: (Prelude.Maybe [EksContainerProperty]),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-podproperties.html#cfn-batch-jobdefinition-podproperties-metadata>
                           metadata :: (Prelude.Maybe MetadataProperty),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-podproperties.html#cfn-batch-jobdefinition-podproperties-serviceaccountname>
                           serviceAccountName :: (Prelude.Maybe (Value Prelude.Text)),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-podproperties.html#cfn-batch-jobdefinition-podproperties-shareprocessnamespace>
                           shareProcessNamespace :: (Prelude.Maybe (Value Prelude.Bool)),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-podproperties.html#cfn-batch-jobdefinition-podproperties-volumes>
                           volumes :: (Prelude.Maybe [EksVolumeProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPodPropertiesProperty :: PodPropertiesProperty
mkPodPropertiesProperty
  = PodPropertiesProperty
      {containers = Prelude.Nothing, dnsPolicy = Prelude.Nothing,
       hostNetwork = Prelude.Nothing, imagePullSecrets = Prelude.Nothing,
       initContainers = Prelude.Nothing, metadata = Prelude.Nothing,
       serviceAccountName = Prelude.Nothing,
       shareProcessNamespace = Prelude.Nothing, volumes = Prelude.Nothing}
instance ToResourceProperties PodPropertiesProperty where
  toResourceProperties PodPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.PodProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Containers" Prelude.<$> containers,
                            (JSON..=) "DnsPolicy" Prelude.<$> dnsPolicy,
                            (JSON..=) "HostNetwork" Prelude.<$> hostNetwork,
                            (JSON..=) "ImagePullSecrets" Prelude.<$> imagePullSecrets,
                            (JSON..=) "InitContainers" Prelude.<$> initContainers,
                            (JSON..=) "Metadata" Prelude.<$> metadata,
                            (JSON..=) "ServiceAccountName" Prelude.<$> serviceAccountName,
                            (JSON..=) "ShareProcessNamespace"
                              Prelude.<$> shareProcessNamespace,
                            (JSON..=) "Volumes" Prelude.<$> volumes])}
instance JSON.ToJSON PodPropertiesProperty where
  toJSON PodPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Containers" Prelude.<$> containers,
               (JSON..=) "DnsPolicy" Prelude.<$> dnsPolicy,
               (JSON..=) "HostNetwork" Prelude.<$> hostNetwork,
               (JSON..=) "ImagePullSecrets" Prelude.<$> imagePullSecrets,
               (JSON..=) "InitContainers" Prelude.<$> initContainers,
               (JSON..=) "Metadata" Prelude.<$> metadata,
               (JSON..=) "ServiceAccountName" Prelude.<$> serviceAccountName,
               (JSON..=) "ShareProcessNamespace"
                 Prelude.<$> shareProcessNamespace,
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
instance Property "ImagePullSecrets" PodPropertiesProperty where
  type PropertyType "ImagePullSecrets" PodPropertiesProperty = [ImagePullSecretProperty]
  set newValue PodPropertiesProperty {..}
    = PodPropertiesProperty
        {imagePullSecrets = Prelude.pure newValue, ..}
instance Property "InitContainers" PodPropertiesProperty where
  type PropertyType "InitContainers" PodPropertiesProperty = [EksContainerProperty]
  set newValue PodPropertiesProperty {..}
    = PodPropertiesProperty
        {initContainers = Prelude.pure newValue, ..}
instance Property "Metadata" PodPropertiesProperty where
  type PropertyType "Metadata" PodPropertiesProperty = MetadataProperty
  set newValue PodPropertiesProperty {..}
    = PodPropertiesProperty {metadata = Prelude.pure newValue, ..}
instance Property "ServiceAccountName" PodPropertiesProperty where
  type PropertyType "ServiceAccountName" PodPropertiesProperty = Value Prelude.Text
  set newValue PodPropertiesProperty {..}
    = PodPropertiesProperty
        {serviceAccountName = Prelude.pure newValue, ..}
instance Property "ShareProcessNamespace" PodPropertiesProperty where
  type PropertyType "ShareProcessNamespace" PodPropertiesProperty = Value Prelude.Bool
  set newValue PodPropertiesProperty {..}
    = PodPropertiesProperty
        {shareProcessNamespace = Prelude.pure newValue, ..}
instance Property "Volumes" PodPropertiesProperty where
  type PropertyType "Volumes" PodPropertiesProperty = [EksVolumeProperty]
  set newValue PodPropertiesProperty {..}
    = PodPropertiesProperty {volumes = Prelude.pure newValue, ..}