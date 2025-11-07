module Stratosphere.SageMaker.ProcessingJob.AppSpecificationProperty (
        AppSpecificationProperty(..), mkAppSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AppSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-appspecification.html>
    AppSpecificationProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-appspecification.html#cfn-sagemaker-processingjob-appspecification-containerarguments>
                              containerArguments :: (Prelude.Maybe (ValueList Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-appspecification.html#cfn-sagemaker-processingjob-appspecification-containerentrypoint>
                              containerEntrypoint :: (Prelude.Maybe (ValueList Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-appspecification.html#cfn-sagemaker-processingjob-appspecification-imageuri>
                              imageUri :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAppSpecificationProperty ::
  Value Prelude.Text -> AppSpecificationProperty
mkAppSpecificationProperty imageUri
  = AppSpecificationProperty
      {haddock_workaround_ = (), imageUri = imageUri,
       containerArguments = Prelude.Nothing,
       containerEntrypoint = Prelude.Nothing}
instance ToResourceProperties AppSpecificationProperty where
  toResourceProperties AppSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ProcessingJob.AppSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ImageUri" JSON..= imageUri]
                           (Prelude.catMaybes
                              [(JSON..=) "ContainerArguments" Prelude.<$> containerArguments,
                               (JSON..=) "ContainerEntrypoint" Prelude.<$> containerEntrypoint]))}
instance JSON.ToJSON AppSpecificationProperty where
  toJSON AppSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ImageUri" JSON..= imageUri]
              (Prelude.catMaybes
                 [(JSON..=) "ContainerArguments" Prelude.<$> containerArguments,
                  (JSON..=) "ContainerEntrypoint" Prelude.<$> containerEntrypoint])))
instance Property "ContainerArguments" AppSpecificationProperty where
  type PropertyType "ContainerArguments" AppSpecificationProperty = ValueList Prelude.Text
  set newValue AppSpecificationProperty {..}
    = AppSpecificationProperty
        {containerArguments = Prelude.pure newValue, ..}
instance Property "ContainerEntrypoint" AppSpecificationProperty where
  type PropertyType "ContainerEntrypoint" AppSpecificationProperty = ValueList Prelude.Text
  set newValue AppSpecificationProperty {..}
    = AppSpecificationProperty
        {containerEntrypoint = Prelude.pure newValue, ..}
instance Property "ImageUri" AppSpecificationProperty where
  type PropertyType "ImageUri" AppSpecificationProperty = Value Prelude.Text
  set newValue AppSpecificationProperty {..}
    = AppSpecificationProperty {imageUri = newValue, ..}