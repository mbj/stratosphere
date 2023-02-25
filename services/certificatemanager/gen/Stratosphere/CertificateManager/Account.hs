module Stratosphere.CertificateManager.Account (
        module Exports, Account(..), mkAccount
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CertificateManager.Account.ExpiryEventsConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data Account
  = Account {expiryEventsConfiguration :: ExpiryEventsConfigurationProperty}
mkAccount :: ExpiryEventsConfigurationProperty -> Account
mkAccount expiryEventsConfiguration
  = Account {expiryEventsConfiguration = expiryEventsConfiguration}
instance ToResourceProperties Account where
  toResourceProperties Account {..}
    = ResourceProperties
        {awsType = "AWS::CertificateManager::Account",
         properties = ["ExpiryEventsConfiguration"
                         JSON..= expiryEventsConfiguration]}
instance JSON.ToJSON Account where
  toJSON Account {..}
    = JSON.object
        ["ExpiryEventsConfiguration" JSON..= expiryEventsConfiguration]
instance Property "ExpiryEventsConfiguration" Account where
  type PropertyType "ExpiryEventsConfiguration" Account = ExpiryEventsConfigurationProperty
  set newValue Account {}
    = Account {expiryEventsConfiguration = newValue, ..}