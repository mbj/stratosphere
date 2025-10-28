module Stratosphere.SageMaker.ModelPackageGroup (
        ModelPackageGroup(..), mkModelPackageGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ModelPackageGroup
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-modelpackagegroup.html>
    ModelPackageGroup {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-modelpackagegroup.html#cfn-sagemaker-modelpackagegroup-modelpackagegroupdescription>
                       modelPackageGroupDescription :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-modelpackagegroup.html#cfn-sagemaker-modelpackagegroup-modelpackagegroupname>
                       modelPackageGroupName :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-modelpackagegroup.html#cfn-sagemaker-modelpackagegroup-modelpackagegrouppolicy>
                       modelPackageGroupPolicy :: (Prelude.Maybe JSON.Object),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-modelpackagegroup.html#cfn-sagemaker-modelpackagegroup-tags>
                       tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkModelPackageGroup :: Value Prelude.Text -> ModelPackageGroup
mkModelPackageGroup modelPackageGroupName
  = ModelPackageGroup
      {haddock_workaround_ = (),
       modelPackageGroupName = modelPackageGroupName,
       modelPackageGroupDescription = Prelude.Nothing,
       modelPackageGroupPolicy = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ModelPackageGroup where
  toResourceProperties ModelPackageGroup {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelPackageGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ModelPackageGroupName" JSON..= modelPackageGroupName]
                           (Prelude.catMaybes
                              [(JSON..=) "ModelPackageGroupDescription"
                                 Prelude.<$> modelPackageGroupDescription,
                               (JSON..=) "ModelPackageGroupPolicy"
                                 Prelude.<$> modelPackageGroupPolicy,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ModelPackageGroup where
  toJSON ModelPackageGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ModelPackageGroupName" JSON..= modelPackageGroupName]
              (Prelude.catMaybes
                 [(JSON..=) "ModelPackageGroupDescription"
                    Prelude.<$> modelPackageGroupDescription,
                  (JSON..=) "ModelPackageGroupPolicy"
                    Prelude.<$> modelPackageGroupPolicy,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ModelPackageGroupDescription" ModelPackageGroup where
  type PropertyType "ModelPackageGroupDescription" ModelPackageGroup = Value Prelude.Text
  set newValue ModelPackageGroup {..}
    = ModelPackageGroup
        {modelPackageGroupDescription = Prelude.pure newValue, ..}
instance Property "ModelPackageGroupName" ModelPackageGroup where
  type PropertyType "ModelPackageGroupName" ModelPackageGroup = Value Prelude.Text
  set newValue ModelPackageGroup {..}
    = ModelPackageGroup {modelPackageGroupName = newValue, ..}
instance Property "ModelPackageGroupPolicy" ModelPackageGroup where
  type PropertyType "ModelPackageGroupPolicy" ModelPackageGroup = JSON.Object
  set newValue ModelPackageGroup {..}
    = ModelPackageGroup
        {modelPackageGroupPolicy = Prelude.pure newValue, ..}
instance Property "Tags" ModelPackageGroup where
  type PropertyType "Tags" ModelPackageGroup = [Tag]
  set newValue ModelPackageGroup {..}
    = ModelPackageGroup {tags = Prelude.pure newValue, ..}