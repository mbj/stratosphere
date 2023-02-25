module Stratosphere.Pinpoint.APNSChannel (
        APNSChannel(..), mkAPNSChannel
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data APNSChannel
  = APNSChannel {applicationId :: (Value Prelude.Text),
                 bundleId :: (Prelude.Maybe (Value Prelude.Text)),
                 certificate :: (Prelude.Maybe (Value Prelude.Text)),
                 defaultAuthenticationMethod :: (Prelude.Maybe (Value Prelude.Text)),
                 enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                 privateKey :: (Prelude.Maybe (Value Prelude.Text)),
                 teamId :: (Prelude.Maybe (Value Prelude.Text)),
                 tokenKey :: (Prelude.Maybe (Value Prelude.Text)),
                 tokenKeyId :: (Prelude.Maybe (Value Prelude.Text))}
mkAPNSChannel :: Value Prelude.Text -> APNSChannel
mkAPNSChannel applicationId
  = APNSChannel
      {applicationId = applicationId, bundleId = Prelude.Nothing,
       certificate = Prelude.Nothing,
       defaultAuthenticationMethod = Prelude.Nothing,
       enabled = Prelude.Nothing, privateKey = Prelude.Nothing,
       teamId = Prelude.Nothing, tokenKey = Prelude.Nothing,
       tokenKeyId = Prelude.Nothing}
instance ToResourceProperties APNSChannel where
  toResourceProperties APNSChannel {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::APNSChannel",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApplicationId" JSON..= applicationId]
                           (Prelude.catMaybes
                              [(JSON..=) "BundleId" Prelude.<$> bundleId,
                               (JSON..=) "Certificate" Prelude.<$> certificate,
                               (JSON..=) "DefaultAuthenticationMethod"
                                 Prelude.<$> defaultAuthenticationMethod,
                               (JSON..=) "Enabled" Prelude.<$> enabled,
                               (JSON..=) "PrivateKey" Prelude.<$> privateKey,
                               (JSON..=) "TeamId" Prelude.<$> teamId,
                               (JSON..=) "TokenKey" Prelude.<$> tokenKey,
                               (JSON..=) "TokenKeyId" Prelude.<$> tokenKeyId]))}
instance JSON.ToJSON APNSChannel where
  toJSON APNSChannel {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApplicationId" JSON..= applicationId]
              (Prelude.catMaybes
                 [(JSON..=) "BundleId" Prelude.<$> bundleId,
                  (JSON..=) "Certificate" Prelude.<$> certificate,
                  (JSON..=) "DefaultAuthenticationMethod"
                    Prelude.<$> defaultAuthenticationMethod,
                  (JSON..=) "Enabled" Prelude.<$> enabled,
                  (JSON..=) "PrivateKey" Prelude.<$> privateKey,
                  (JSON..=) "TeamId" Prelude.<$> teamId,
                  (JSON..=) "TokenKey" Prelude.<$> tokenKey,
                  (JSON..=) "TokenKeyId" Prelude.<$> tokenKeyId])))
instance Property "ApplicationId" APNSChannel where
  type PropertyType "ApplicationId" APNSChannel = Value Prelude.Text
  set newValue APNSChannel {..}
    = APNSChannel {applicationId = newValue, ..}
instance Property "BundleId" APNSChannel where
  type PropertyType "BundleId" APNSChannel = Value Prelude.Text
  set newValue APNSChannel {..}
    = APNSChannel {bundleId = Prelude.pure newValue, ..}
instance Property "Certificate" APNSChannel where
  type PropertyType "Certificate" APNSChannel = Value Prelude.Text
  set newValue APNSChannel {..}
    = APNSChannel {certificate = Prelude.pure newValue, ..}
instance Property "DefaultAuthenticationMethod" APNSChannel where
  type PropertyType "DefaultAuthenticationMethod" APNSChannel = Value Prelude.Text
  set newValue APNSChannel {..}
    = APNSChannel
        {defaultAuthenticationMethod = Prelude.pure newValue, ..}
instance Property "Enabled" APNSChannel where
  type PropertyType "Enabled" APNSChannel = Value Prelude.Bool
  set newValue APNSChannel {..}
    = APNSChannel {enabled = Prelude.pure newValue, ..}
instance Property "PrivateKey" APNSChannel where
  type PropertyType "PrivateKey" APNSChannel = Value Prelude.Text
  set newValue APNSChannel {..}
    = APNSChannel {privateKey = Prelude.pure newValue, ..}
instance Property "TeamId" APNSChannel where
  type PropertyType "TeamId" APNSChannel = Value Prelude.Text
  set newValue APNSChannel {..}
    = APNSChannel {teamId = Prelude.pure newValue, ..}
instance Property "TokenKey" APNSChannel where
  type PropertyType "TokenKey" APNSChannel = Value Prelude.Text
  set newValue APNSChannel {..}
    = APNSChannel {tokenKey = Prelude.pure newValue, ..}
instance Property "TokenKeyId" APNSChannel where
  type PropertyType "TokenKeyId" APNSChannel = Value Prelude.Text
  set newValue APNSChannel {..}
    = APNSChannel {tokenKeyId = Prelude.pure newValue, ..}