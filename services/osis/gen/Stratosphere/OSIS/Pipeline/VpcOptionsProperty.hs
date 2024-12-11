module Stratosphere.OSIS.Pipeline.VpcOptionsProperty (
        module Exports, VpcOptionsProperty(..), mkVpcOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.OSIS.Pipeline.VpcAttachmentOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcOptionsProperty
  = VpcOptionsProperty {securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                        subnetIds :: (ValueList Prelude.Text),
                        vpcAttachmentOptions :: (Prelude.Maybe VpcAttachmentOptionsProperty),
                        vpcEndpointManagement :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcOptionsProperty ::
  ValueList Prelude.Text -> VpcOptionsProperty
mkVpcOptionsProperty subnetIds
  = VpcOptionsProperty
      {subnetIds = subnetIds, securityGroupIds = Prelude.Nothing,
       vpcAttachmentOptions = Prelude.Nothing,
       vpcEndpointManagement = Prelude.Nothing}
instance ToResourceProperties VpcOptionsProperty where
  toResourceProperties VpcOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::OSIS::Pipeline.VpcOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SubnetIds" JSON..= subnetIds]
                           (Prelude.catMaybes
                              [(JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                               (JSON..=) "VpcAttachmentOptions" Prelude.<$> vpcAttachmentOptions,
                               (JSON..=) "VpcEndpointManagement"
                                 Prelude.<$> vpcEndpointManagement]))}
instance JSON.ToJSON VpcOptionsProperty where
  toJSON VpcOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SubnetIds" JSON..= subnetIds]
              (Prelude.catMaybes
                 [(JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                  (JSON..=) "VpcAttachmentOptions" Prelude.<$> vpcAttachmentOptions,
                  (JSON..=) "VpcEndpointManagement"
                    Prelude.<$> vpcEndpointManagement])))
instance Property "SecurityGroupIds" VpcOptionsProperty where
  type PropertyType "SecurityGroupIds" VpcOptionsProperty = ValueList Prelude.Text
  set newValue VpcOptionsProperty {..}
    = VpcOptionsProperty {securityGroupIds = Prelude.pure newValue, ..}
instance Property "SubnetIds" VpcOptionsProperty where
  type PropertyType "SubnetIds" VpcOptionsProperty = ValueList Prelude.Text
  set newValue VpcOptionsProperty {..}
    = VpcOptionsProperty {subnetIds = newValue, ..}
instance Property "VpcAttachmentOptions" VpcOptionsProperty where
  type PropertyType "VpcAttachmentOptions" VpcOptionsProperty = VpcAttachmentOptionsProperty
  set newValue VpcOptionsProperty {..}
    = VpcOptionsProperty
        {vpcAttachmentOptions = Prelude.pure newValue, ..}
instance Property "VpcEndpointManagement" VpcOptionsProperty where
  type PropertyType "VpcEndpointManagement" VpcOptionsProperty = Value Prelude.Text
  set newValue VpcOptionsProperty {..}
    = VpcOptionsProperty
        {vpcEndpointManagement = Prelude.pure newValue, ..}