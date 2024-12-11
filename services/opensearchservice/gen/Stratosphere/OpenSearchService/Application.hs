module Stratosphere.OpenSearchService.Application (
        module Exports, Application(..), mkApplication
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.OpenSearchService.Application.AppConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.OpenSearchService.Application.DataSourceProperty as Exports
import {-# SOURCE #-} Stratosphere.OpenSearchService.Application.IamIdentityCenterOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Application
  = Application {appConfigs :: (Prelude.Maybe [AppConfigProperty]),
                 dataSources :: (Prelude.Maybe [DataSourceProperty]),
                 endpoint :: (Prelude.Maybe (Value Prelude.Text)),
                 iamIdentityCenterOptions :: (Prelude.Maybe IamIdentityCenterOptionsProperty),
                 name :: (Value Prelude.Text),
                 tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApplication :: Value Prelude.Text -> Application
mkApplication name
  = Application
      {name = name, appConfigs = Prelude.Nothing,
       dataSources = Prelude.Nothing, endpoint = Prelude.Nothing,
       iamIdentityCenterOptions = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Application where
  toResourceProperties Application {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchService::Application",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "AppConfigs" Prelude.<$> appConfigs,
                               (JSON..=) "DataSources" Prelude.<$> dataSources,
                               (JSON..=) "Endpoint" Prelude.<$> endpoint,
                               (JSON..=) "IamIdentityCenterOptions"
                                 Prelude.<$> iamIdentityCenterOptions,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Application where
  toJSON Application {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "AppConfigs" Prelude.<$> appConfigs,
                  (JSON..=) "DataSources" Prelude.<$> dataSources,
                  (JSON..=) "Endpoint" Prelude.<$> endpoint,
                  (JSON..=) "IamIdentityCenterOptions"
                    Prelude.<$> iamIdentityCenterOptions,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AppConfigs" Application where
  type PropertyType "AppConfigs" Application = [AppConfigProperty]
  set newValue Application {..}
    = Application {appConfigs = Prelude.pure newValue, ..}
instance Property "DataSources" Application where
  type PropertyType "DataSources" Application = [DataSourceProperty]
  set newValue Application {..}
    = Application {dataSources = Prelude.pure newValue, ..}
instance Property "Endpoint" Application where
  type PropertyType "Endpoint" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {endpoint = Prelude.pure newValue, ..}
instance Property "IamIdentityCenterOptions" Application where
  type PropertyType "IamIdentityCenterOptions" Application = IamIdentityCenterOptionsProperty
  set newValue Application {..}
    = Application
        {iamIdentityCenterOptions = Prelude.pure newValue, ..}
instance Property "Name" Application where
  type PropertyType "Name" Application = Value Prelude.Text
  set newValue Application {..} = Application {name = newValue, ..}
instance Property "Tags" Application where
  type PropertyType "Tags" Application = [Tag]
  set newValue Application {..}
    = Application {tags = Prelude.pure newValue, ..}