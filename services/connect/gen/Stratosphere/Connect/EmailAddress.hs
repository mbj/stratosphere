module Stratosphere.Connect.EmailAddress (
        module Exports, EmailAddress(..), mkEmailAddress
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.EmailAddress.AliasConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data EmailAddress
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-emailaddress.html>
    EmailAddress {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-emailaddress.html#cfn-connect-emailaddress-aliasconfigurations>
                  aliasConfigurations :: (Prelude.Maybe [AliasConfigurationProperty]),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-emailaddress.html#cfn-connect-emailaddress-description>
                  description :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-emailaddress.html#cfn-connect-emailaddress-displayname>
                  displayName :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-emailaddress.html#cfn-connect-emailaddress-emailaddress>
                  emailAddress :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-emailaddress.html#cfn-connect-emailaddress-instancearn>
                  instanceArn :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-emailaddress.html#cfn-connect-emailaddress-tags>
                  tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEmailAddress ::
  Value Prelude.Text -> Value Prelude.Text -> EmailAddress
mkEmailAddress emailAddress instanceArn
  = EmailAddress
      {haddock_workaround_ = (), emailAddress = emailAddress,
       instanceArn = instanceArn, aliasConfigurations = Prelude.Nothing,
       description = Prelude.Nothing, displayName = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties EmailAddress where
  toResourceProperties EmailAddress {..}
    = ResourceProperties
        {awsType = "AWS::Connect::EmailAddress",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EmailAddress" JSON..= emailAddress,
                            "InstanceArn" JSON..= instanceArn]
                           (Prelude.catMaybes
                              [(JSON..=) "AliasConfigurations" Prelude.<$> aliasConfigurations,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "DisplayName" Prelude.<$> displayName,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON EmailAddress where
  toJSON EmailAddress {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EmailAddress" JSON..= emailAddress,
               "InstanceArn" JSON..= instanceArn]
              (Prelude.catMaybes
                 [(JSON..=) "AliasConfigurations" Prelude.<$> aliasConfigurations,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "DisplayName" Prelude.<$> displayName,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AliasConfigurations" EmailAddress where
  type PropertyType "AliasConfigurations" EmailAddress = [AliasConfigurationProperty]
  set newValue EmailAddress {..}
    = EmailAddress {aliasConfigurations = Prelude.pure newValue, ..}
instance Property "Description" EmailAddress where
  type PropertyType "Description" EmailAddress = Value Prelude.Text
  set newValue EmailAddress {..}
    = EmailAddress {description = Prelude.pure newValue, ..}
instance Property "DisplayName" EmailAddress where
  type PropertyType "DisplayName" EmailAddress = Value Prelude.Text
  set newValue EmailAddress {..}
    = EmailAddress {displayName = Prelude.pure newValue, ..}
instance Property "EmailAddress" EmailAddress where
  type PropertyType "EmailAddress" EmailAddress = Value Prelude.Text
  set newValue EmailAddress {..}
    = EmailAddress {emailAddress = newValue, ..}
instance Property "InstanceArn" EmailAddress where
  type PropertyType "InstanceArn" EmailAddress = Value Prelude.Text
  set newValue EmailAddress {..}
    = EmailAddress {instanceArn = newValue, ..}
instance Property "Tags" EmailAddress where
  type PropertyType "Tags" EmailAddress = [Tag]
  set newValue EmailAddress {..}
    = EmailAddress {tags = Prelude.pure newValue, ..}