module Stratosphere.GreengrassV2.Deployment.IoTJobAbortConfigProperty (
        module Exports, IoTJobAbortConfigProperty(..),
        mkIoTJobAbortConfigProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GreengrassV2.Deployment.IoTJobAbortCriteriaProperty as Exports
import Stratosphere.ResourceProperties
data IoTJobAbortConfigProperty
  = IoTJobAbortConfigProperty {criteriaList :: [IoTJobAbortCriteriaProperty]}
mkIoTJobAbortConfigProperty ::
  [IoTJobAbortCriteriaProperty] -> IoTJobAbortConfigProperty
mkIoTJobAbortConfigProperty criteriaList
  = IoTJobAbortConfigProperty {criteriaList = criteriaList}
instance ToResourceProperties IoTJobAbortConfigProperty where
  toResourceProperties IoTJobAbortConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::GreengrassV2::Deployment.IoTJobAbortConfig",
         properties = ["CriteriaList" JSON..= criteriaList]}
instance JSON.ToJSON IoTJobAbortConfigProperty where
  toJSON IoTJobAbortConfigProperty {..}
    = JSON.object ["CriteriaList" JSON..= criteriaList]
instance Property "CriteriaList" IoTJobAbortConfigProperty where
  type PropertyType "CriteriaList" IoTJobAbortConfigProperty = [IoTJobAbortCriteriaProperty]
  set newValue IoTJobAbortConfigProperty {}
    = IoTJobAbortConfigProperty {criteriaList = newValue, ..}