module Stratosphere.FSx.FileSystem.RootVolumeConfigurationProperty (
        module Exports, RootVolumeConfigurationProperty(..),
        mkRootVolumeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FSx.FileSystem.NfsExportsProperty as Exports
import {-# SOURCE #-} Stratosphere.FSx.FileSystem.UserAndGroupQuotasProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RootVolumeConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-openzfsconfiguration-rootvolumeconfiguration.html>
    RootVolumeConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-openzfsconfiguration-rootvolumeconfiguration.html#cfn-fsx-filesystem-openzfsconfiguration-rootvolumeconfiguration-copytagstosnapshots>
                                     copyTagsToSnapshots :: (Prelude.Maybe (Value Prelude.Bool)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-openzfsconfiguration-rootvolumeconfiguration.html#cfn-fsx-filesystem-openzfsconfiguration-rootvolumeconfiguration-datacompressiontype>
                                     dataCompressionType :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-openzfsconfiguration-rootvolumeconfiguration.html#cfn-fsx-filesystem-openzfsconfiguration-rootvolumeconfiguration-nfsexports>
                                     nfsExports :: (Prelude.Maybe [NfsExportsProperty]),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-openzfsconfiguration-rootvolumeconfiguration.html#cfn-fsx-filesystem-openzfsconfiguration-rootvolumeconfiguration-readonly>
                                     readOnly :: (Prelude.Maybe (Value Prelude.Bool)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-openzfsconfiguration-rootvolumeconfiguration.html#cfn-fsx-filesystem-openzfsconfiguration-rootvolumeconfiguration-recordsizekib>
                                     recordSizeKiB :: (Prelude.Maybe (Value Prelude.Integer)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-openzfsconfiguration-rootvolumeconfiguration.html#cfn-fsx-filesystem-openzfsconfiguration-rootvolumeconfiguration-userandgroupquotas>
                                     userAndGroupQuotas :: (Prelude.Maybe [UserAndGroupQuotasProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRootVolumeConfigurationProperty ::
  RootVolumeConfigurationProperty
mkRootVolumeConfigurationProperty
  = RootVolumeConfigurationProperty
      {haddock_workaround_ = (), copyTagsToSnapshots = Prelude.Nothing,
       dataCompressionType = Prelude.Nothing,
       nfsExports = Prelude.Nothing, readOnly = Prelude.Nothing,
       recordSizeKiB = Prelude.Nothing,
       userAndGroupQuotas = Prelude.Nothing}
instance ToResourceProperties RootVolumeConfigurationProperty where
  toResourceProperties RootVolumeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::FSx::FileSystem.RootVolumeConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CopyTagsToSnapshots" Prelude.<$> copyTagsToSnapshots,
                            (JSON..=) "DataCompressionType" Prelude.<$> dataCompressionType,
                            (JSON..=) "NfsExports" Prelude.<$> nfsExports,
                            (JSON..=) "ReadOnly" Prelude.<$> readOnly,
                            (JSON..=) "RecordSizeKiB" Prelude.<$> recordSizeKiB,
                            (JSON..=) "UserAndGroupQuotas" Prelude.<$> userAndGroupQuotas])}
instance JSON.ToJSON RootVolumeConfigurationProperty where
  toJSON RootVolumeConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CopyTagsToSnapshots" Prelude.<$> copyTagsToSnapshots,
               (JSON..=) "DataCompressionType" Prelude.<$> dataCompressionType,
               (JSON..=) "NfsExports" Prelude.<$> nfsExports,
               (JSON..=) "ReadOnly" Prelude.<$> readOnly,
               (JSON..=) "RecordSizeKiB" Prelude.<$> recordSizeKiB,
               (JSON..=) "UserAndGroupQuotas" Prelude.<$> userAndGroupQuotas]))
instance Property "CopyTagsToSnapshots" RootVolumeConfigurationProperty where
  type PropertyType "CopyTagsToSnapshots" RootVolumeConfigurationProperty = Value Prelude.Bool
  set newValue RootVolumeConfigurationProperty {..}
    = RootVolumeConfigurationProperty
        {copyTagsToSnapshots = Prelude.pure newValue, ..}
instance Property "DataCompressionType" RootVolumeConfigurationProperty where
  type PropertyType "DataCompressionType" RootVolumeConfigurationProperty = Value Prelude.Text
  set newValue RootVolumeConfigurationProperty {..}
    = RootVolumeConfigurationProperty
        {dataCompressionType = Prelude.pure newValue, ..}
instance Property "NfsExports" RootVolumeConfigurationProperty where
  type PropertyType "NfsExports" RootVolumeConfigurationProperty = [NfsExportsProperty]
  set newValue RootVolumeConfigurationProperty {..}
    = RootVolumeConfigurationProperty
        {nfsExports = Prelude.pure newValue, ..}
instance Property "ReadOnly" RootVolumeConfigurationProperty where
  type PropertyType "ReadOnly" RootVolumeConfigurationProperty = Value Prelude.Bool
  set newValue RootVolumeConfigurationProperty {..}
    = RootVolumeConfigurationProperty
        {readOnly = Prelude.pure newValue, ..}
instance Property "RecordSizeKiB" RootVolumeConfigurationProperty where
  type PropertyType "RecordSizeKiB" RootVolumeConfigurationProperty = Value Prelude.Integer
  set newValue RootVolumeConfigurationProperty {..}
    = RootVolumeConfigurationProperty
        {recordSizeKiB = Prelude.pure newValue, ..}
instance Property "UserAndGroupQuotas" RootVolumeConfigurationProperty where
  type PropertyType "UserAndGroupQuotas" RootVolumeConfigurationProperty = [UserAndGroupQuotasProperty]
  set newValue RootVolumeConfigurationProperty {..}
    = RootVolumeConfigurationProperty
        {userAndGroupQuotas = Prelude.pure newValue, ..}