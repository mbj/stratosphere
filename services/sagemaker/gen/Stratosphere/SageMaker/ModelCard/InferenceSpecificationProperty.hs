module Stratosphere.SageMaker.ModelCard.InferenceSpecificationProperty (
        module Exports, InferenceSpecificationProperty(..),
        mkInferenceSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelCard.ContainerProperty as Exports
import Stratosphere.ResourceProperties
data InferenceSpecificationProperty
  = InferenceSpecificationProperty {containers :: [ContainerProperty]}
mkInferenceSpecificationProperty ::
  [ContainerProperty] -> InferenceSpecificationProperty
mkInferenceSpecificationProperty containers
  = InferenceSpecificationProperty {containers = containers}
instance ToResourceProperties InferenceSpecificationProperty where
  toResourceProperties InferenceSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelCard.InferenceSpecification",
         supportsTags = Prelude.False,
         properties = ["Containers" JSON..= containers]}
instance JSON.ToJSON InferenceSpecificationProperty where
  toJSON InferenceSpecificationProperty {..}
    = JSON.object ["Containers" JSON..= containers]
instance Property "Containers" InferenceSpecificationProperty where
  type PropertyType "Containers" InferenceSpecificationProperty = [ContainerProperty]
  set newValue InferenceSpecificationProperty {}
    = InferenceSpecificationProperty {containers = newValue, ..}