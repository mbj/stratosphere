module Stratosphere.GreengrassV2.Deployment.IoTJobAbortConfigProperty (
        module Exports, IoTJobAbortConfigProperty(..),
        mkIoTJobAbortConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GreengrassV2.Deployment.IoTJobAbortCriteriaProperty as Exports
import Stratosphere.ResourceProperties
data IoTJobAbortConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-iotjobabortconfig.html>
    IoTJobAbortConfigProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-iotjobabortconfig.html#cfn-greengrassv2-deployment-iotjobabortconfig-criterialist>
                               criteriaList :: [IoTJobAbortCriteriaProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIoTJobAbortConfigProperty ::
  [IoTJobAbortCriteriaProperty] -> IoTJobAbortConfigProperty
mkIoTJobAbortConfigProperty criteriaList
  = IoTJobAbortConfigProperty
      {haddock_workaround_ = (), criteriaList = criteriaList}
instance ToResourceProperties IoTJobAbortConfigProperty where
  toResourceProperties IoTJobAbortConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::GreengrassV2::Deployment.IoTJobAbortConfig",
         supportsTags = Prelude.False,
         properties = ["CriteriaList" JSON..= criteriaList]}
instance JSON.ToJSON IoTJobAbortConfigProperty where
  toJSON IoTJobAbortConfigProperty {..}
    = JSON.object ["CriteriaList" JSON..= criteriaList]
instance Property "CriteriaList" IoTJobAbortConfigProperty where
  type PropertyType "CriteriaList" IoTJobAbortConfigProperty = [IoTJobAbortCriteriaProperty]
  set newValue IoTJobAbortConfigProperty {..}
    = IoTJobAbortConfigProperty {criteriaList = newValue, ..}