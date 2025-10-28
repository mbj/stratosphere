module Stratosphere.SageMaker.ModelPackage.SourceAlgorithmSpecificationProperty (
        module Exports, SourceAlgorithmSpecificationProperty(..),
        mkSourceAlgorithmSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelPackage.SourceAlgorithmProperty as Exports
import Stratosphere.ResourceProperties
data SourceAlgorithmSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-sourcealgorithmspecification.html>
    SourceAlgorithmSpecificationProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-sourcealgorithmspecification.html#cfn-sagemaker-modelpackage-sourcealgorithmspecification-sourcealgorithms>
                                          sourceAlgorithms :: [SourceAlgorithmProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceAlgorithmSpecificationProperty ::
  [SourceAlgorithmProperty] -> SourceAlgorithmSpecificationProperty
mkSourceAlgorithmSpecificationProperty sourceAlgorithms
  = SourceAlgorithmSpecificationProperty
      {haddock_workaround_ = (), sourceAlgorithms = sourceAlgorithms}
instance ToResourceProperties SourceAlgorithmSpecificationProperty where
  toResourceProperties SourceAlgorithmSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelPackage.SourceAlgorithmSpecification",
         supportsTags = Prelude.False,
         properties = ["SourceAlgorithms" JSON..= sourceAlgorithms]}
instance JSON.ToJSON SourceAlgorithmSpecificationProperty where
  toJSON SourceAlgorithmSpecificationProperty {..}
    = JSON.object ["SourceAlgorithms" JSON..= sourceAlgorithms]
instance Property "SourceAlgorithms" SourceAlgorithmSpecificationProperty where
  type PropertyType "SourceAlgorithms" SourceAlgorithmSpecificationProperty = [SourceAlgorithmProperty]
  set newValue SourceAlgorithmSpecificationProperty {..}
    = SourceAlgorithmSpecificationProperty
        {sourceAlgorithms = newValue, ..}