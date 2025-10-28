module Stratosphere.RDS.CustomDBEngineVersion (
        CustomDBEngineVersion(..), mkCustomDBEngineVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data CustomDBEngineVersion
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-customdbengineversion.html>
    CustomDBEngineVersion {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-customdbengineversion.html#cfn-rds-customdbengineversion-databaseinstallationfiless3bucketname>
                           databaseInstallationFilesS3BucketName :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-customdbengineversion.html#cfn-rds-customdbengineversion-databaseinstallationfiless3prefix>
                           databaseInstallationFilesS3Prefix :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-customdbengineversion.html#cfn-rds-customdbengineversion-description>
                           description :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-customdbengineversion.html#cfn-rds-customdbengineversion-engine>
                           engine :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-customdbengineversion.html#cfn-rds-customdbengineversion-engineversion>
                           engineVersion :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-customdbengineversion.html#cfn-rds-customdbengineversion-imageid>
                           imageId :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-customdbengineversion.html#cfn-rds-customdbengineversion-kmskeyid>
                           kMSKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-customdbengineversion.html#cfn-rds-customdbengineversion-manifest>
                           manifest :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-customdbengineversion.html#cfn-rds-customdbengineversion-sourcecustomdbengineversionidentifier>
                           sourceCustomDbEngineVersionIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-customdbengineversion.html#cfn-rds-customdbengineversion-status>
                           status :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-customdbengineversion.html#cfn-rds-customdbengineversion-tags>
                           tags :: (Prelude.Maybe [Tag]),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-customdbengineversion.html#cfn-rds-customdbengineversion-useawsprovidedlatestimage>
                           useAwsProvidedLatestImage :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomDBEngineVersion ::
  Value Prelude.Text -> Value Prelude.Text -> CustomDBEngineVersion
mkCustomDBEngineVersion engine engineVersion
  = CustomDBEngineVersion
      {haddock_workaround_ = (), engine = engine,
       engineVersion = engineVersion,
       databaseInstallationFilesS3BucketName = Prelude.Nothing,
       databaseInstallationFilesS3Prefix = Prelude.Nothing,
       description = Prelude.Nothing, imageId = Prelude.Nothing,
       kMSKeyId = Prelude.Nothing, manifest = Prelude.Nothing,
       sourceCustomDbEngineVersionIdentifier = Prelude.Nothing,
       status = Prelude.Nothing, tags = Prelude.Nothing,
       useAwsProvidedLatestImage = Prelude.Nothing}
instance ToResourceProperties CustomDBEngineVersion where
  toResourceProperties CustomDBEngineVersion {..}
    = ResourceProperties
        {awsType = "AWS::RDS::CustomDBEngineVersion",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Engine" JSON..= engine, "EngineVersion" JSON..= engineVersion]
                           (Prelude.catMaybes
                              [(JSON..=) "DatabaseInstallationFilesS3BucketName"
                                 Prelude.<$> databaseInstallationFilesS3BucketName,
                               (JSON..=) "DatabaseInstallationFilesS3Prefix"
                                 Prelude.<$> databaseInstallationFilesS3Prefix,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "ImageId" Prelude.<$> imageId,
                               (JSON..=) "KMSKeyId" Prelude.<$> kMSKeyId,
                               (JSON..=) "Manifest" Prelude.<$> manifest,
                               (JSON..=) "SourceCustomDbEngineVersionIdentifier"
                                 Prelude.<$> sourceCustomDbEngineVersionIdentifier,
                               (JSON..=) "Status" Prelude.<$> status,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "UseAwsProvidedLatestImage"
                                 Prelude.<$> useAwsProvidedLatestImage]))}
instance JSON.ToJSON CustomDBEngineVersion where
  toJSON CustomDBEngineVersion {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Engine" JSON..= engine, "EngineVersion" JSON..= engineVersion]
              (Prelude.catMaybes
                 [(JSON..=) "DatabaseInstallationFilesS3BucketName"
                    Prelude.<$> databaseInstallationFilesS3BucketName,
                  (JSON..=) "DatabaseInstallationFilesS3Prefix"
                    Prelude.<$> databaseInstallationFilesS3Prefix,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "ImageId" Prelude.<$> imageId,
                  (JSON..=) "KMSKeyId" Prelude.<$> kMSKeyId,
                  (JSON..=) "Manifest" Prelude.<$> manifest,
                  (JSON..=) "SourceCustomDbEngineVersionIdentifier"
                    Prelude.<$> sourceCustomDbEngineVersionIdentifier,
                  (JSON..=) "Status" Prelude.<$> status,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "UseAwsProvidedLatestImage"
                    Prelude.<$> useAwsProvidedLatestImage])))
instance Property "DatabaseInstallationFilesS3BucketName" CustomDBEngineVersion where
  type PropertyType "DatabaseInstallationFilesS3BucketName" CustomDBEngineVersion = Value Prelude.Text
  set newValue CustomDBEngineVersion {..}
    = CustomDBEngineVersion
        {databaseInstallationFilesS3BucketName = Prelude.pure newValue, ..}
instance Property "DatabaseInstallationFilesS3Prefix" CustomDBEngineVersion where
  type PropertyType "DatabaseInstallationFilesS3Prefix" CustomDBEngineVersion = Value Prelude.Text
  set newValue CustomDBEngineVersion {..}
    = CustomDBEngineVersion
        {databaseInstallationFilesS3Prefix = Prelude.pure newValue, ..}
instance Property "Description" CustomDBEngineVersion where
  type PropertyType "Description" CustomDBEngineVersion = Value Prelude.Text
  set newValue CustomDBEngineVersion {..}
    = CustomDBEngineVersion {description = Prelude.pure newValue, ..}
instance Property "Engine" CustomDBEngineVersion where
  type PropertyType "Engine" CustomDBEngineVersion = Value Prelude.Text
  set newValue CustomDBEngineVersion {..}
    = CustomDBEngineVersion {engine = newValue, ..}
instance Property "EngineVersion" CustomDBEngineVersion where
  type PropertyType "EngineVersion" CustomDBEngineVersion = Value Prelude.Text
  set newValue CustomDBEngineVersion {..}
    = CustomDBEngineVersion {engineVersion = newValue, ..}
instance Property "ImageId" CustomDBEngineVersion where
  type PropertyType "ImageId" CustomDBEngineVersion = Value Prelude.Text
  set newValue CustomDBEngineVersion {..}
    = CustomDBEngineVersion {imageId = Prelude.pure newValue, ..}
instance Property "KMSKeyId" CustomDBEngineVersion where
  type PropertyType "KMSKeyId" CustomDBEngineVersion = Value Prelude.Text
  set newValue CustomDBEngineVersion {..}
    = CustomDBEngineVersion {kMSKeyId = Prelude.pure newValue, ..}
instance Property "Manifest" CustomDBEngineVersion where
  type PropertyType "Manifest" CustomDBEngineVersion = Value Prelude.Text
  set newValue CustomDBEngineVersion {..}
    = CustomDBEngineVersion {manifest = Prelude.pure newValue, ..}
instance Property "SourceCustomDbEngineVersionIdentifier" CustomDBEngineVersion where
  type PropertyType "SourceCustomDbEngineVersionIdentifier" CustomDBEngineVersion = Value Prelude.Text
  set newValue CustomDBEngineVersion {..}
    = CustomDBEngineVersion
        {sourceCustomDbEngineVersionIdentifier = Prelude.pure newValue, ..}
instance Property "Status" CustomDBEngineVersion where
  type PropertyType "Status" CustomDBEngineVersion = Value Prelude.Text
  set newValue CustomDBEngineVersion {..}
    = CustomDBEngineVersion {status = Prelude.pure newValue, ..}
instance Property "Tags" CustomDBEngineVersion where
  type PropertyType "Tags" CustomDBEngineVersion = [Tag]
  set newValue CustomDBEngineVersion {..}
    = CustomDBEngineVersion {tags = Prelude.pure newValue, ..}
instance Property "UseAwsProvidedLatestImage" CustomDBEngineVersion where
  type PropertyType "UseAwsProvidedLatestImage" CustomDBEngineVersion = Value Prelude.Bool
  set newValue CustomDBEngineVersion {..}
    = CustomDBEngineVersion
        {useAwsProvidedLatestImage = Prelude.pure newValue, ..}