module Stratosphere.CertificateManager.Account (
        module Exports, Account(..), mkAccount
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CertificateManager.Account.ExpiryEventsConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data Account
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-certificatemanager-account.html>
    Account {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-certificatemanager-account.html#cfn-certificatemanager-account-expiryeventsconfiguration>
             expiryEventsConfiguration :: ExpiryEventsConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccount :: ExpiryEventsConfigurationProperty -> Account
mkAccount expiryEventsConfiguration
  = Account
      {haddock_workaround_ = (),
       expiryEventsConfiguration = expiryEventsConfiguration}
instance ToResourceProperties Account where
  toResourceProperties Account {..}
    = ResourceProperties
        {awsType = "AWS::CertificateManager::Account",
         supportsTags = Prelude.False,
         properties = ["ExpiryEventsConfiguration"
                         JSON..= expiryEventsConfiguration]}
instance JSON.ToJSON Account where
  toJSON Account {..}
    = JSON.object
        ["ExpiryEventsConfiguration" JSON..= expiryEventsConfiguration]
instance Property "ExpiryEventsConfiguration" Account where
  type PropertyType "ExpiryEventsConfiguration" Account = ExpiryEventsConfigurationProperty
  set newValue Account {..}
    = Account {expiryEventsConfiguration = newValue, ..}