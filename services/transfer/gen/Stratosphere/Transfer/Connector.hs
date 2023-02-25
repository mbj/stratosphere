module Stratosphere.Transfer.Connector (
        module Exports, Connector(..), mkConnector
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Transfer.Connector.As2ConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Connector
  = Connector {accessRole :: (Value Prelude.Text),
               as2Config :: As2ConfigProperty,
               loggingRole :: (Prelude.Maybe (Value Prelude.Text)),
               tags :: (Prelude.Maybe [Tag]),
               url :: (Value Prelude.Text)}
mkConnector ::
  Value Prelude.Text
  -> As2ConfigProperty -> Value Prelude.Text -> Connector
mkConnector accessRole as2Config url
  = Connector
      {accessRole = accessRole, as2Config = as2Config, url = url,
       loggingRole = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Connector where
  toResourceProperties Connector {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::Connector",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AccessRole" JSON..= accessRole, "As2Config" JSON..= as2Config,
                            "Url" JSON..= url]
                           (Prelude.catMaybes
                              [(JSON..=) "LoggingRole" Prelude.<$> loggingRole,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Connector where
  toJSON Connector {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AccessRole" JSON..= accessRole, "As2Config" JSON..= as2Config,
               "Url" JSON..= url]
              (Prelude.catMaybes
                 [(JSON..=) "LoggingRole" Prelude.<$> loggingRole,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AccessRole" Connector where
  type PropertyType "AccessRole" Connector = Value Prelude.Text
  set newValue Connector {..} = Connector {accessRole = newValue, ..}
instance Property "As2Config" Connector where
  type PropertyType "As2Config" Connector = As2ConfigProperty
  set newValue Connector {..} = Connector {as2Config = newValue, ..}
instance Property "LoggingRole" Connector where
  type PropertyType "LoggingRole" Connector = Value Prelude.Text
  set newValue Connector {..}
    = Connector {loggingRole = Prelude.pure newValue, ..}
instance Property "Tags" Connector where
  type PropertyType "Tags" Connector = [Tag]
  set newValue Connector {..}
    = Connector {tags = Prelude.pure newValue, ..}
instance Property "Url" Connector where
  type PropertyType "Url" Connector = Value Prelude.Text
  set newValue Connector {..} = Connector {url = newValue, ..}