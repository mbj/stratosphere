module Stratosphere.SageMaker.ModelCard.ContainerProperty (
        ContainerProperty(..), mkContainerProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContainerProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-container.html>
    ContainerProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-container.html#cfn-sagemaker-modelcard-container-image>
                       image :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-container.html#cfn-sagemaker-modelcard-container-modeldataurl>
                       modelDataUrl :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-container.html#cfn-sagemaker-modelcard-container-nearestmodelname>
                       nearestModelName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContainerProperty :: Value Prelude.Text -> ContainerProperty
mkContainerProperty image
  = ContainerProperty
      {haddock_workaround_ = (), image = image,
       modelDataUrl = Prelude.Nothing, nearestModelName = Prelude.Nothing}
instance ToResourceProperties ContainerProperty where
  toResourceProperties ContainerProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelCard.Container",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Image" JSON..= image]
                           (Prelude.catMaybes
                              [(JSON..=) "ModelDataUrl" Prelude.<$> modelDataUrl,
                               (JSON..=) "NearestModelName" Prelude.<$> nearestModelName]))}
instance JSON.ToJSON ContainerProperty where
  toJSON ContainerProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Image" JSON..= image]
              (Prelude.catMaybes
                 [(JSON..=) "ModelDataUrl" Prelude.<$> modelDataUrl,
                  (JSON..=) "NearestModelName" Prelude.<$> nearestModelName])))
instance Property "Image" ContainerProperty where
  type PropertyType "Image" ContainerProperty = Value Prelude.Text
  set newValue ContainerProperty {..}
    = ContainerProperty {image = newValue, ..}
instance Property "ModelDataUrl" ContainerProperty where
  type PropertyType "ModelDataUrl" ContainerProperty = Value Prelude.Text
  set newValue ContainerProperty {..}
    = ContainerProperty {modelDataUrl = Prelude.pure newValue, ..}
instance Property "NearestModelName" ContainerProperty where
  type PropertyType "NearestModelName" ContainerProperty = Value Prelude.Text
  set newValue ContainerProperty {..}
    = ContainerProperty {nearestModelName = Prelude.pure newValue, ..}