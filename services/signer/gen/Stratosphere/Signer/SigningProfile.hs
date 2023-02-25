module Stratosphere.Signer.SigningProfile (
        module Exports, SigningProfile(..), mkSigningProfile
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Signer.SigningProfile.SignatureValidityPeriodProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data SigningProfile
  = SigningProfile {platformId :: (Value Prelude.Text),
                    signatureValidityPeriod :: (Prelude.Maybe SignatureValidityPeriodProperty),
                    tags :: (Prelude.Maybe [Tag])}
mkSigningProfile :: Value Prelude.Text -> SigningProfile
mkSigningProfile platformId
  = SigningProfile
      {platformId = platformId,
       signatureValidityPeriod = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties SigningProfile where
  toResourceProperties SigningProfile {..}
    = ResourceProperties
        {awsType = "AWS::Signer::SigningProfile",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PlatformId" JSON..= platformId]
                           (Prelude.catMaybes
                              [(JSON..=) "SignatureValidityPeriod"
                                 Prelude.<$> signatureValidityPeriod,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON SigningProfile where
  toJSON SigningProfile {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PlatformId" JSON..= platformId]
              (Prelude.catMaybes
                 [(JSON..=) "SignatureValidityPeriod"
                    Prelude.<$> signatureValidityPeriod,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "PlatformId" SigningProfile where
  type PropertyType "PlatformId" SigningProfile = Value Prelude.Text
  set newValue SigningProfile {..}
    = SigningProfile {platformId = newValue, ..}
instance Property "SignatureValidityPeriod" SigningProfile where
  type PropertyType "SignatureValidityPeriod" SigningProfile = SignatureValidityPeriodProperty
  set newValue SigningProfile {..}
    = SigningProfile
        {signatureValidityPeriod = Prelude.pure newValue, ..}
instance Property "Tags" SigningProfile where
  type PropertyType "Tags" SigningProfile = [Tag]
  set newValue SigningProfile {..}
    = SigningProfile {tags = Prelude.pure newValue, ..}