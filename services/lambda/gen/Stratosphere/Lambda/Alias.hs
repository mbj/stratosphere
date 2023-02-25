module Stratosphere.Lambda.Alias (
        module Exports, Alias(..), mkAlias
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lambda.Alias.AliasRoutingConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Lambda.Alias.ProvisionedConcurrencyConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Alias
  = Alias {description :: (Prelude.Maybe (Value Prelude.Text)),
           functionName :: (Value Prelude.Text),
           functionVersion :: (Value Prelude.Text),
           name :: (Value Prelude.Text),
           provisionedConcurrencyConfig :: (Prelude.Maybe ProvisionedConcurrencyConfigurationProperty),
           routingConfig :: (Prelude.Maybe AliasRoutingConfigurationProperty)}
mkAlias ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Alias
mkAlias functionName functionVersion name
  = Alias
      {functionName = functionName, functionVersion = functionVersion,
       name = name, description = Prelude.Nothing,
       provisionedConcurrencyConfig = Prelude.Nothing,
       routingConfig = Prelude.Nothing}
instance ToResourceProperties Alias where
  toResourceProperties Alias {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::Alias",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FunctionName" JSON..= functionName,
                            "FunctionVersion" JSON..= functionVersion, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "ProvisionedConcurrencyConfig"
                                 Prelude.<$> provisionedConcurrencyConfig,
                               (JSON..=) "RoutingConfig" Prelude.<$> routingConfig]))}
instance JSON.ToJSON Alias where
  toJSON Alias {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FunctionName" JSON..= functionName,
               "FunctionVersion" JSON..= functionVersion, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "ProvisionedConcurrencyConfig"
                    Prelude.<$> provisionedConcurrencyConfig,
                  (JSON..=) "RoutingConfig" Prelude.<$> routingConfig])))
instance Property "Description" Alias where
  type PropertyType "Description" Alias = Value Prelude.Text
  set newValue Alias {..}
    = Alias {description = Prelude.pure newValue, ..}
instance Property "FunctionName" Alias where
  type PropertyType "FunctionName" Alias = Value Prelude.Text
  set newValue Alias {..} = Alias {functionName = newValue, ..}
instance Property "FunctionVersion" Alias where
  type PropertyType "FunctionVersion" Alias = Value Prelude.Text
  set newValue Alias {..} = Alias {functionVersion = newValue, ..}
instance Property "Name" Alias where
  type PropertyType "Name" Alias = Value Prelude.Text
  set newValue Alias {..} = Alias {name = newValue, ..}
instance Property "ProvisionedConcurrencyConfig" Alias where
  type PropertyType "ProvisionedConcurrencyConfig" Alias = ProvisionedConcurrencyConfigurationProperty
  set newValue Alias {..}
    = Alias {provisionedConcurrencyConfig = Prelude.pure newValue, ..}
instance Property "RoutingConfig" Alias where
  type PropertyType "RoutingConfig" Alias = AliasRoutingConfigurationProperty
  set newValue Alias {..}
    = Alias {routingConfig = Prelude.pure newValue, ..}