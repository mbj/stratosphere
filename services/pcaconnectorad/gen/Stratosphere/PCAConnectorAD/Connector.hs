module Stratosphere.PCAConnectorAD.Connector (
        module Exports, Connector(..), mkConnector
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.PCAConnectorAD.Connector.VpcInformationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Connector
  = Connector {certificateAuthorityArn :: (Value Prelude.Text),
               directoryId :: (Value Prelude.Text),
               tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
               vpcInformation :: VpcInformationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConnector ::
  Value Prelude.Text
  -> Value Prelude.Text -> VpcInformationProperty -> Connector
mkConnector certificateAuthorityArn directoryId vpcInformation
  = Connector
      {certificateAuthorityArn = certificateAuthorityArn,
       directoryId = directoryId, vpcInformation = vpcInformation,
       tags = Prelude.Nothing}
instance ToResourceProperties Connector where
  toResourceProperties Connector {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorAD::Connector",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CertificateAuthorityArn" JSON..= certificateAuthorityArn,
                            "DirectoryId" JSON..= directoryId,
                            "VpcInformation" JSON..= vpcInformation]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Connector where
  toJSON Connector {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CertificateAuthorityArn" JSON..= certificateAuthorityArn,
               "DirectoryId" JSON..= directoryId,
               "VpcInformation" JSON..= vpcInformation]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "CertificateAuthorityArn" Connector where
  type PropertyType "CertificateAuthorityArn" Connector = Value Prelude.Text
  set newValue Connector {..}
    = Connector {certificateAuthorityArn = newValue, ..}
instance Property "DirectoryId" Connector where
  type PropertyType "DirectoryId" Connector = Value Prelude.Text
  set newValue Connector {..}
    = Connector {directoryId = newValue, ..}
instance Property "Tags" Connector where
  type PropertyType "Tags" Connector = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Connector {..}
    = Connector {tags = Prelude.pure newValue, ..}
instance Property "VpcInformation" Connector where
  type PropertyType "VpcInformation" Connector = VpcInformationProperty
  set newValue Connector {..}
    = Connector {vpcInformation = newValue, ..}