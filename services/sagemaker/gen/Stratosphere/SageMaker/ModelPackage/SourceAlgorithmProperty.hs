module Stratosphere.SageMaker.ModelPackage.SourceAlgorithmProperty (
        SourceAlgorithmProperty(..), mkSourceAlgorithmProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SourceAlgorithmProperty
  = SourceAlgorithmProperty {algorithmName :: (Value Prelude.Text),
                             modelDataUrl :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceAlgorithmProperty ::
  Value Prelude.Text -> SourceAlgorithmProperty
mkSourceAlgorithmProperty algorithmName
  = SourceAlgorithmProperty
      {algorithmName = algorithmName, modelDataUrl = Prelude.Nothing}
instance ToResourceProperties SourceAlgorithmProperty where
  toResourceProperties SourceAlgorithmProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelPackage.SourceAlgorithm",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AlgorithmName" JSON..= algorithmName]
                           (Prelude.catMaybes
                              [(JSON..=) "ModelDataUrl" Prelude.<$> modelDataUrl]))}
instance JSON.ToJSON SourceAlgorithmProperty where
  toJSON SourceAlgorithmProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AlgorithmName" JSON..= algorithmName]
              (Prelude.catMaybes
                 [(JSON..=) "ModelDataUrl" Prelude.<$> modelDataUrl])))
instance Property "AlgorithmName" SourceAlgorithmProperty where
  type PropertyType "AlgorithmName" SourceAlgorithmProperty = Value Prelude.Text
  set newValue SourceAlgorithmProperty {..}
    = SourceAlgorithmProperty {algorithmName = newValue, ..}
instance Property "ModelDataUrl" SourceAlgorithmProperty where
  type PropertyType "ModelDataUrl" SourceAlgorithmProperty = Value Prelude.Text
  set newValue SourceAlgorithmProperty {..}
    = SourceAlgorithmProperty
        {modelDataUrl = Prelude.pure newValue, ..}