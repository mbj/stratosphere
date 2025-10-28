module Stratosphere.DataSync.LocationSMB (
        module Exports, LocationSMB(..), mkLocationSMB
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataSync.LocationSMB.MountOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data LocationSMB
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationsmb.html>
    LocationSMB {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationsmb.html#cfn-datasync-locationsmb-agentarns>
                 agentArns :: (ValueList Prelude.Text),
                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationsmb.html#cfn-datasync-locationsmb-domain>
                 domain :: (Prelude.Maybe (Value Prelude.Text)),
                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationsmb.html#cfn-datasync-locationsmb-mountoptions>
                 mountOptions :: (Prelude.Maybe MountOptionsProperty),
                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationsmb.html#cfn-datasync-locationsmb-password>
                 password :: (Prelude.Maybe (Value Prelude.Text)),
                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationsmb.html#cfn-datasync-locationsmb-serverhostname>
                 serverHostname :: (Prelude.Maybe (Value Prelude.Text)),
                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationsmb.html#cfn-datasync-locationsmb-subdirectory>
                 subdirectory :: (Prelude.Maybe (Value Prelude.Text)),
                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationsmb.html#cfn-datasync-locationsmb-tags>
                 tags :: (Prelude.Maybe [Tag]),
                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationsmb.html#cfn-datasync-locationsmb-user>
                 user :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLocationSMB ::
  ValueList Prelude.Text -> Value Prelude.Text -> LocationSMB
mkLocationSMB agentArns user
  = LocationSMB
      {agentArns = agentArns, user = user, domain = Prelude.Nothing,
       mountOptions = Prelude.Nothing, password = Prelude.Nothing,
       serverHostname = Prelude.Nothing, subdirectory = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties LocationSMB where
  toResourceProperties LocationSMB {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::LocationSMB",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AgentArns" JSON..= agentArns, "User" JSON..= user]
                           (Prelude.catMaybes
                              [(JSON..=) "Domain" Prelude.<$> domain,
                               (JSON..=) "MountOptions" Prelude.<$> mountOptions,
                               (JSON..=) "Password" Prelude.<$> password,
                               (JSON..=) "ServerHostname" Prelude.<$> serverHostname,
                               (JSON..=) "Subdirectory" Prelude.<$> subdirectory,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON LocationSMB where
  toJSON LocationSMB {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AgentArns" JSON..= agentArns, "User" JSON..= user]
              (Prelude.catMaybes
                 [(JSON..=) "Domain" Prelude.<$> domain,
                  (JSON..=) "MountOptions" Prelude.<$> mountOptions,
                  (JSON..=) "Password" Prelude.<$> password,
                  (JSON..=) "ServerHostname" Prelude.<$> serverHostname,
                  (JSON..=) "Subdirectory" Prelude.<$> subdirectory,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AgentArns" LocationSMB where
  type PropertyType "AgentArns" LocationSMB = ValueList Prelude.Text
  set newValue LocationSMB {..}
    = LocationSMB {agentArns = newValue, ..}
instance Property "Domain" LocationSMB where
  type PropertyType "Domain" LocationSMB = Value Prelude.Text
  set newValue LocationSMB {..}
    = LocationSMB {domain = Prelude.pure newValue, ..}
instance Property "MountOptions" LocationSMB where
  type PropertyType "MountOptions" LocationSMB = MountOptionsProperty
  set newValue LocationSMB {..}
    = LocationSMB {mountOptions = Prelude.pure newValue, ..}
instance Property "Password" LocationSMB where
  type PropertyType "Password" LocationSMB = Value Prelude.Text
  set newValue LocationSMB {..}
    = LocationSMB {password = Prelude.pure newValue, ..}
instance Property "ServerHostname" LocationSMB where
  type PropertyType "ServerHostname" LocationSMB = Value Prelude.Text
  set newValue LocationSMB {..}
    = LocationSMB {serverHostname = Prelude.pure newValue, ..}
instance Property "Subdirectory" LocationSMB where
  type PropertyType "Subdirectory" LocationSMB = Value Prelude.Text
  set newValue LocationSMB {..}
    = LocationSMB {subdirectory = Prelude.pure newValue, ..}
instance Property "Tags" LocationSMB where
  type PropertyType "Tags" LocationSMB = [Tag]
  set newValue LocationSMB {..}
    = LocationSMB {tags = Prelude.pure newValue, ..}
instance Property "User" LocationSMB where
  type PropertyType "User" LocationSMB = Value Prelude.Text
  set newValue LocationSMB {..} = LocationSMB {user = newValue, ..}