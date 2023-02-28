module Stratosphere.IoT.MitigationAction.ActionParamsProperty (
        module Exports, ActionParamsProperty(..), mkActionParamsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.MitigationAction.AddThingsToThingGroupParamsProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.MitigationAction.EnableIoTLoggingParamsProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.MitigationAction.PublishFindingToSnsParamsProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.MitigationAction.ReplaceDefaultPolicyVersionParamsProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.MitigationAction.UpdateCACertificateParamsProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.MitigationAction.UpdateDeviceCertificateParamsProperty as Exports
import Stratosphere.ResourceProperties
data ActionParamsProperty
  = ActionParamsProperty {addThingsToThingGroupParams :: (Prelude.Maybe AddThingsToThingGroupParamsProperty),
                          enableIoTLoggingParams :: (Prelude.Maybe EnableIoTLoggingParamsProperty),
                          publishFindingToSnsParams :: (Prelude.Maybe PublishFindingToSnsParamsProperty),
                          replaceDefaultPolicyVersionParams :: (Prelude.Maybe ReplaceDefaultPolicyVersionParamsProperty),
                          updateCACertificateParams :: (Prelude.Maybe UpdateCACertificateParamsProperty),
                          updateDeviceCertificateParams :: (Prelude.Maybe UpdateDeviceCertificateParamsProperty)}
mkActionParamsProperty :: ActionParamsProperty
mkActionParamsProperty
  = ActionParamsProperty
      {addThingsToThingGroupParams = Prelude.Nothing,
       enableIoTLoggingParams = Prelude.Nothing,
       publishFindingToSnsParams = Prelude.Nothing,
       replaceDefaultPolicyVersionParams = Prelude.Nothing,
       updateCACertificateParams = Prelude.Nothing,
       updateDeviceCertificateParams = Prelude.Nothing}
instance ToResourceProperties ActionParamsProperty where
  toResourceProperties ActionParamsProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::MitigationAction.ActionParams",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AddThingsToThingGroupParams"
                              Prelude.<$> addThingsToThingGroupParams,
                            (JSON..=) "EnableIoTLoggingParams"
                              Prelude.<$> enableIoTLoggingParams,
                            (JSON..=) "PublishFindingToSnsParams"
                              Prelude.<$> publishFindingToSnsParams,
                            (JSON..=) "ReplaceDefaultPolicyVersionParams"
                              Prelude.<$> replaceDefaultPolicyVersionParams,
                            (JSON..=) "UpdateCACertificateParams"
                              Prelude.<$> updateCACertificateParams,
                            (JSON..=) "UpdateDeviceCertificateParams"
                              Prelude.<$> updateDeviceCertificateParams])}
instance JSON.ToJSON ActionParamsProperty where
  toJSON ActionParamsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AddThingsToThingGroupParams"
                 Prelude.<$> addThingsToThingGroupParams,
               (JSON..=) "EnableIoTLoggingParams"
                 Prelude.<$> enableIoTLoggingParams,
               (JSON..=) "PublishFindingToSnsParams"
                 Prelude.<$> publishFindingToSnsParams,
               (JSON..=) "ReplaceDefaultPolicyVersionParams"
                 Prelude.<$> replaceDefaultPolicyVersionParams,
               (JSON..=) "UpdateCACertificateParams"
                 Prelude.<$> updateCACertificateParams,
               (JSON..=) "UpdateDeviceCertificateParams"
                 Prelude.<$> updateDeviceCertificateParams]))
instance Property "AddThingsToThingGroupParams" ActionParamsProperty where
  type PropertyType "AddThingsToThingGroupParams" ActionParamsProperty = AddThingsToThingGroupParamsProperty
  set newValue ActionParamsProperty {..}
    = ActionParamsProperty
        {addThingsToThingGroupParams = Prelude.pure newValue, ..}
instance Property "EnableIoTLoggingParams" ActionParamsProperty where
  type PropertyType "EnableIoTLoggingParams" ActionParamsProperty = EnableIoTLoggingParamsProperty
  set newValue ActionParamsProperty {..}
    = ActionParamsProperty
        {enableIoTLoggingParams = Prelude.pure newValue, ..}
instance Property "PublishFindingToSnsParams" ActionParamsProperty where
  type PropertyType "PublishFindingToSnsParams" ActionParamsProperty = PublishFindingToSnsParamsProperty
  set newValue ActionParamsProperty {..}
    = ActionParamsProperty
        {publishFindingToSnsParams = Prelude.pure newValue, ..}
instance Property "ReplaceDefaultPolicyVersionParams" ActionParamsProperty where
  type PropertyType "ReplaceDefaultPolicyVersionParams" ActionParamsProperty = ReplaceDefaultPolicyVersionParamsProperty
  set newValue ActionParamsProperty {..}
    = ActionParamsProperty
        {replaceDefaultPolicyVersionParams = Prelude.pure newValue, ..}
instance Property "UpdateCACertificateParams" ActionParamsProperty where
  type PropertyType "UpdateCACertificateParams" ActionParamsProperty = UpdateCACertificateParamsProperty
  set newValue ActionParamsProperty {..}
    = ActionParamsProperty
        {updateCACertificateParams = Prelude.pure newValue, ..}
instance Property "UpdateDeviceCertificateParams" ActionParamsProperty where
  type PropertyType "UpdateDeviceCertificateParams" ActionParamsProperty = UpdateDeviceCertificateParamsProperty
  set newValue ActionParamsProperty {..}
    = ActionParamsProperty
        {updateDeviceCertificateParams = Prelude.pure newValue, ..}