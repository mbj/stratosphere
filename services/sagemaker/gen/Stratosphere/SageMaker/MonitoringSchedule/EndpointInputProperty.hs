module Stratosphere.SageMaker.MonitoringSchedule.EndpointInputProperty (
        EndpointInputProperty(..), mkEndpointInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EndpointInputProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-endpointinput.html>
    EndpointInputProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-endpointinput.html#cfn-sagemaker-monitoringschedule-endpointinput-endpointname>
                           endpointName :: (Value Prelude.Text),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-endpointinput.html#cfn-sagemaker-monitoringschedule-endpointinput-excludefeaturesattribute>
                           excludeFeaturesAttribute :: (Prelude.Maybe (Value Prelude.Text)),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-endpointinput.html#cfn-sagemaker-monitoringschedule-endpointinput-localpath>
                           localPath :: (Value Prelude.Text),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-endpointinput.html#cfn-sagemaker-monitoringschedule-endpointinput-s3datadistributiontype>
                           s3DataDistributionType :: (Prelude.Maybe (Value Prelude.Text)),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-endpointinput.html#cfn-sagemaker-monitoringschedule-endpointinput-s3inputmode>
                           s3InputMode :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEndpointInputProperty ::
  Value Prelude.Text -> Value Prelude.Text -> EndpointInputProperty
mkEndpointInputProperty endpointName localPath
  = EndpointInputProperty
      {endpointName = endpointName, localPath = localPath,
       excludeFeaturesAttribute = Prelude.Nothing,
       s3DataDistributionType = Prelude.Nothing,
       s3InputMode = Prelude.Nothing}
instance ToResourceProperties EndpointInputProperty where
  toResourceProperties EndpointInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::MonitoringSchedule.EndpointInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EndpointName" JSON..= endpointName,
                            "LocalPath" JSON..= localPath]
                           (Prelude.catMaybes
                              [(JSON..=) "ExcludeFeaturesAttribute"
                                 Prelude.<$> excludeFeaturesAttribute,
                               (JSON..=) "S3DataDistributionType"
                                 Prelude.<$> s3DataDistributionType,
                               (JSON..=) "S3InputMode" Prelude.<$> s3InputMode]))}
instance JSON.ToJSON EndpointInputProperty where
  toJSON EndpointInputProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EndpointName" JSON..= endpointName,
               "LocalPath" JSON..= localPath]
              (Prelude.catMaybes
                 [(JSON..=) "ExcludeFeaturesAttribute"
                    Prelude.<$> excludeFeaturesAttribute,
                  (JSON..=) "S3DataDistributionType"
                    Prelude.<$> s3DataDistributionType,
                  (JSON..=) "S3InputMode" Prelude.<$> s3InputMode])))
instance Property "EndpointName" EndpointInputProperty where
  type PropertyType "EndpointName" EndpointInputProperty = Value Prelude.Text
  set newValue EndpointInputProperty {..}
    = EndpointInputProperty {endpointName = newValue, ..}
instance Property "ExcludeFeaturesAttribute" EndpointInputProperty where
  type PropertyType "ExcludeFeaturesAttribute" EndpointInputProperty = Value Prelude.Text
  set newValue EndpointInputProperty {..}
    = EndpointInputProperty
        {excludeFeaturesAttribute = Prelude.pure newValue, ..}
instance Property "LocalPath" EndpointInputProperty where
  type PropertyType "LocalPath" EndpointInputProperty = Value Prelude.Text
  set newValue EndpointInputProperty {..}
    = EndpointInputProperty {localPath = newValue, ..}
instance Property "S3DataDistributionType" EndpointInputProperty where
  type PropertyType "S3DataDistributionType" EndpointInputProperty = Value Prelude.Text
  set newValue EndpointInputProperty {..}
    = EndpointInputProperty
        {s3DataDistributionType = Prelude.pure newValue, ..}
instance Property "S3InputMode" EndpointInputProperty where
  type PropertyType "S3InputMode" EndpointInputProperty = Value Prelude.Text
  set newValue EndpointInputProperty {..}
    = EndpointInputProperty {s3InputMode = Prelude.pure newValue, ..}