module Stratosphere.SageMaker.DataQualityJobDefinition.StatisticsResourceProperty (
        StatisticsResourceProperty(..), mkStatisticsResourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StatisticsResourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-dataqualityjobdefinition-statisticsresource.html>
    StatisticsResourceProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-dataqualityjobdefinition-statisticsresource.html#cfn-sagemaker-dataqualityjobdefinition-statisticsresource-s3uri>
                                s3Uri :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStatisticsResourceProperty :: StatisticsResourceProperty
mkStatisticsResourceProperty
  = StatisticsResourceProperty
      {haddock_workaround_ = (), s3Uri = Prelude.Nothing}
instance ToResourceProperties StatisticsResourceProperty where
  toResourceProperties StatisticsResourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::DataQualityJobDefinition.StatisticsResource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "S3Uri" Prelude.<$> s3Uri])}
instance JSON.ToJSON StatisticsResourceProperty where
  toJSON StatisticsResourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "S3Uri" Prelude.<$> s3Uri]))
instance Property "S3Uri" StatisticsResourceProperty where
  type PropertyType "S3Uri" StatisticsResourceProperty = Value Prelude.Text
  set newValue StatisticsResourceProperty {..}
    = StatisticsResourceProperty {s3Uri = Prelude.pure newValue, ..}