module Stratosphere.GreengrassV2.Deployment.IoTJobAbortCriteriaProperty (
        IoTJobAbortCriteriaProperty(..), mkIoTJobAbortCriteriaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IoTJobAbortCriteriaProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-iotjobabortcriteria.html>
    IoTJobAbortCriteriaProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-iotjobabortcriteria.html#cfn-greengrassv2-deployment-iotjobabortcriteria-action>
                                 action :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-iotjobabortcriteria.html#cfn-greengrassv2-deployment-iotjobabortcriteria-failuretype>
                                 failureType :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-iotjobabortcriteria.html#cfn-greengrassv2-deployment-iotjobabortcriteria-minnumberofexecutedthings>
                                 minNumberOfExecutedThings :: (Value Prelude.Integer),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-iotjobabortcriteria.html#cfn-greengrassv2-deployment-iotjobabortcriteria-thresholdpercentage>
                                 thresholdPercentage :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIoTJobAbortCriteriaProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Integer
        -> Value Prelude.Double -> IoTJobAbortCriteriaProperty
mkIoTJobAbortCriteriaProperty
  action
  failureType
  minNumberOfExecutedThings
  thresholdPercentage
  = IoTJobAbortCriteriaProperty
      {haddock_workaround_ = (), action = action,
       failureType = failureType,
       minNumberOfExecutedThings = minNumberOfExecutedThings,
       thresholdPercentage = thresholdPercentage}
instance ToResourceProperties IoTJobAbortCriteriaProperty where
  toResourceProperties IoTJobAbortCriteriaProperty {..}
    = ResourceProperties
        {awsType = "AWS::GreengrassV2::Deployment.IoTJobAbortCriteria",
         supportsTags = Prelude.False,
         properties = ["Action" JSON..= action,
                       "FailureType" JSON..= failureType,
                       "MinNumberOfExecutedThings" JSON..= minNumberOfExecutedThings,
                       "ThresholdPercentage" JSON..= thresholdPercentage]}
instance JSON.ToJSON IoTJobAbortCriteriaProperty where
  toJSON IoTJobAbortCriteriaProperty {..}
    = JSON.object
        ["Action" JSON..= action, "FailureType" JSON..= failureType,
         "MinNumberOfExecutedThings" JSON..= minNumberOfExecutedThings,
         "ThresholdPercentage" JSON..= thresholdPercentage]
instance Property "Action" IoTJobAbortCriteriaProperty where
  type PropertyType "Action" IoTJobAbortCriteriaProperty = Value Prelude.Text
  set newValue IoTJobAbortCriteriaProperty {..}
    = IoTJobAbortCriteriaProperty {action = newValue, ..}
instance Property "FailureType" IoTJobAbortCriteriaProperty where
  type PropertyType "FailureType" IoTJobAbortCriteriaProperty = Value Prelude.Text
  set newValue IoTJobAbortCriteriaProperty {..}
    = IoTJobAbortCriteriaProperty {failureType = newValue, ..}
instance Property "MinNumberOfExecutedThings" IoTJobAbortCriteriaProperty where
  type PropertyType "MinNumberOfExecutedThings" IoTJobAbortCriteriaProperty = Value Prelude.Integer
  set newValue IoTJobAbortCriteriaProperty {..}
    = IoTJobAbortCriteriaProperty
        {minNumberOfExecutedThings = newValue, ..}
instance Property "ThresholdPercentage" IoTJobAbortCriteriaProperty where
  type PropertyType "ThresholdPercentage" IoTJobAbortCriteriaProperty = Value Prelude.Double
  set newValue IoTJobAbortCriteriaProperty {..}
    = IoTJobAbortCriteriaProperty {thresholdPercentage = newValue, ..}