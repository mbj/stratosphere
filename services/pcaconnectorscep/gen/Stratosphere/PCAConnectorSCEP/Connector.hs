module Stratosphere.PCAConnectorSCEP.Connector (
        module Exports, Connector(..), mkConnector
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.PCAConnectorSCEP.Connector.MobileDeviceManagementProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Connector
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcaconnectorscep-connector.html>
    Connector {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcaconnectorscep-connector.html#cfn-pcaconnectorscep-connector-certificateauthorityarn>
               certificateAuthorityArn :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcaconnectorscep-connector.html#cfn-pcaconnectorscep-connector-mobiledevicemanagement>
               mobileDeviceManagement :: (Prelude.Maybe MobileDeviceManagementProperty),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcaconnectorscep-connector.html#cfn-pcaconnectorscep-connector-tags>
               tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConnector :: Value Prelude.Text -> Connector
mkConnector certificateAuthorityArn
  = Connector
      {haddock_workaround_ = (),
       certificateAuthorityArn = certificateAuthorityArn,
       mobileDeviceManagement = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Connector where
  toResourceProperties Connector {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorSCEP::Connector",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CertificateAuthorityArn" JSON..= certificateAuthorityArn]
                           (Prelude.catMaybes
                              [(JSON..=) "MobileDeviceManagement"
                                 Prelude.<$> mobileDeviceManagement,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Connector where
  toJSON Connector {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CertificateAuthorityArn" JSON..= certificateAuthorityArn]
              (Prelude.catMaybes
                 [(JSON..=) "MobileDeviceManagement"
                    Prelude.<$> mobileDeviceManagement,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "CertificateAuthorityArn" Connector where
  type PropertyType "CertificateAuthorityArn" Connector = Value Prelude.Text
  set newValue Connector {..}
    = Connector {certificateAuthorityArn = newValue, ..}
instance Property "MobileDeviceManagement" Connector where
  type PropertyType "MobileDeviceManagement" Connector = MobileDeviceManagementProperty
  set newValue Connector {..}
    = Connector {mobileDeviceManagement = Prelude.pure newValue, ..}
instance Property "Tags" Connector where
  type PropertyType "Tags" Connector = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Connector {..}
    = Connector {tags = Prelude.pure newValue, ..}