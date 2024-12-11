module Stratosphere.SSO.Application (
        module Exports, Application(..), mkApplication
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SSO.Application.PortalOptionsConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Application
  = Application {applicationProviderArn :: (Value Prelude.Text),
                 description :: (Prelude.Maybe (Value Prelude.Text)),
                 instanceArn :: (Value Prelude.Text),
                 name :: (Value Prelude.Text),
                 portalOptions :: (Prelude.Maybe PortalOptionsConfigurationProperty),
                 status :: (Prelude.Maybe (Value Prelude.Text)),
                 tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApplication ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Application
mkApplication applicationProviderArn instanceArn name
  = Application
      {applicationProviderArn = applicationProviderArn,
       instanceArn = instanceArn, name = name,
       description = Prelude.Nothing, portalOptions = Prelude.Nothing,
       status = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Application where
  toResourceProperties Application {..}
    = ResourceProperties
        {awsType = "AWS::SSO::Application", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApplicationProviderArn" JSON..= applicationProviderArn,
                            "InstanceArn" JSON..= instanceArn, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "PortalOptions" Prelude.<$> portalOptions,
                               (JSON..=) "Status" Prelude.<$> status,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Application where
  toJSON Application {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApplicationProviderArn" JSON..= applicationProviderArn,
               "InstanceArn" JSON..= instanceArn, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "PortalOptions" Prelude.<$> portalOptions,
                  (JSON..=) "Status" Prelude.<$> status,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ApplicationProviderArn" Application where
  type PropertyType "ApplicationProviderArn" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {applicationProviderArn = newValue, ..}
instance Property "Description" Application where
  type PropertyType "Description" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {description = Prelude.pure newValue, ..}
instance Property "InstanceArn" Application where
  type PropertyType "InstanceArn" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {instanceArn = newValue, ..}
instance Property "Name" Application where
  type PropertyType "Name" Application = Value Prelude.Text
  set newValue Application {..} = Application {name = newValue, ..}
instance Property "PortalOptions" Application where
  type PropertyType "PortalOptions" Application = PortalOptionsConfigurationProperty
  set newValue Application {..}
    = Application {portalOptions = Prelude.pure newValue, ..}
instance Property "Status" Application where
  type PropertyType "Status" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {status = Prelude.pure newValue, ..}
instance Property "Tags" Application where
  type PropertyType "Tags" Application = [Tag]
  set newValue Application {..}
    = Application {tags = Prelude.pure newValue, ..}