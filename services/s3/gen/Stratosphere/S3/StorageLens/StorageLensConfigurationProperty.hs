module Stratosphere.S3.StorageLens.StorageLensConfigurationProperty (
        module Exports, StorageLensConfigurationProperty(..),
        mkStorageLensConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.StorageLens.AccountLevelProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.StorageLens.AwsOrgProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.StorageLens.BucketsAndRegionsProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.StorageLens.DataExportProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StorageLensConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-storagelensconfiguration.html>
    StorageLensConfigurationProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-storagelensconfiguration.html#cfn-s3-storagelens-storagelensconfiguration-accountlevel>
                                      accountLevel :: AccountLevelProperty,
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-storagelensconfiguration.html#cfn-s3-storagelens-storagelensconfiguration-awsorg>
                                      awsOrg :: (Prelude.Maybe AwsOrgProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-storagelensconfiguration.html#cfn-s3-storagelens-storagelensconfiguration-dataexport>
                                      dataExport :: (Prelude.Maybe DataExportProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-storagelensconfiguration.html#cfn-s3-storagelens-storagelensconfiguration-exclude>
                                      exclude :: (Prelude.Maybe BucketsAndRegionsProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-storagelensconfiguration.html#cfn-s3-storagelens-storagelensconfiguration-id>
                                      id :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-storagelensconfiguration.html#cfn-s3-storagelens-storagelensconfiguration-include>
                                      include :: (Prelude.Maybe BucketsAndRegionsProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-storagelensconfiguration.html#cfn-s3-storagelens-storagelensconfiguration-isenabled>
                                      isEnabled :: (Value Prelude.Bool),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-storagelensconfiguration.html#cfn-s3-storagelens-storagelensconfiguration-storagelensarn>
                                      storageLensArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStorageLensConfigurationProperty ::
  AccountLevelProperty
  -> Value Prelude.Text
     -> Value Prelude.Bool -> StorageLensConfigurationProperty
mkStorageLensConfigurationProperty accountLevel id isEnabled
  = StorageLensConfigurationProperty
      {haddock_workaround_ = (), accountLevel = accountLevel, id = id,
       isEnabled = isEnabled, awsOrg = Prelude.Nothing,
       dataExport = Prelude.Nothing, exclude = Prelude.Nothing,
       include = Prelude.Nothing, storageLensArn = Prelude.Nothing}
instance ToResourceProperties StorageLensConfigurationProperty where
  toResourceProperties StorageLensConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::StorageLens.StorageLensConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AccountLevel" JSON..= accountLevel, "Id" JSON..= id,
                            "IsEnabled" JSON..= isEnabled]
                           (Prelude.catMaybes
                              [(JSON..=) "AwsOrg" Prelude.<$> awsOrg,
                               (JSON..=) "DataExport" Prelude.<$> dataExport,
                               (JSON..=) "Exclude" Prelude.<$> exclude,
                               (JSON..=) "Include" Prelude.<$> include,
                               (JSON..=) "StorageLensArn" Prelude.<$> storageLensArn]))}
instance JSON.ToJSON StorageLensConfigurationProperty where
  toJSON StorageLensConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AccountLevel" JSON..= accountLevel, "Id" JSON..= id,
               "IsEnabled" JSON..= isEnabled]
              (Prelude.catMaybes
                 [(JSON..=) "AwsOrg" Prelude.<$> awsOrg,
                  (JSON..=) "DataExport" Prelude.<$> dataExport,
                  (JSON..=) "Exclude" Prelude.<$> exclude,
                  (JSON..=) "Include" Prelude.<$> include,
                  (JSON..=) "StorageLensArn" Prelude.<$> storageLensArn])))
instance Property "AccountLevel" StorageLensConfigurationProperty where
  type PropertyType "AccountLevel" StorageLensConfigurationProperty = AccountLevelProperty
  set newValue StorageLensConfigurationProperty {..}
    = StorageLensConfigurationProperty {accountLevel = newValue, ..}
instance Property "AwsOrg" StorageLensConfigurationProperty where
  type PropertyType "AwsOrg" StorageLensConfigurationProperty = AwsOrgProperty
  set newValue StorageLensConfigurationProperty {..}
    = StorageLensConfigurationProperty
        {awsOrg = Prelude.pure newValue, ..}
instance Property "DataExport" StorageLensConfigurationProperty where
  type PropertyType "DataExport" StorageLensConfigurationProperty = DataExportProperty
  set newValue StorageLensConfigurationProperty {..}
    = StorageLensConfigurationProperty
        {dataExport = Prelude.pure newValue, ..}
instance Property "Exclude" StorageLensConfigurationProperty where
  type PropertyType "Exclude" StorageLensConfigurationProperty = BucketsAndRegionsProperty
  set newValue StorageLensConfigurationProperty {..}
    = StorageLensConfigurationProperty
        {exclude = Prelude.pure newValue, ..}
instance Property "Id" StorageLensConfigurationProperty where
  type PropertyType "Id" StorageLensConfigurationProperty = Value Prelude.Text
  set newValue StorageLensConfigurationProperty {..}
    = StorageLensConfigurationProperty {id = newValue, ..}
instance Property "Include" StorageLensConfigurationProperty where
  type PropertyType "Include" StorageLensConfigurationProperty = BucketsAndRegionsProperty
  set newValue StorageLensConfigurationProperty {..}
    = StorageLensConfigurationProperty
        {include = Prelude.pure newValue, ..}
instance Property "IsEnabled" StorageLensConfigurationProperty where
  type PropertyType "IsEnabled" StorageLensConfigurationProperty = Value Prelude.Bool
  set newValue StorageLensConfigurationProperty {..}
    = StorageLensConfigurationProperty {isEnabled = newValue, ..}
instance Property "StorageLensArn" StorageLensConfigurationProperty where
  type PropertyType "StorageLensArn" StorageLensConfigurationProperty = Value Prelude.Text
  set newValue StorageLensConfigurationProperty {..}
    = StorageLensConfigurationProperty
        {storageLensArn = Prelude.pure newValue, ..}