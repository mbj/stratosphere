module Stratosphere.M2.Environment.StorageConfigurationProperty (
        module Exports, StorageConfigurationProperty(..),
        mkStorageConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.M2.Environment.EfsStorageConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.M2.Environment.FsxStorageConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data StorageConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-m2-environment-storageconfiguration.html>
    StorageConfigurationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-m2-environment-storageconfiguration.html#cfn-m2-environment-storageconfiguration-efs>
                                  efs :: (Prelude.Maybe EfsStorageConfigurationProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-m2-environment-storageconfiguration.html#cfn-m2-environment-storageconfiguration-fsx>
                                  fsx :: (Prelude.Maybe FsxStorageConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStorageConfigurationProperty :: StorageConfigurationProperty
mkStorageConfigurationProperty
  = StorageConfigurationProperty
      {haddock_workaround_ = (), efs = Prelude.Nothing,
       fsx = Prelude.Nothing}
instance ToResourceProperties StorageConfigurationProperty where
  toResourceProperties StorageConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::M2::Environment.StorageConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Efs" Prelude.<$> efs,
                            (JSON..=) "Fsx" Prelude.<$> fsx])}
instance JSON.ToJSON StorageConfigurationProperty where
  toJSON StorageConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Efs" Prelude.<$> efs,
               (JSON..=) "Fsx" Prelude.<$> fsx]))
instance Property "Efs" StorageConfigurationProperty where
  type PropertyType "Efs" StorageConfigurationProperty = EfsStorageConfigurationProperty
  set newValue StorageConfigurationProperty {..}
    = StorageConfigurationProperty {efs = Prelude.pure newValue, ..}
instance Property "Fsx" StorageConfigurationProperty where
  type PropertyType "Fsx" StorageConfigurationProperty = FsxStorageConfigurationProperty
  set newValue StorageConfigurationProperty {..}
    = StorageConfigurationProperty {fsx = Prelude.pure newValue, ..}