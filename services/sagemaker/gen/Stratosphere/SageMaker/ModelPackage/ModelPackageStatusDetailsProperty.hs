module Stratosphere.SageMaker.ModelPackage.ModelPackageStatusDetailsProperty (
        module Exports, ModelPackageStatusDetailsProperty(..),
        mkModelPackageStatusDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelPackage.ModelPackageStatusItemProperty as Exports
import Stratosphere.ResourceProperties
data ModelPackageStatusDetailsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-modelpackagestatusdetails.html>
    ModelPackageStatusDetailsProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-modelpackagestatusdetails.html#cfn-sagemaker-modelpackage-modelpackagestatusdetails-validationstatuses>
                                       validationStatuses :: (Prelude.Maybe [ModelPackageStatusItemProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkModelPackageStatusDetailsProperty ::
  ModelPackageStatusDetailsProperty
mkModelPackageStatusDetailsProperty
  = ModelPackageStatusDetailsProperty
      {haddock_workaround_ = (), validationStatuses = Prelude.Nothing}
instance ToResourceProperties ModelPackageStatusDetailsProperty where
  toResourceProperties ModelPackageStatusDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelPackage.ModelPackageStatusDetails",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ValidationStatuses" Prelude.<$> validationStatuses])}
instance JSON.ToJSON ModelPackageStatusDetailsProperty where
  toJSON ModelPackageStatusDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ValidationStatuses" Prelude.<$> validationStatuses]))
instance Property "ValidationStatuses" ModelPackageStatusDetailsProperty where
  type PropertyType "ValidationStatuses" ModelPackageStatusDetailsProperty = [ModelPackageStatusItemProperty]
  set newValue ModelPackageStatusDetailsProperty {..}
    = ModelPackageStatusDetailsProperty
        {validationStatuses = Prelude.pure newValue, ..}