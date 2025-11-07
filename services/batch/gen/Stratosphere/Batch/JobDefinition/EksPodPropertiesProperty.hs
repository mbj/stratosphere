module Stratosphere.Batch.JobDefinition.EksPodPropertiesProperty (
        module Exports, EksPodPropertiesProperty(..),
        mkEksPodPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.EksContainerProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.EksMetadataProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.EksVolumeProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.ImagePullSecretProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EksPodPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ekspodproperties.html>
    EksPodPropertiesProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ekspodproperties.html#cfn-batch-jobdefinition-ekspodproperties-containers>
                              containers :: (Prelude.Maybe [EksContainerProperty]),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ekspodproperties.html#cfn-batch-jobdefinition-ekspodproperties-dnspolicy>
                              dnsPolicy :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ekspodproperties.html#cfn-batch-jobdefinition-ekspodproperties-hostnetwork>
                              hostNetwork :: (Prelude.Maybe (Value Prelude.Bool)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ekspodproperties.html#cfn-batch-jobdefinition-ekspodproperties-imagepullsecrets>
                              imagePullSecrets :: (Prelude.Maybe [ImagePullSecretProperty]),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ekspodproperties.html#cfn-batch-jobdefinition-ekspodproperties-initcontainers>
                              initContainers :: (Prelude.Maybe [EksContainerProperty]),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ekspodproperties.html#cfn-batch-jobdefinition-ekspodproperties-metadata>
                              metadata :: (Prelude.Maybe EksMetadataProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ekspodproperties.html#cfn-batch-jobdefinition-ekspodproperties-serviceaccountname>
                              serviceAccountName :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ekspodproperties.html#cfn-batch-jobdefinition-ekspodproperties-shareprocessnamespace>
                              shareProcessNamespace :: (Prelude.Maybe (Value Prelude.Bool)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ekspodproperties.html#cfn-batch-jobdefinition-ekspodproperties-volumes>
                              volumes :: (Prelude.Maybe [EksVolumeProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEksPodPropertiesProperty :: EksPodPropertiesProperty
mkEksPodPropertiesProperty
  = EksPodPropertiesProperty
      {haddock_workaround_ = (), containers = Prelude.Nothing,
       dnsPolicy = Prelude.Nothing, hostNetwork = Prelude.Nothing,
       imagePullSecrets = Prelude.Nothing,
       initContainers = Prelude.Nothing, metadata = Prelude.Nothing,
       serviceAccountName = Prelude.Nothing,
       shareProcessNamespace = Prelude.Nothing, volumes = Prelude.Nothing}
instance ToResourceProperties EksPodPropertiesProperty where
  toResourceProperties EksPodPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.EksPodProperties",
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
instance JSON.ToJSON EksPodPropertiesProperty where
  toJSON EksPodPropertiesProperty {..}
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
instance Property "Containers" EksPodPropertiesProperty where
  type PropertyType "Containers" EksPodPropertiesProperty = [EksContainerProperty]
  set newValue EksPodPropertiesProperty {..}
    = EksPodPropertiesProperty {containers = Prelude.pure newValue, ..}
instance Property "DnsPolicy" EksPodPropertiesProperty where
  type PropertyType "DnsPolicy" EksPodPropertiesProperty = Value Prelude.Text
  set newValue EksPodPropertiesProperty {..}
    = EksPodPropertiesProperty {dnsPolicy = Prelude.pure newValue, ..}
instance Property "HostNetwork" EksPodPropertiesProperty where
  type PropertyType "HostNetwork" EksPodPropertiesProperty = Value Prelude.Bool
  set newValue EksPodPropertiesProperty {..}
    = EksPodPropertiesProperty
        {hostNetwork = Prelude.pure newValue, ..}
instance Property "ImagePullSecrets" EksPodPropertiesProperty where
  type PropertyType "ImagePullSecrets" EksPodPropertiesProperty = [ImagePullSecretProperty]
  set newValue EksPodPropertiesProperty {..}
    = EksPodPropertiesProperty
        {imagePullSecrets = Prelude.pure newValue, ..}
instance Property "InitContainers" EksPodPropertiesProperty where
  type PropertyType "InitContainers" EksPodPropertiesProperty = [EksContainerProperty]
  set newValue EksPodPropertiesProperty {..}
    = EksPodPropertiesProperty
        {initContainers = Prelude.pure newValue, ..}
instance Property "Metadata" EksPodPropertiesProperty where
  type PropertyType "Metadata" EksPodPropertiesProperty = EksMetadataProperty
  set newValue EksPodPropertiesProperty {..}
    = EksPodPropertiesProperty {metadata = Prelude.pure newValue, ..}
instance Property "ServiceAccountName" EksPodPropertiesProperty where
  type PropertyType "ServiceAccountName" EksPodPropertiesProperty = Value Prelude.Text
  set newValue EksPodPropertiesProperty {..}
    = EksPodPropertiesProperty
        {serviceAccountName = Prelude.pure newValue, ..}
instance Property "ShareProcessNamespace" EksPodPropertiesProperty where
  type PropertyType "ShareProcessNamespace" EksPodPropertiesProperty = Value Prelude.Bool
  set newValue EksPodPropertiesProperty {..}
    = EksPodPropertiesProperty
        {shareProcessNamespace = Prelude.pure newValue, ..}
instance Property "Volumes" EksPodPropertiesProperty where
  type PropertyType "Volumes" EksPodPropertiesProperty = [EksVolumeProperty]
  set newValue EksPodPropertiesProperty {..}
    = EksPodPropertiesProperty {volumes = Prelude.pure newValue, ..}