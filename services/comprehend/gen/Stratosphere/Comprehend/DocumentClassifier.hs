module Stratosphere.Comprehend.DocumentClassifier (
        module Exports, DocumentClassifier(..), mkDocumentClassifier
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Comprehend.DocumentClassifier.DocumentClassifierInputDataConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Comprehend.DocumentClassifier.DocumentClassifierOutputDataConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Comprehend.DocumentClassifier.VpcConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DocumentClassifier
  = DocumentClassifier {dataAccessRoleArn :: (Value Prelude.Text),
                        documentClassifierName :: (Value Prelude.Text),
                        inputDataConfig :: DocumentClassifierInputDataConfigProperty,
                        languageCode :: (Value Prelude.Text),
                        mode :: (Prelude.Maybe (Value Prelude.Text)),
                        modelKmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                        modelPolicy :: (Prelude.Maybe (Value Prelude.Text)),
                        outputDataConfig :: (Prelude.Maybe DocumentClassifierOutputDataConfigProperty),
                        tags :: (Prelude.Maybe [Tag]),
                        versionName :: (Prelude.Maybe (Value Prelude.Text)),
                        volumeKmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                        vpcConfig :: (Prelude.Maybe VpcConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDocumentClassifier ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> DocumentClassifierInputDataConfigProperty
        -> Value Prelude.Text -> DocumentClassifier
mkDocumentClassifier
  dataAccessRoleArn
  documentClassifierName
  inputDataConfig
  languageCode
  = DocumentClassifier
      {dataAccessRoleArn = dataAccessRoleArn,
       documentClassifierName = documentClassifierName,
       inputDataConfig = inputDataConfig, languageCode = languageCode,
       mode = Prelude.Nothing, modelKmsKeyId = Prelude.Nothing,
       modelPolicy = Prelude.Nothing, outputDataConfig = Prelude.Nothing,
       tags = Prelude.Nothing, versionName = Prelude.Nothing,
       volumeKmsKeyId = Prelude.Nothing, vpcConfig = Prelude.Nothing}
instance ToResourceProperties DocumentClassifier where
  toResourceProperties DocumentClassifier {..}
    = ResourceProperties
        {awsType = "AWS::Comprehend::DocumentClassifier",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataAccessRoleArn" JSON..= dataAccessRoleArn,
                            "DocumentClassifierName" JSON..= documentClassifierName,
                            "InputDataConfig" JSON..= inputDataConfig,
                            "LanguageCode" JSON..= languageCode]
                           (Prelude.catMaybes
                              [(JSON..=) "Mode" Prelude.<$> mode,
                               (JSON..=) "ModelKmsKeyId" Prelude.<$> modelKmsKeyId,
                               (JSON..=) "ModelPolicy" Prelude.<$> modelPolicy,
                               (JSON..=) "OutputDataConfig" Prelude.<$> outputDataConfig,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "VersionName" Prelude.<$> versionName,
                               (JSON..=) "VolumeKmsKeyId" Prelude.<$> volumeKmsKeyId,
                               (JSON..=) "VpcConfig" Prelude.<$> vpcConfig]))}
instance JSON.ToJSON DocumentClassifier where
  toJSON DocumentClassifier {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataAccessRoleArn" JSON..= dataAccessRoleArn,
               "DocumentClassifierName" JSON..= documentClassifierName,
               "InputDataConfig" JSON..= inputDataConfig,
               "LanguageCode" JSON..= languageCode]
              (Prelude.catMaybes
                 [(JSON..=) "Mode" Prelude.<$> mode,
                  (JSON..=) "ModelKmsKeyId" Prelude.<$> modelKmsKeyId,
                  (JSON..=) "ModelPolicy" Prelude.<$> modelPolicy,
                  (JSON..=) "OutputDataConfig" Prelude.<$> outputDataConfig,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "VersionName" Prelude.<$> versionName,
                  (JSON..=) "VolumeKmsKeyId" Prelude.<$> volumeKmsKeyId,
                  (JSON..=) "VpcConfig" Prelude.<$> vpcConfig])))
instance Property "DataAccessRoleArn" DocumentClassifier where
  type PropertyType "DataAccessRoleArn" DocumentClassifier = Value Prelude.Text
  set newValue DocumentClassifier {..}
    = DocumentClassifier {dataAccessRoleArn = newValue, ..}
instance Property "DocumentClassifierName" DocumentClassifier where
  type PropertyType "DocumentClassifierName" DocumentClassifier = Value Prelude.Text
  set newValue DocumentClassifier {..}
    = DocumentClassifier {documentClassifierName = newValue, ..}
instance Property "InputDataConfig" DocumentClassifier where
  type PropertyType "InputDataConfig" DocumentClassifier = DocumentClassifierInputDataConfigProperty
  set newValue DocumentClassifier {..}
    = DocumentClassifier {inputDataConfig = newValue, ..}
instance Property "LanguageCode" DocumentClassifier where
  type PropertyType "LanguageCode" DocumentClassifier = Value Prelude.Text
  set newValue DocumentClassifier {..}
    = DocumentClassifier {languageCode = newValue, ..}
instance Property "Mode" DocumentClassifier where
  type PropertyType "Mode" DocumentClassifier = Value Prelude.Text
  set newValue DocumentClassifier {..}
    = DocumentClassifier {mode = Prelude.pure newValue, ..}
instance Property "ModelKmsKeyId" DocumentClassifier where
  type PropertyType "ModelKmsKeyId" DocumentClassifier = Value Prelude.Text
  set newValue DocumentClassifier {..}
    = DocumentClassifier {modelKmsKeyId = Prelude.pure newValue, ..}
instance Property "ModelPolicy" DocumentClassifier where
  type PropertyType "ModelPolicy" DocumentClassifier = Value Prelude.Text
  set newValue DocumentClassifier {..}
    = DocumentClassifier {modelPolicy = Prelude.pure newValue, ..}
instance Property "OutputDataConfig" DocumentClassifier where
  type PropertyType "OutputDataConfig" DocumentClassifier = DocumentClassifierOutputDataConfigProperty
  set newValue DocumentClassifier {..}
    = DocumentClassifier {outputDataConfig = Prelude.pure newValue, ..}
instance Property "Tags" DocumentClassifier where
  type PropertyType "Tags" DocumentClassifier = [Tag]
  set newValue DocumentClassifier {..}
    = DocumentClassifier {tags = Prelude.pure newValue, ..}
instance Property "VersionName" DocumentClassifier where
  type PropertyType "VersionName" DocumentClassifier = Value Prelude.Text
  set newValue DocumentClassifier {..}
    = DocumentClassifier {versionName = Prelude.pure newValue, ..}
instance Property "VolumeKmsKeyId" DocumentClassifier where
  type PropertyType "VolumeKmsKeyId" DocumentClassifier = Value Prelude.Text
  set newValue DocumentClassifier {..}
    = DocumentClassifier {volumeKmsKeyId = Prelude.pure newValue, ..}
instance Property "VpcConfig" DocumentClassifier where
  type PropertyType "VpcConfig" DocumentClassifier = VpcConfigProperty
  set newValue DocumentClassifier {..}
    = DocumentClassifier {vpcConfig = Prelude.pure newValue, ..}