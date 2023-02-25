module Stratosphere.MSK.ServerlessCluster.ClientAuthenticationProperty (
        module Exports, ClientAuthenticationProperty(..),
        mkClientAuthenticationProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MSK.ServerlessCluster.SaslProperty as Exports
import Stratosphere.ResourceProperties
data ClientAuthenticationProperty
  = ClientAuthenticationProperty {sasl :: SaslProperty}
mkClientAuthenticationProperty ::
  SaslProperty -> ClientAuthenticationProperty
mkClientAuthenticationProperty sasl
  = ClientAuthenticationProperty {sasl = sasl}
instance ToResourceProperties ClientAuthenticationProperty where
  toResourceProperties ClientAuthenticationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::ServerlessCluster.ClientAuthentication",
         properties = ["Sasl" JSON..= sasl]}
instance JSON.ToJSON ClientAuthenticationProperty where
  toJSON ClientAuthenticationProperty {..}
    = JSON.object ["Sasl" JSON..= sasl]
instance Property "Sasl" ClientAuthenticationProperty where
  type PropertyType "Sasl" ClientAuthenticationProperty = SaslProperty
  set newValue ClientAuthenticationProperty {}
    = ClientAuthenticationProperty {sasl = newValue, ..}