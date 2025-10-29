module Stratosphere.SageMaker.ModelPackage.ValidationProfileProperty (
        module Exports, ValidationProfileProperty(..),
        mkValidationProfileProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelPackage.TransformJobDefinitionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ValidationProfileProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-validationprofile.html>
    ValidationProfileProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-validationprofile.html#cfn-sagemaker-modelpackage-validationprofile-profilename>
                               profileName :: (Value Prelude.Text),
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-validationprofile.html#cfn-sagemaker-modelpackage-validationprofile-transformjobdefinition>
                               transformJobDefinition :: TransformJobDefinitionProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkValidationProfileProperty ::
  Value Prelude.Text
  -> TransformJobDefinitionProperty -> ValidationProfileProperty
mkValidationProfileProperty profileName transformJobDefinition
  = ValidationProfileProperty
      {profileName = profileName,
       transformJobDefinition = transformJobDefinition}
instance ToResourceProperties ValidationProfileProperty where
  toResourceProperties ValidationProfileProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelPackage.ValidationProfile",
         supportsTags = Prelude.False,
         properties = ["ProfileName" JSON..= profileName,
                       "TransformJobDefinition" JSON..= transformJobDefinition]}
instance JSON.ToJSON ValidationProfileProperty where
  toJSON ValidationProfileProperty {..}
    = JSON.object
        ["ProfileName" JSON..= profileName,
         "TransformJobDefinition" JSON..= transformJobDefinition]
instance Property "ProfileName" ValidationProfileProperty where
  type PropertyType "ProfileName" ValidationProfileProperty = Value Prelude.Text
  set newValue ValidationProfileProperty {..}
    = ValidationProfileProperty {profileName = newValue, ..}
instance Property "TransformJobDefinition" ValidationProfileProperty where
  type PropertyType "TransformJobDefinition" ValidationProfileProperty = TransformJobDefinitionProperty
  set newValue ValidationProfileProperty {..}
    = ValidationProfileProperty {transformJobDefinition = newValue, ..}