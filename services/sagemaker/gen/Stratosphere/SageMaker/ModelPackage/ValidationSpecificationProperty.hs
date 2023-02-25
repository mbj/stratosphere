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
  = ValidationSpecificationProperty {validationProfiles :: [ValidationProfileProperty],
                                     validationRole :: (Value Prelude.Text)}
mkValidationSpecificationProperty ::
  [ValidationProfileProperty]
  -> Value Prelude.Text -> ValidationSpecificationProperty
mkValidationSpecificationProperty validationProfiles validationRole
  = ValidationSpecificationProperty
      {validationProfiles = validationProfiles,
       validationRole = validationRole}
instance ToResourceProperties ValidationSpecificationProperty where
  toResourceProperties ValidationSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelPackage.ValidationSpecification",
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