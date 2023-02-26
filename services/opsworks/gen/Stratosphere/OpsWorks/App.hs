module Stratosphere.OpsWorks.App (
        module Exports, App(..), mkApp
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.OpsWorks.App.DataSourceProperty as Exports
import {-# SOURCE #-} Stratosphere.OpsWorks.App.EnvironmentVariableProperty as Exports
import {-# SOURCE #-} Stratosphere.OpsWorks.App.SourceProperty as Exports
import {-# SOURCE #-} Stratosphere.OpsWorks.App.SslConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data App
  = App {appSource :: (Prelude.Maybe SourceProperty),
         attributes :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
         dataSources :: (Prelude.Maybe [DataSourceProperty]),
         description :: (Prelude.Maybe (Value Prelude.Text)),
         domains :: (Prelude.Maybe (ValueList Prelude.Text)),
         enableSsl :: (Prelude.Maybe (Value Prelude.Bool)),
         environment :: (Prelude.Maybe [EnvironmentVariableProperty]),
         name :: (Value Prelude.Text),
         shortname :: (Prelude.Maybe (Value Prelude.Text)),
         sslConfiguration :: (Prelude.Maybe SslConfigurationProperty),
         stackId :: (Value Prelude.Text),
         type' :: (Value Prelude.Text)}
mkApp ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> App
mkApp name stackId type'
  = App
      {name = name, stackId = stackId, type' = type',
       appSource = Prelude.Nothing, attributes = Prelude.Nothing,
       dataSources = Prelude.Nothing, description = Prelude.Nothing,
       domains = Prelude.Nothing, enableSsl = Prelude.Nothing,
       environment = Prelude.Nothing, shortname = Prelude.Nothing,
       sslConfiguration = Prelude.Nothing}
instance ToResourceProperties App where
  toResourceProperties App {..}
    = ResourceProperties
        {awsType = "AWS::OpsWorks::App",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "StackId" JSON..= stackId,
                            "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "AppSource" Prelude.<$> appSource,
                               (JSON..=) "Attributes" Prelude.<$> attributes,
                               (JSON..=) "DataSources" Prelude.<$> dataSources,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Domains" Prelude.<$> domains,
                               (JSON..=) "EnableSsl" Prelude.<$> enableSsl,
                               (JSON..=) "Environment" Prelude.<$> environment,
                               (JSON..=) "Shortname" Prelude.<$> shortname,
                               (JSON..=) "SslConfiguration" Prelude.<$> sslConfiguration]))}
instance JSON.ToJSON App where
  toJSON App {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "StackId" JSON..= stackId,
               "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "AppSource" Prelude.<$> appSource,
                  (JSON..=) "Attributes" Prelude.<$> attributes,
                  (JSON..=) "DataSources" Prelude.<$> dataSources,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Domains" Prelude.<$> domains,
                  (JSON..=) "EnableSsl" Prelude.<$> enableSsl,
                  (JSON..=) "Environment" Prelude.<$> environment,
                  (JSON..=) "Shortname" Prelude.<$> shortname,
                  (JSON..=) "SslConfiguration" Prelude.<$> sslConfiguration])))
instance Property "AppSource" App where
  type PropertyType "AppSource" App = SourceProperty
  set newValue App {..} = App {appSource = Prelude.pure newValue, ..}
instance Property "Attributes" App where
  type PropertyType "Attributes" App = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue App {..}
    = App {attributes = Prelude.pure newValue, ..}
instance Property "DataSources" App where
  type PropertyType "DataSources" App = [DataSourceProperty]
  set newValue App {..}
    = App {dataSources = Prelude.pure newValue, ..}
instance Property "Description" App where
  type PropertyType "Description" App = Value Prelude.Text
  set newValue App {..}
    = App {description = Prelude.pure newValue, ..}
instance Property "Domains" App where
  type PropertyType "Domains" App = ValueList Prelude.Text
  set newValue App {..} = App {domains = Prelude.pure newValue, ..}
instance Property "EnableSsl" App where
  type PropertyType "EnableSsl" App = Value Prelude.Bool
  set newValue App {..} = App {enableSsl = Prelude.pure newValue, ..}
instance Property "Environment" App where
  type PropertyType "Environment" App = [EnvironmentVariableProperty]
  set newValue App {..}
    = App {environment = Prelude.pure newValue, ..}
instance Property "Name" App where
  type PropertyType "Name" App = Value Prelude.Text
  set newValue App {..} = App {name = newValue, ..}
instance Property "Shortname" App where
  type PropertyType "Shortname" App = Value Prelude.Text
  set newValue App {..} = App {shortname = Prelude.pure newValue, ..}
instance Property "SslConfiguration" App where
  type PropertyType "SslConfiguration" App = SslConfigurationProperty
  set newValue App {..}
    = App {sslConfiguration = Prelude.pure newValue, ..}
instance Property "StackId" App where
  type PropertyType "StackId" App = Value Prelude.Text
  set newValue App {..} = App {stackId = newValue, ..}
instance Property "Type" App where
  type PropertyType "Type" App = Value Prelude.Text
  set newValue App {..} = App {type' = newValue, ..}