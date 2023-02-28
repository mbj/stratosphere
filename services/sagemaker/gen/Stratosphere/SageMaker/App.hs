module Stratosphere.SageMaker.App (
        module Exports, App(..), mkApp
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.App.ResourceSpecProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data App
  = App {appName :: (Value Prelude.Text),
         appType :: (Value Prelude.Text),
         domainId :: (Value Prelude.Text),
         resourceSpec :: (Prelude.Maybe ResourceSpecProperty),
         tags :: (Prelude.Maybe [Tag]),
         userProfileName :: (Value Prelude.Text)}
mkApp ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> App
mkApp appName appType domainId userProfileName
  = App
      {appName = appName, appType = appType, domainId = domainId,
       userProfileName = userProfileName, resourceSpec = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties App where
  toResourceProperties App {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::App", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AppName" JSON..= appName, "AppType" JSON..= appType,
                            "DomainId" JSON..= domainId,
                            "UserProfileName" JSON..= userProfileName]
                           (Prelude.catMaybes
                              [(JSON..=) "ResourceSpec" Prelude.<$> resourceSpec,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON App where
  toJSON App {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AppName" JSON..= appName, "AppType" JSON..= appType,
               "DomainId" JSON..= domainId,
               "UserProfileName" JSON..= userProfileName]
              (Prelude.catMaybes
                 [(JSON..=) "ResourceSpec" Prelude.<$> resourceSpec,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AppName" App where
  type PropertyType "AppName" App = Value Prelude.Text
  set newValue App {..} = App {appName = newValue, ..}
instance Property "AppType" App where
  type PropertyType "AppType" App = Value Prelude.Text
  set newValue App {..} = App {appType = newValue, ..}
instance Property "DomainId" App where
  type PropertyType "DomainId" App = Value Prelude.Text
  set newValue App {..} = App {domainId = newValue, ..}
instance Property "ResourceSpec" App where
  type PropertyType "ResourceSpec" App = ResourceSpecProperty
  set newValue App {..}
    = App {resourceSpec = Prelude.pure newValue, ..}
instance Property "Tags" App where
  type PropertyType "Tags" App = [Tag]
  set newValue App {..} = App {tags = Prelude.pure newValue, ..}
instance Property "UserProfileName" App where
  type PropertyType "UserProfileName" App = Value Prelude.Text
  set newValue App {..} = App {userProfileName = newValue, ..}