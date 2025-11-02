module Stratosphere.Greengrass.ResourceDefinitionVersion.S3MachineLearningModelResourceDataProperty (
        module Exports, S3MachineLearningModelResourceDataProperty(..),
        mkS3MachineLearningModelResourceDataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Greengrass.ResourceDefinitionVersion.ResourceDownloadOwnerSettingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3MachineLearningModelResourceDataProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-s3machinelearningmodelresourcedata.html>
    S3MachineLearningModelResourceDataProperty {haddock_workaround_ :: (),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-s3machinelearningmodelresourcedata.html#cfn-greengrass-resourcedefinitionversion-s3machinelearningmodelresourcedata-destinationpath>
                                                destinationPath :: (Value Prelude.Text),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-s3machinelearningmodelresourcedata.html#cfn-greengrass-resourcedefinitionversion-s3machinelearningmodelresourcedata-ownersetting>
                                                ownerSetting :: (Prelude.Maybe ResourceDownloadOwnerSettingProperty),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-s3machinelearningmodelresourcedata.html#cfn-greengrass-resourcedefinitionversion-s3machinelearningmodelresourcedata-s3uri>
                                                s3Uri :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3MachineLearningModelResourceDataProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> S3MachineLearningModelResourceDataProperty
mkS3MachineLearningModelResourceDataProperty destinationPath s3Uri
  = S3MachineLearningModelResourceDataProperty
      {haddock_workaround_ = (), destinationPath = destinationPath,
       s3Uri = s3Uri, ownerSetting = Prelude.Nothing}
instance ToResourceProperties S3MachineLearningModelResourceDataProperty where
  toResourceProperties
    S3MachineLearningModelResourceDataProperty {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::ResourceDefinitionVersion.S3MachineLearningModelResourceData",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DestinationPath" JSON..= destinationPath, "S3Uri" JSON..= s3Uri]
                           (Prelude.catMaybes
                              [(JSON..=) "OwnerSetting" Prelude.<$> ownerSetting]))}
instance JSON.ToJSON S3MachineLearningModelResourceDataProperty where
  toJSON S3MachineLearningModelResourceDataProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DestinationPath" JSON..= destinationPath, "S3Uri" JSON..= s3Uri]
              (Prelude.catMaybes
                 [(JSON..=) "OwnerSetting" Prelude.<$> ownerSetting])))
instance Property "DestinationPath" S3MachineLearningModelResourceDataProperty where
  type PropertyType "DestinationPath" S3MachineLearningModelResourceDataProperty = Value Prelude.Text
  set newValue S3MachineLearningModelResourceDataProperty {..}
    = S3MachineLearningModelResourceDataProperty
        {destinationPath = newValue, ..}
instance Property "OwnerSetting" S3MachineLearningModelResourceDataProperty where
  type PropertyType "OwnerSetting" S3MachineLearningModelResourceDataProperty = ResourceDownloadOwnerSettingProperty
  set newValue S3MachineLearningModelResourceDataProperty {..}
    = S3MachineLearningModelResourceDataProperty
        {ownerSetting = Prelude.pure newValue, ..}
instance Property "S3Uri" S3MachineLearningModelResourceDataProperty where
  type PropertyType "S3Uri" S3MachineLearningModelResourceDataProperty = Value Prelude.Text
  set newValue S3MachineLearningModelResourceDataProperty {..}
    = S3MachineLearningModelResourceDataProperty {s3Uri = newValue, ..}