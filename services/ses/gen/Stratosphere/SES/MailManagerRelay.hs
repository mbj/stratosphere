module Stratosphere.SES.MailManagerRelay (
        module Exports, MailManagerRelay(..), mkMailManagerRelay
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.MailManagerRelay.RelayAuthenticationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data MailManagerRelay
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-mailmanagerrelay.html>
    MailManagerRelay {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-mailmanagerrelay.html#cfn-ses-mailmanagerrelay-authentication>
                      authentication :: RelayAuthenticationProperty,
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-mailmanagerrelay.html#cfn-ses-mailmanagerrelay-relayname>
                      relayName :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-mailmanagerrelay.html#cfn-ses-mailmanagerrelay-servername>
                      serverName :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-mailmanagerrelay.html#cfn-ses-mailmanagerrelay-serverport>
                      serverPort :: (Value Prelude.Double),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-mailmanagerrelay.html#cfn-ses-mailmanagerrelay-tags>
                      tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMailManagerRelay ::
  RelayAuthenticationProperty
  -> Value Prelude.Text -> Value Prelude.Double -> MailManagerRelay
mkMailManagerRelay authentication serverName serverPort
  = MailManagerRelay
      {haddock_workaround_ = (), authentication = authentication,
       serverName = serverName, serverPort = serverPort,
       relayName = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties MailManagerRelay where
  toResourceProperties MailManagerRelay {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerRelay",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Authentication" JSON..= authentication,
                            "ServerName" JSON..= serverName, "ServerPort" JSON..= serverPort]
                           (Prelude.catMaybes
                              [(JSON..=) "RelayName" Prelude.<$> relayName,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON MailManagerRelay where
  toJSON MailManagerRelay {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Authentication" JSON..= authentication,
               "ServerName" JSON..= serverName, "ServerPort" JSON..= serverPort]
              (Prelude.catMaybes
                 [(JSON..=) "RelayName" Prelude.<$> relayName,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Authentication" MailManagerRelay where
  type PropertyType "Authentication" MailManagerRelay = RelayAuthenticationProperty
  set newValue MailManagerRelay {..}
    = MailManagerRelay {authentication = newValue, ..}
instance Property "RelayName" MailManagerRelay where
  type PropertyType "RelayName" MailManagerRelay = Value Prelude.Text
  set newValue MailManagerRelay {..}
    = MailManagerRelay {relayName = Prelude.pure newValue, ..}
instance Property "ServerName" MailManagerRelay where
  type PropertyType "ServerName" MailManagerRelay = Value Prelude.Text
  set newValue MailManagerRelay {..}
    = MailManagerRelay {serverName = newValue, ..}
instance Property "ServerPort" MailManagerRelay where
  type PropertyType "ServerPort" MailManagerRelay = Value Prelude.Double
  set newValue MailManagerRelay {..}
    = MailManagerRelay {serverPort = newValue, ..}
instance Property "Tags" MailManagerRelay where
  type PropertyType "Tags" MailManagerRelay = [Tag]
  set newValue MailManagerRelay {..}
    = MailManagerRelay {tags = Prelude.pure newValue, ..}