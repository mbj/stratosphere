module Stratosphere.SageMaker.ProcessingJob.FeatureStoreOutputProperty (
        FeatureStoreOutputProperty(..), mkFeatureStoreOutputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FeatureStoreOutputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-featurestoreoutput.html>
    FeatureStoreOutputProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-featurestoreoutput.html#cfn-sagemaker-processingjob-featurestoreoutput-featuregroupname>
                                featureGroupName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFeatureStoreOutputProperty ::
  Value Prelude.Text -> FeatureStoreOutputProperty
mkFeatureStoreOutputProperty featureGroupName
  = FeatureStoreOutputProperty
      {haddock_workaround_ = (), featureGroupName = featureGroupName}
instance ToResourceProperties FeatureStoreOutputProperty where
  toResourceProperties FeatureStoreOutputProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ProcessingJob.FeatureStoreOutput",
         supportsTags = Prelude.False,
         properties = ["FeatureGroupName" JSON..= featureGroupName]}
instance JSON.ToJSON FeatureStoreOutputProperty where
  toJSON FeatureStoreOutputProperty {..}
    = JSON.object ["FeatureGroupName" JSON..= featureGroupName]
instance Property "FeatureGroupName" FeatureStoreOutputProperty where
  type PropertyType "FeatureGroupName" FeatureStoreOutputProperty = Value Prelude.Text
  set newValue FeatureStoreOutputProperty {..}
    = FeatureStoreOutputProperty {featureGroupName = newValue, ..}