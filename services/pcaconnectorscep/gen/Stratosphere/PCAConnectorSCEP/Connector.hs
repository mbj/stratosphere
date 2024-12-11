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
  = Connector {certificateAuthorityArn :: (Value Prelude.Text),
               mobileDeviceManagement :: (Prelude.Maybe MobileDeviceManagementProperty),
               tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConnector :: Value Prelude.Text -> Connector
mkConnector certificateAuthorityArn
  = Connector
      {certificateAuthorityArn = certificateAuthorityArn,
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