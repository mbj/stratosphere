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
  = ModelPackageStatusDetailsProperty {imageScanStatuses :: (Prelude.Maybe [ModelPackageStatusItemProperty]),
                                       validationStatuses :: [ModelPackageStatusItemProperty]}
mkModelPackageStatusDetailsProperty ::
  [ModelPackageStatusItemProperty]
  -> ModelPackageStatusDetailsProperty
mkModelPackageStatusDetailsProperty validationStatuses
  = ModelPackageStatusDetailsProperty
      {validationStatuses = validationStatuses,
       imageScanStatuses = Prelude.Nothing}
instance ToResourceProperties ModelPackageStatusDetailsProperty where
  toResourceProperties ModelPackageStatusDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelPackage.ModelPackageStatusDetails",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ValidationStatuses" JSON..= validationStatuses]
                           (Prelude.catMaybes
                              [(JSON..=) "ImageScanStatuses" Prelude.<$> imageScanStatuses]))}
instance JSON.ToJSON ModelPackageStatusDetailsProperty where
  toJSON ModelPackageStatusDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ValidationStatuses" JSON..= validationStatuses]
              (Prelude.catMaybes
                 [(JSON..=) "ImageScanStatuses" Prelude.<$> imageScanStatuses])))
instance Property "ImageScanStatuses" ModelPackageStatusDetailsProperty where
  type PropertyType "ImageScanStatuses" ModelPackageStatusDetailsProperty = [ModelPackageStatusItemProperty]
  set newValue ModelPackageStatusDetailsProperty {..}
    = ModelPackageStatusDetailsProperty
        {imageScanStatuses = Prelude.pure newValue, ..}
instance Property "ValidationStatuses" ModelPackageStatusDetailsProperty where
  type PropertyType "ValidationStatuses" ModelPackageStatusDetailsProperty = [ModelPackageStatusItemProperty]
  set newValue ModelPackageStatusDetailsProperty {..}
    = ModelPackageStatusDetailsProperty
        {validationStatuses = newValue, ..}