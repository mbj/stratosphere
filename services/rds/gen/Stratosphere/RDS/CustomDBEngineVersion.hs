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
  = CustomDBEngineVersion {databaseInstallationFilesS3BucketName :: (Value Prelude.Text),
                           databaseInstallationFilesS3Prefix :: (Prelude.Maybe (Value Prelude.Text)),
                           description :: (Prelude.Maybe (Value Prelude.Text)),
                           engine :: (Value Prelude.Text),
                           engineVersion :: (Value Prelude.Text),
                           kMSKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                           manifest :: (Prelude.Maybe (Value Prelude.Text)),
                           status :: (Prelude.Maybe (Value Prelude.Text)),
                           tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomDBEngineVersion ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> CustomDBEngineVersion
mkCustomDBEngineVersion
  databaseInstallationFilesS3BucketName
  engine
  engineVersion
  = CustomDBEngineVersion
      {databaseInstallationFilesS3BucketName = databaseInstallationFilesS3BucketName,
       engine = engine, engineVersion = engineVersion,
       databaseInstallationFilesS3Prefix = Prelude.Nothing,
       description = Prelude.Nothing, kMSKeyId = Prelude.Nothing,
       manifest = Prelude.Nothing, status = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties CustomDBEngineVersion where
  toResourceProperties CustomDBEngineVersion {..}
    = ResourceProperties
        {awsType = "AWS::RDS::CustomDBEngineVersion",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DatabaseInstallationFilesS3BucketName"
                              JSON..= databaseInstallationFilesS3BucketName,
                            "Engine" JSON..= engine, "EngineVersion" JSON..= engineVersion]
                           (Prelude.catMaybes
                              [(JSON..=) "DatabaseInstallationFilesS3Prefix"
                                 Prelude.<$> databaseInstallationFilesS3Prefix,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "KMSKeyId" Prelude.<$> kMSKeyId,
                               (JSON..=) "Manifest" Prelude.<$> manifest,
                               (JSON..=) "Status" Prelude.<$> status,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON CustomDBEngineVersion where
  toJSON CustomDBEngineVersion {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DatabaseInstallationFilesS3BucketName"
                 JSON..= databaseInstallationFilesS3BucketName,
               "Engine" JSON..= engine, "EngineVersion" JSON..= engineVersion]
              (Prelude.catMaybes
                 [(JSON..=) "DatabaseInstallationFilesS3Prefix"
                    Prelude.<$> databaseInstallationFilesS3Prefix,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "KMSKeyId" Prelude.<$> kMSKeyId,
                  (JSON..=) "Manifest" Prelude.<$> manifest,
                  (JSON..=) "Status" Prelude.<$> status,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DatabaseInstallationFilesS3BucketName" CustomDBEngineVersion where
  type PropertyType "DatabaseInstallationFilesS3BucketName" CustomDBEngineVersion = Value Prelude.Text
  set newValue CustomDBEngineVersion {..}
    = CustomDBEngineVersion
        {databaseInstallationFilesS3BucketName = newValue, ..}
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
instance Property "KMSKeyId" CustomDBEngineVersion where
  type PropertyType "KMSKeyId" CustomDBEngineVersion = Value Prelude.Text
  set newValue CustomDBEngineVersion {..}
    = CustomDBEngineVersion {kMSKeyId = Prelude.pure newValue, ..}
instance Property "Manifest" CustomDBEngineVersion where
  type PropertyType "Manifest" CustomDBEngineVersion = Value Prelude.Text
  set newValue CustomDBEngineVersion {..}
    = CustomDBEngineVersion {manifest = Prelude.pure newValue, ..}
instance Property "Status" CustomDBEngineVersion where
  type PropertyType "Status" CustomDBEngineVersion = Value Prelude.Text
  set newValue CustomDBEngineVersion {..}
    = CustomDBEngineVersion {status = Prelude.pure newValue, ..}
instance Property "Tags" CustomDBEngineVersion where
  type PropertyType "Tags" CustomDBEngineVersion = [Tag]
  set newValue CustomDBEngineVersion {..}
    = CustomDBEngineVersion {tags = Prelude.pure newValue, ..}