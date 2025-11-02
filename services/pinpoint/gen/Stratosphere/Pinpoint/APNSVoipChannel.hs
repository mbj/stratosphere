module Stratosphere.Pinpoint.APNSVoipChannel (
        APNSVoipChannel(..), mkAPNSVoipChannel
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data APNSVoipChannel
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipchannel.html>
    APNSVoipChannel {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipchannel.html#cfn-pinpoint-apnsvoipchannel-applicationid>
                     applicationId :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipchannel.html#cfn-pinpoint-apnsvoipchannel-bundleid>
                     bundleId :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipchannel.html#cfn-pinpoint-apnsvoipchannel-certificate>
                     certificate :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipchannel.html#cfn-pinpoint-apnsvoipchannel-defaultauthenticationmethod>
                     defaultAuthenticationMethod :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipchannel.html#cfn-pinpoint-apnsvoipchannel-enabled>
                     enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipchannel.html#cfn-pinpoint-apnsvoipchannel-privatekey>
                     privateKey :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipchannel.html#cfn-pinpoint-apnsvoipchannel-teamid>
                     teamId :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipchannel.html#cfn-pinpoint-apnsvoipchannel-tokenkey>
                     tokenKey :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipchannel.html#cfn-pinpoint-apnsvoipchannel-tokenkeyid>
                     tokenKeyId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAPNSVoipChannel :: Value Prelude.Text -> APNSVoipChannel
mkAPNSVoipChannel applicationId
  = APNSVoipChannel
      {haddock_workaround_ = (), applicationId = applicationId,
       bundleId = Prelude.Nothing, certificate = Prelude.Nothing,
       defaultAuthenticationMethod = Prelude.Nothing,
       enabled = Prelude.Nothing, privateKey = Prelude.Nothing,
       teamId = Prelude.Nothing, tokenKey = Prelude.Nothing,
       tokenKeyId = Prelude.Nothing}
instance ToResourceProperties APNSVoipChannel where
  toResourceProperties APNSVoipChannel {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::APNSVoipChannel",
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
instance JSON.ToJSON APNSVoipChannel where
  toJSON APNSVoipChannel {..}
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
instance Property "ApplicationId" APNSVoipChannel where
  type PropertyType "ApplicationId" APNSVoipChannel = Value Prelude.Text
  set newValue APNSVoipChannel {..}
    = APNSVoipChannel {applicationId = newValue, ..}
instance Property "BundleId" APNSVoipChannel where
  type PropertyType "BundleId" APNSVoipChannel = Value Prelude.Text
  set newValue APNSVoipChannel {..}
    = APNSVoipChannel {bundleId = Prelude.pure newValue, ..}
instance Property "Certificate" APNSVoipChannel where
  type PropertyType "Certificate" APNSVoipChannel = Value Prelude.Text
  set newValue APNSVoipChannel {..}
    = APNSVoipChannel {certificate = Prelude.pure newValue, ..}
instance Property "DefaultAuthenticationMethod" APNSVoipChannel where
  type PropertyType "DefaultAuthenticationMethod" APNSVoipChannel = Value Prelude.Text
  set newValue APNSVoipChannel {..}
    = APNSVoipChannel
        {defaultAuthenticationMethod = Prelude.pure newValue, ..}
instance Property "Enabled" APNSVoipChannel where
  type PropertyType "Enabled" APNSVoipChannel = Value Prelude.Bool
  set newValue APNSVoipChannel {..}
    = APNSVoipChannel {enabled = Prelude.pure newValue, ..}
instance Property "PrivateKey" APNSVoipChannel where
  type PropertyType "PrivateKey" APNSVoipChannel = Value Prelude.Text
  set newValue APNSVoipChannel {..}
    = APNSVoipChannel {privateKey = Prelude.pure newValue, ..}
instance Property "TeamId" APNSVoipChannel where
  type PropertyType "TeamId" APNSVoipChannel = Value Prelude.Text
  set newValue APNSVoipChannel {..}
    = APNSVoipChannel {teamId = Prelude.pure newValue, ..}
instance Property "TokenKey" APNSVoipChannel where
  type PropertyType "TokenKey" APNSVoipChannel = Value Prelude.Text
  set newValue APNSVoipChannel {..}
    = APNSVoipChannel {tokenKey = Prelude.pure newValue, ..}
instance Property "TokenKeyId" APNSVoipChannel where
  type PropertyType "TokenKeyId" APNSVoipChannel = Value Prelude.Text
  set newValue APNSVoipChannel {..}
    = APNSVoipChannel {tokenKeyId = Prelude.pure newValue, ..}