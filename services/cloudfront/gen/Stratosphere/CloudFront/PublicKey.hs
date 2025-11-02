module Stratosphere.CloudFront.PublicKey (
        module Exports, PublicKey(..), mkPublicKey
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.PublicKey.PublicKeyConfigProperty as Exports
import Stratosphere.ResourceProperties
data PublicKey
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-publickey.html>
    PublicKey {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-publickey.html#cfn-cloudfront-publickey-publickeyconfig>
               publicKeyConfig :: PublicKeyConfigProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPublicKey :: PublicKeyConfigProperty -> PublicKey
mkPublicKey publicKeyConfig
  = PublicKey
      {haddock_workaround_ = (), publicKeyConfig = publicKeyConfig}
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
  set newValue PublicKey {..}
    = PublicKey {publicKeyConfig = newValue, ..}