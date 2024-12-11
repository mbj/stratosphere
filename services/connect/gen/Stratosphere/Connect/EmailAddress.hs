module Stratosphere.Connect.EmailAddress (
        EmailAddress(..), mkEmailAddress
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data EmailAddress
  = EmailAddress {description :: (Prelude.Maybe (Value Prelude.Text)),
                  displayName :: (Prelude.Maybe (Value Prelude.Text)),
                  emailAddress :: (Value Prelude.Text),
                  instanceArn :: (Value Prelude.Text),
                  tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEmailAddress ::
  Value Prelude.Text -> Value Prelude.Text -> EmailAddress
mkEmailAddress emailAddress instanceArn
  = EmailAddress
      {emailAddress = emailAddress, instanceArn = instanceArn,
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
                              [(JSON..=) "Description" Prelude.<$> description,
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
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "DisplayName" Prelude.<$> displayName,
                  (JSON..=) "Tags" Prelude.<$> tags])))
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