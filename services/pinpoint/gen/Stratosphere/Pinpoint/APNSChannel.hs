module Stratosphere.Pinpoint.APNSChannel (
        APNSChannel(..), mkAPNSChannel
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data APNSChannel
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnschannel.html>
    APNSChannel {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnschannel.html#cfn-pinpoint-apnschannel-applicationid>
                 applicationId :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnschannel.html#cfn-pinpoint-apnschannel-bundleid>
                 bundleId :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnschannel.html#cfn-pinpoint-apnschannel-certificate>
                 certificate :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnschannel.html#cfn-pinpoint-apnschannel-defaultauthenticationmethod>
                 defaultAuthenticationMethod :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnschannel.html#cfn-pinpoint-apnschannel-enabled>
                 enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnschannel.html#cfn-pinpoint-apnschannel-privatekey>
                 privateKey :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnschannel.html#cfn-pinpoint-apnschannel-teamid>
                 teamId :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnschannel.html#cfn-pinpoint-apnschannel-tokenkey>
                 tokenKey :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnschannel.html#cfn-pinpoint-apnschannel-tokenkeyid>
                 tokenKeyId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAPNSChannel :: Value Prelude.Text -> APNSChannel
mkAPNSChannel applicationId
  = APNSChannel
      {haddock_workaround_ = (), applicationId = applicationId,
       bundleId = Prelude.Nothing, certificate = Prelude.Nothing,
       defaultAuthenticationMethod = Prelude.Nothing,
       enabled = Prelude.Nothing, privateKey = Prelude.Nothing,
       teamId = Prelude.Nothing, tokenKey = Prelude.Nothing,
       tokenKeyId = Prelude.Nothing}
instance ToResourceProperties APNSChannel where
  toResourceProperties APNSChannel {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::APNSChannel",
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