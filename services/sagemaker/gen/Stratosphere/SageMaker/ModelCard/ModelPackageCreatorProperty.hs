module Stratosphere.SageMaker.ModelCard.ModelPackageCreatorProperty (
        ModelPackageCreatorProperty(..), mkModelPackageCreatorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ModelPackageCreatorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-modelpackagecreator.html>
    ModelPackageCreatorProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-modelpackagecreator.html#cfn-sagemaker-modelcard-modelpackagecreator-userprofilename>
                                 userProfileName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkModelPackageCreatorProperty :: ModelPackageCreatorProperty
mkModelPackageCreatorProperty
  = ModelPackageCreatorProperty
      {haddock_workaround_ = (), userProfileName = Prelude.Nothing}
instance ToResourceProperties ModelPackageCreatorProperty where
  toResourceProperties ModelPackageCreatorProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelCard.ModelPackageCreator",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "UserProfileName" Prelude.<$> userProfileName])}
instance JSON.ToJSON ModelPackageCreatorProperty where
  toJSON ModelPackageCreatorProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "UserProfileName" Prelude.<$> userProfileName]))
instance Property "UserProfileName" ModelPackageCreatorProperty where
  type PropertyType "UserProfileName" ModelPackageCreatorProperty = Value Prelude.Text
  set newValue ModelPackageCreatorProperty {..}
    = ModelPackageCreatorProperty
        {userProfileName = Prelude.pure newValue, ..}