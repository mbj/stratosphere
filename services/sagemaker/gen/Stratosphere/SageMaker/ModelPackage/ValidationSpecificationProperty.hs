module Stratosphere.SageMaker.ModelPackage.ValidationSpecificationProperty (
        module Exports, ValidationSpecificationProperty(..),
        mkValidationSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelPackage.ValidationProfileProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ValidationSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-validationspecification.html>
    ValidationSpecificationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-validationspecification.html#cfn-sagemaker-modelpackage-validationspecification-validationprofiles>
                                     validationProfiles :: [ValidationProfileProperty],
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-validationspecification.html#cfn-sagemaker-modelpackage-validationspecification-validationrole>
                                     validationRole :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkValidationSpecificationProperty ::
  [ValidationProfileProperty]
  -> Value Prelude.Text -> ValidationSpecificationProperty
mkValidationSpecificationProperty validationProfiles validationRole
  = ValidationSpecificationProperty
      {haddock_workaround_ = (), validationProfiles = validationProfiles,
       validationRole = validationRole}
instance ToResourceProperties ValidationSpecificationProperty where
  toResourceProperties ValidationSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelPackage.ValidationSpecification",
         supportsTags = Prelude.False,
         properties = ["ValidationProfiles" JSON..= validationProfiles,
                       "ValidationRole" JSON..= validationRole]}
instance JSON.ToJSON ValidationSpecificationProperty where
  toJSON ValidationSpecificationProperty {..}
    = JSON.object
        ["ValidationProfiles" JSON..= validationProfiles,
         "ValidationRole" JSON..= validationRole]
instance Property "ValidationProfiles" ValidationSpecificationProperty where
  type PropertyType "ValidationProfiles" ValidationSpecificationProperty = [ValidationProfileProperty]
  set newValue ValidationSpecificationProperty {..}
    = ValidationSpecificationProperty
        {validationProfiles = newValue, ..}
instance Property "ValidationRole" ValidationSpecificationProperty where
  type PropertyType "ValidationRole" ValidationSpecificationProperty = Value Prelude.Text
  set newValue ValidationSpecificationProperty {..}
    = ValidationSpecificationProperty {validationRole = newValue, ..}