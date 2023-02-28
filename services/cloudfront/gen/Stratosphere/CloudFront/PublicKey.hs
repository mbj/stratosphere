module Stratosphere.CloudFront.PublicKey (
        module Exports, PublicKey(..), mkPublicKey
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.PublicKey.PublicKeyConfigProperty as Exports
import Stratosphere.ResourceProperties
data PublicKey
  = PublicKey {publicKeyConfig :: PublicKeyConfigProperty}
mkPublicKey :: PublicKeyConfigProperty -> PublicKey
mkPublicKey publicKeyConfig
  = PublicKey {publicKeyConfig = publicKeyConfig}
instance ToResourceProperties PublicKey where
  toResourceProperties PublicKey {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::PublicKey",
         supportsTags = Prelude.False,
         properties = ["PublicKeyConfig" JSON..= publicKeyConfig]}
instance JSON.ToJSON PublicKey where
  toJSON PublicKey {..}
    = JSON.object ["PublicKeyConfig" JSON..= publicKeyConfig]
instance Property "PublicKeyConfig" PublicKey where
  type PropertyType "PublicKeyConfig" PublicKey = PublicKeyConfigProperty
  set newValue PublicKey {}
    = PublicKey {publicKeyConfig = newValue, ..}