module Stratosphere.Pinpoint.APNSSandboxChannel (
        APNSSandboxChannel(..), mkAPNSSandboxChannel
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data APNSSandboxChannel
  = APNSSandboxChannel {applicationId :: (Value Prelude.Text),
                        bundleId :: (Prelude.Maybe (Value Prelude.Text)),
                        certificate :: (Prelude.Maybe (Value Prelude.Text)),
                        defaultAuthenticationMethod :: (Prelude.Maybe (Value Prelude.Text)),
                        enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                        privateKey :: (Prelude.Maybe (Value Prelude.Text)),
                        teamId :: (Prelude.Maybe (Value Prelude.Text)),
                        tokenKey :: (Prelude.Maybe (Value Prelude.Text)),
                        tokenKeyId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAPNSSandboxChannel :: Value Prelude.Text -> APNSSandboxChannel
mkAPNSSandboxChannel applicationId
  = APNSSandboxChannel
      {applicationId = applicationId, bundleId = Prelude.Nothing,
       certificate = Prelude.Nothing,
       defaultAuthenticationMethod = Prelude.Nothing,
       enabled = Prelude.Nothing, privateKey = Prelude.Nothing,
       teamId = Prelude.Nothing, tokenKey = Prelude.Nothing,
       tokenKeyId = Prelude.Nothing}
instance ToResourceProperties APNSSandboxChannel where
  toResourceProperties APNSSandboxChannel {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::APNSSandboxChannel",
         supportsTags = Prelude.False,
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
instance JSON.ToJSON APNSSandboxChannel where
  toJSON APNSSandboxChannel {..}
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
instance Property "ApplicationId" APNSSandboxChannel where
  type PropertyType "ApplicationId" APNSSandboxChannel = Value Prelude.Text
  set newValue APNSSandboxChannel {..}
    = APNSSandboxChannel {applicationId = newValue, ..}
instance Property "BundleId" APNSSandboxChannel where
  type PropertyType "BundleId" APNSSandboxChannel = Value Prelude.Text
  set newValue APNSSandboxChannel {..}
    = APNSSandboxChannel {bundleId = Prelude.pure newValue, ..}
instance Property "Certificate" APNSSandboxChannel where
  type PropertyType "Certificate" APNSSandboxChannel = Value Prelude.Text
  set newValue APNSSandboxChannel {..}
    = APNSSandboxChannel {certificate = Prelude.pure newValue, ..}
instance Property "DefaultAuthenticationMethod" APNSSandboxChannel where
  type PropertyType "DefaultAuthenticationMethod" APNSSandboxChannel = Value Prelude.Text
  set newValue APNSSandboxChannel {..}
    = APNSSandboxChannel
        {defaultAuthenticationMethod = Prelude.pure newValue, ..}
instance Property "Enabled" APNSSandboxChannel where
  type PropertyType "Enabled" APNSSandboxChannel = Value Prelude.Bool
  set newValue APNSSandboxChannel {..}
    = APNSSandboxChannel {enabled = Prelude.pure newValue, ..}
instance Property "PrivateKey" APNSSandboxChannel where
  type PropertyType "PrivateKey" APNSSandboxChannel = Value Prelude.Text
  set newValue APNSSandboxChannel {..}
    = APNSSandboxChannel {privateKey = Prelude.pure newValue, ..}
instance Property "TeamId" APNSSandboxChannel where
  type PropertyType "TeamId" APNSSandboxChannel = Value Prelude.Text
  set newValue APNSSandboxChannel {..}
    = APNSSandboxChannel {teamId = Prelude.pure newValue, ..}
instance Property "TokenKey" APNSSandboxChannel where
  type PropertyType "TokenKey" APNSSandboxChannel = Value Prelude.Text
  set newValue APNSSandboxChannel {..}
    = APNSSandboxChannel {tokenKey = Prelude.pure newValue, ..}
instance Property "TokenKeyId" APNSSandboxChannel where
  type PropertyType "TokenKeyId" APNSSandboxChannel = Value Prelude.Text
  set newValue APNSSandboxChannel {..}
    = APNSSandboxChannel {tokenKeyId = Prelude.pure newValue, ..}