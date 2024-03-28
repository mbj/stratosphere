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
  = ModelPackageStatusDetailsProperty {validationStatuses :: (Prelude.Maybe [ModelPackageStatusItemProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkModelPackageStatusDetailsProperty ::
  ModelPackageStatusDetailsProperty
mkModelPackageStatusDetailsProperty
  = ModelPackageStatusDetailsProperty
      {validationStatuses = Prelude.Nothing}
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
  set newValue ModelPackageStatusDetailsProperty {}
    = ModelPackageStatusDetailsProperty
        {validationStatuses = Prelude.pure newValue, ..}