module Stratosphere.Pinpoint.APNSVoipSandboxChannel (
        APNSVoipSandboxChannel(..), mkAPNSVoipSandboxChannel
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data APNSVoipSandboxChannel
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipsandboxchannel.html>
    APNSVoipSandboxChannel {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipsandboxchannel.html#cfn-pinpoint-apnsvoipsandboxchannel-applicationid>
                            applicationId :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipsandboxchannel.html#cfn-pinpoint-apnsvoipsandboxchannel-bundleid>
                            bundleId :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipsandboxchannel.html#cfn-pinpoint-apnsvoipsandboxchannel-certificate>
                            certificate :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipsandboxchannel.html#cfn-pinpoint-apnsvoipsandboxchannel-defaultauthenticationmethod>
                            defaultAuthenticationMethod :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipsandboxchannel.html#cfn-pinpoint-apnsvoipsandboxchannel-enabled>
                            enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipsandboxchannel.html#cfn-pinpoint-apnsvoipsandboxchannel-privatekey>
                            privateKey :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipsandboxchannel.html#cfn-pinpoint-apnsvoipsandboxchannel-teamid>
                            teamId :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipsandboxchannel.html#cfn-pinpoint-apnsvoipsandboxchannel-tokenkey>
                            tokenKey :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipsandboxchannel.html#cfn-pinpoint-apnsvoipsandboxchannel-tokenkeyid>
                            tokenKeyId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAPNSVoipSandboxChannel ::
  Value Prelude.Text -> APNSVoipSandboxChannel
mkAPNSVoipSandboxChannel applicationId
  = APNSVoipSandboxChannel
      {haddock_workaround_ = (), applicationId = applicationId,
       bundleId = Prelude.Nothing, certificate = Prelude.Nothing,
       defaultAuthenticationMethod = Prelude.Nothing,
       enabled = Prelude.Nothing, privateKey = Prelude.Nothing,
       teamId = Prelude.Nothing, tokenKey = Prelude.Nothing,
       tokenKeyId = Prelude.Nothing}
instance ToResourceProperties APNSVoipSandboxChannel where
  toResourceProperties APNSVoipSandboxChannel {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::APNSVoipSandboxChannel",
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
instance JSON.ToJSON APNSVoipSandboxChannel where
  toJSON APNSVoipSandboxChannel {..}
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
instance Property "ApplicationId" APNSVoipSandboxChannel where
  type PropertyType "ApplicationId" APNSVoipSandboxChannel = Value Prelude.Text
  set newValue APNSVoipSandboxChannel {..}
    = APNSVoipSandboxChannel {applicationId = newValue, ..}
instance Property "BundleId" APNSVoipSandboxChannel where
  type PropertyType "BundleId" APNSVoipSandboxChannel = Value Prelude.Text
  set newValue APNSVoipSandboxChannel {..}
    = APNSVoipSandboxChannel {bundleId = Prelude.pure newValue, ..}
instance Property "Certificate" APNSVoipSandboxChannel where
  type PropertyType "Certificate" APNSVoipSandboxChannel = Value Prelude.Text
  set newValue APNSVoipSandboxChannel {..}
    = APNSVoipSandboxChannel {certificate = Prelude.pure newValue, ..}
instance Property "DefaultAuthenticationMethod" APNSVoipSandboxChannel where
  type PropertyType "DefaultAuthenticationMethod" APNSVoipSandboxChannel = Value Prelude.Text
  set newValue APNSVoipSandboxChannel {..}
    = APNSVoipSandboxChannel
        {defaultAuthenticationMethod = Prelude.pure newValue, ..}
instance Property "Enabled" APNSVoipSandboxChannel where
  type PropertyType "Enabled" APNSVoipSandboxChannel = Value Prelude.Bool
  set newValue APNSVoipSandboxChannel {..}
    = APNSVoipSandboxChannel {enabled = Prelude.pure newValue, ..}
instance Property "PrivateKey" APNSVoipSandboxChannel where
  type PropertyType "PrivateKey" APNSVoipSandboxChannel = Value Prelude.Text
  set newValue APNSVoipSandboxChannel {..}
    = APNSVoipSandboxChannel {privateKey = Prelude.pure newValue, ..}
instance Property "TeamId" APNSVoipSandboxChannel where
  type PropertyType "TeamId" APNSVoipSandboxChannel = Value Prelude.Text
  set newValue APNSVoipSandboxChannel {..}
    = APNSVoipSandboxChannel {teamId = Prelude.pure newValue, ..}
instance Property "TokenKey" APNSVoipSandboxChannel where
  type PropertyType "TokenKey" APNSVoipSandboxChannel = Value Prelude.Text
  set newValue APNSVoipSandboxChannel {..}
    = APNSVoipSandboxChannel {tokenKey = Prelude.pure newValue, ..}
instance Property "TokenKeyId" APNSVoipSandboxChannel where
  type PropertyType "TokenKeyId" APNSVoipSandboxChannel = Value Prelude.Text
  set newValue APNSVoipSandboxChannel {..}
    = APNSVoipSandboxChannel {tokenKeyId = Prelude.pure newValue, ..}